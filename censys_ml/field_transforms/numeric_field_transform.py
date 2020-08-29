from censys_ml.field_transforms import utils


def encode_certificate_fields(input_field, output_field):
    lines = []
    parsed_versions = [1, 2]
    sha_strs = ["SHA1"]

    validity_lengths = ["days", "weeks", "months"]
    # 8192 has been added to the options after i saw some records on censys that have it
    rsa_lengths = [512, 768, 1024, 2048, 3072, 4096]
    # 8192 has been considered but left out of the options after i saw some records on censys that have it
    dh_prime_lengths = [512, 768, 1024, 2048, 3072, 4096]
    # 521 has been left out
    ecdsa_lengths = [256, 384]
    # common exponents, 65537 is left out
    rsa_exponents = [2, 3, 5, 17, 257]

    if 'rsa_public_key.length' in input_field or 'rsa_params.length' in input_field or 'dh_params.prime.length' in input_field:
        lines.extend(utils.one_hot_encode(input_field, output_field, rsa_lengths, "encode_key_length", "is_"))
        lines.extend(utils.one_hot_encode(input_field, output_field, sha_strs, "encode_SHA_support", "supports_"))

    elif 'dh_params.prime.length' in input_field:
        lines.extend(utils.one_hot_encode(input_field, output_field, dh_prime_lengths, "encode_key_length", "is_"))

    elif 'parsed.version' in input_field:
        lines.extend(utils.one_hot_encode(input_field, output_field, parsed_versions, "encode_certificate_version"))

    elif 'ecdsa_public_key.length' in input_field:
        lines.extend(utils.one_hot_encode(input_field, output_field, ecdsa_lengths, "encode_key_length", 'is_'))

    elif 'rsa_public_key.exponent' in input_field or 'rsa_params.exponent' in input_field:
        lines.extend(utils.one_hot_encode(input_field, output_field, rsa_exponents, "encode_RSA_exponent", "is_"))

    elif 'validity.length' in input_field:
        lines.extend(utils.one_hot_encode(input_field, output_field, validity_lengths, "encode_validity_length", "in_"))

    elif 'basic_constraints.max_path_len' in input_field:
        lines.extend(utils.generate_check_lines(input_field, output_field[:-13], 'has_no_sub_CA', 'has_no_subordinate_CA'))

    return lines


def encode_service_version_fields(input_field, output_field):
    lines = []
    # smb major version groups 3 has been left out
    smb_versions = [1, 2]
    # 1 is left out
    amqp_versions = [0]
    # rdp major versions, 10 is left out
    rdp_versions = [1, 2, 3, 4, 5, 6, 7, 8, 9]

    if 'smb_version.major' in input_field:
        lines.extend(utils.one_hot_encode(input_field, output_field, smb_versions, "encode_version_major", "is_"))
        lines.extend(utils.generate_relating_lines(input_field, output_field[:-6], 'version_number', 'version'))

    elif 'amqp.banner.version.major' in input_field:
        lines.extend(utils.one_hot_encode(input_field, output_field, amqp_versions, "encode_version_major", "is_"))
        lines.extend(utils.generate_relating_lines(input_field, output_field[:-6], 'version_number', 'version'))

    elif 'rdp.banner.version.major' in input_field:
        lines.extend(utils.one_hot_encode(input_field, output_field, rdp_versions, "encode_version_major", "is_"))
        lines.extend(utils.generate_relating_lines(input_field, output_field[:-6], 'version_number', 'version'))

    elif 'bacnet.device_id.vendor.id' in input_field:
        lines.extend(utils.generate_check_lines(input_field, output_field, 'is_ashrae', 'is_ashrae'))

    return lines


def encode_http_fields(input_field, output_field):
    lines = []
    status_code_strs = ['success', 'redirection', 'client_error', 'server_error']
    # same one_hot_encode function was used but  functionality is different
    session_time_ranges = ["minutes", "hours", "days"]

    if 'session_ticket.lifetime_hint' in input_field:
        lines.extend(utils.one_hot_encode(input_field, output_field, session_time_ranges, "encode_validity_length", "in_"))

    elif 'status_code' in input_field:
        lines.extend(utils.one_hot_encode(input_field, output_field, status_code_strs, "encode_status_code", "is_"))

    return lines


def transform_common_fields(input_field, output_field):
    lines = []
    lines.extend(encode_certificate_fields(input_field, output_field))
    lines.extend(encode_service_version_fields(input_field, output_field))
    lines.extend(encode_http_fields(input_field, output_field))
    return lines


def generate_numeric_lines(input_field, output_field, field_data=None):
    lines = []
    lines.extend(transform_common_fields(input_field, output_field))
    if input_field[0] == 'p':
        lines.extend(transform_common_fields(input_field[1:], output_field[1:]))
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
