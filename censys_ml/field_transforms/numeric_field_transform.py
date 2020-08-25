from censys_ml.field_transforms import utils


def one_hot_encode(input_field, output_field, options, function_name, field_prefix=""):
    """
    Generates lua lines that One-Hot encodes a field from its possible options
    :param input_field: censys Field
    :param input_field: flattened version of censys Field
    :param options: array of the possible values the input field can have
    :param function_name: the lua function that will encode the field
    :param field_prefix: an optional string to be concatenated at the end of original field
    :return:
    """
    lines = []
    for option in options:
        key = option
        if type(option) == str:
            key = f'"{option}"'
        lines.append(
            f'event["{output_field}_{field_prefix}{option}"] = {function_name}(event["{input_field}"])[{key}]'
        )
    return lines


def generate_relating_lines(input_field, output_field, function_name, field_prefix=""):
    """
    Generates lua lines that checks other fields related to input_field for feature engineering
    :param input_field: censys Field
    :param input_field: flattened version of censys Field
    :param function_name: the lua function that will encode the field
    :param field_prefix: an optional string to be concatenated at the end of original field
    :return:
    """
    lines = []
    lines.append(
        f'event["{output_field}_{field_prefix}"] = {function_name}(event, "{input_field}")'
    )
    return lines

def generate_check_lines(input_field, output_field, function_name, field_prefix=""):
    """
    Generates lua lines that return bool on conditions set in the static script
    :param input_field: censys Field
    :param input_field: flattened version of censys Field
    :param function_name: the lua function that will encode the field
    :param field_prefix: an optional string to be concatenated at the end of original field
    :return:
    """
    lines = []
    lines.append(
        f'event["{output_field}_{field_prefix}"] = {function_name}(event["{input_field}"])'
    )
    return lines


def extract_feature_from_field(input_field, output_field):
    lines = []
    if 'rsa_public_key.length' in input_field or 'rsa_params.length' in input_field or 'dh_params.prime.length' in input_field:
        lines.extend(one_hot_encode(input_field, output_field, [
            512, 768, 1024, 2048, 3072, 4096
            # 8192 has been added to the options after i saw some records on censys that have it
        ], "encode_key_length", field_prefix="is_"))
        lines.extend(one_hot_encode(input_field, output_field, [
            "SHA1"
        ], "encode_SHA_support", field_prefix="supports_"))
    elif 'dh_params.prime.length' in input_field:
        lines.extend(one_hot_encode(input_field, output_field, [
            512, 768, 1024, 2048, 3072, 4096
            # 8192 has been considered but left out of the options after i saw some records on censys that have it
        ], "encode_key_length", field_prefix="is_"))
    elif 'parsed.version' in input_field:
        lines.extend(one_hot_encode(input_field, output_field, [
            1, 2
        ], "encode_certificate_version"))
    elif 'ecdsa_public_key.length' in input_field:
        lines.extend(one_hot_encode(input_field, output_field, [
            256, 384 # 521 has been left out
        ], "encode_key_length", field_prefix='is_'))
    elif 'status_code' in input_field:
        lines.extend(one_hot_encode(input_field, output_field, [
            'success',
            'redirection',
            'client_error',
            'server_error'
        ], "encode_status_code", field_prefix="is_"))
    elif 'rsa_public_key.exponent' in input_field or 'rsa_params.exponent' in input_field:
        lines.extend(one_hot_encode(input_field, output_field, [
            2, 3, 5, 17, 257  # common exponents, 65537 is left out
        ], "encode_RSA_exponent", field_prefix="is_"))
    elif 'validity.length' in input_field:
        lines.extend(one_hot_encode(input_field, output_field, [
            "days", "weeks", "months"
        ], "encode_validity_length", field_prefix="in_"))
    elif 'session_ticket.lifetime_hint' in input_field:
        lines.extend(one_hot_encode(input_field, output_field, [
            "minutes", "hours", "days" # the same one_hot_encode function was used although the functionality is different
        ], "encode_validity_length", field_prefix="in_"))
    elif 'smb_version.major' in input_field:
        lines.extend(one_hot_encode(input_field, output_field, [
            1, 2  # smb major version groups 3 has been left out
        ], "encode_version_major", field_prefix="is_"))
        output_field = output_field[:-6]
        lines.extend(generate_relating_lines(input_field, output_field, 'version_number', 'version'))
    elif 'amqp.banner.version.major' in input_field:
        lines.extend(one_hot_encode(input_field, output_field, [
            0  # 1 is left out
        ], "encode_version_major", field_prefix="is_"))
        output_field = output_field[:-6]
        lines.extend(generate_relating_lines(input_field, output_field, 'version_number', 'version'))
    elif 'rdp.banner.version.major' in input_field:
        lines.extend(one_hot_encode(input_field, output_field, [
            1, 2, 3, 4, 5, 6, 7, 8, 9  # rdp major versions, 10 is left out
        ], "encode_version_major", field_prefix="is_"))
        output_field = output_field[:-6]
        lines.extend(generate_relating_lines(input_field, output_field, 'version_number', 'version'))
    elif 'bacnet.device_id.vendor.id' in input_field:
        lines.extend(generate_check_lines(input_field, output_field, 'is_ashrae', 'is_ashrae'))
    elif 'basic_constraints.max_path_len' in input_field:
        output_field = output_field[:-13]
        lines.extend(generate_check_lines(input_field, output_field, 'has_no_sub_CA', 'has_no_subordinate_CA'))
    return lines


def generate_numeric_lines(input_field, output_field):
    lines = []
    lines.extend(extract_feature_from_field(input_field, output_field))
    if input_field[0] == 'p':
        lines.extend(extract_feature_from_field(input_field[1:], output_field[1:]))
    lines.extend(utils.handle_general_case(input_field=input_field,
                                           output_field=output_field,
                                           line_generator=utils.generate_numeric_line))
    return lines


def main():
    lines = []
    strings = [
        'p993.imaps.tls.tls.certificate.parsed.version',
        'p993.imaps.tls.tls.chain.parsed.subject_key_info.rsa_public_key.length',
        'p80.http.open_proxy.connect.status_code',
        'p25.smtp.starttls.tls.certificate.parsed.subject_key_info.rsa_public_key.exponent',
        'p443.https.tls.chain.parsed.extensions.basic_constraints.max_path_len',
        'p445.smb.banner.smb_version.major',
        'p5672.amqp.banner.version.major',
        'p3389.rdp.banner.version.major',
        'p47808.bacnet.device_id.vendor.id',
        'p443.https.tls.server_key_exchange.rsa_params.length',
        'p443.https.tls.server_key_exchange.dh_params.prime.length',
        'p110.pop3.ssl_2.certificate.parsed.subject_key_info.ecdsa_public_key.length',
        'p110.pop3.starttls.tls.session_ticket.lifetime_hint',
        'p1433.mssql.banner.tls.certificate.parsed.validity.length',
        'p1433.mssql.banner.tls.server_key_exchange.rsa_params.exponent'
    ]
    for string in strings:
        output_field = string.replace('.', '__')
        lines.extend(generate_numeric_lines(string, output_field))
    print('\n'.join(lines))


if __name__ == '__main__':
    main()
