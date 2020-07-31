#from censys_ml.field_transforms import utils
import utils

def encode_SHA_support(input_field, output_field):
    #SHA-1	Less than 2048 bits	—	—
    #SHA-2	2048 bits or longer
    lines = []
    SHA_versions = [
        "SHA1"
    ]#SHA-2 is left for one-hot encoding
    for version in SHA_versions:
        lines.append(
            f'event["{output_field}_supports_{version}"] = encode_SHA_support(event["{input_field}"])["{version}"]'
        )
    return lines


def encode_RSA_key_length(input_field, output_field):
    # 512 bits	Low-strength key
    #1024 bits	Medium-strength key
    #2048 bits	High-strength key
    #4096 bits	Very high-strength key
    lines = []
    standard_RSA_key_sizes = [
        512 ,1024, 2048
    ] #4096 is left out for one-hot encoding
    for size in standard_RSA_key_sizes:
        lines.append(
            f'event["{output_field}_is_{size}"] = encode_RSA_length(event["{input_field}"])["s{size}"]'
        )
    return lines


def encode_TLS_certificate_version(input_field, output_field):
    lines = []
    available_versions = [1,2] #3 is left for one-hot encoding
    for version in available_versions:
        lines.append(
            f'event["{output_field}_{version}"] = encode_TLS_version(event["{input_field}"])["v{version}"]'
        )
    return lines
    
def encode_status_code(input_field, output_field):
    lines = []
    response_status = [
            'success',
            'redirection',
            'client_error',
            'server_error'
        ]#'informational_response(1xx)' is left for one-hot encoding
    for status in response_status:
        lines.append(
            f'event["{output_field}_{status}"] = encode_status_code(event["{input_field}"])["{status}"]'
        )
    return lines
    

def extract_feature_from_field(input_field, output_field):
    lines = []
    if 'rsa_public_key.length' in input_field:
        lines.extend(encode_RSA_key_length(input_field, output_field))
        lines.extend(encode_SHA_support(input_field, output_field))
    elif 'tls.certificate.parsed.version' in input_field:
        lines.extend(encode_TLS_certificate_version(input_field, output_field))
    elif 'status_code' in input_field:
        lines.extend(encode_status_code(input_field, output_field))
    return lines

    

def generate_numeric_lines(input_field, output_field):
    lines = []
    lines.extend(extract_feature_from_field(input_field, output_field))
    if input_field[0] == 'p':
        lines.extend(extract_feature_from_field(input_field[1:], output_field[1:]))
    return lines


def main():
    lines = []
    strings = [
        'p993.imaps.tls.tls.certificate.parsed.version',
        'p993.imaps.tls.tls.chain.parsed.subject_key_info.rsa_public_key.length',
        'p80.http.open_proxy.connect.status_code'
    ]
    for string in strings:
        output_field = string.replace('.', '__')
        lines.extend(generate_numeric_lines(string, output_field))
    print('\n'.join(lines))

if __name__ == '__main__':
    main()
    
