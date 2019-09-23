from scripts.analyze_data.lib.feature import Feature
from scripts.utils import get_field
from u_utils import enumerated_field, list_of_bool_int_fields

valid_levels = ['DV', 'EV', 'OV', 'unknown']
tls_vers = ['TLSv1.0', 'TLSv1.1', 'TLSv1.2', 'SSLv3', 'unknown']
extended_usages = [
    'any',
    'apple_code_signing',
    'apple_code_signing_development',
    'apple_code_signing_third_party',
    'apple_crypto_development_env',
    'apple_crypto_env',
    'apple_crypto_maintenance_env',
    'apple_crypto_production_env',
    'apple_crypto_qos',
    'apple_crypto_test_env',
    'apple_crypto_tier0_qos',
    'apple_crypto_tier1_qos',
    'apple_crypto_tier2_qos',
    'apple_crypto_tier3_qos',
    'apple_ichat_encryption',
    'apple_ichat_signing',
    'apple_resource_signing',
    'apple_software_update_signing',
    'apple_system_identity',
    'client_auth',
    'code_signing',
    'dvcs',
    'eap_over_lan',
    'eap_over_ppp',
    'email_protection',
    'ipsec_end_system',
    'ipsec_tunnel',
    'ipsec_user',
    'microsoft_ca_exchange',
    'microsoft_cert_trust_list_signing',
    'microsoft_csp_signature',
    'microsoft_document_signing',
    'microsoft_drm',
    'microsoft_drm_individualization',
    'microsoft_efs_recovery',
    'microsoft_embedded_nt_crypto',
    'microsoft_encrypted_file_system',
    'microsoft_enrollment_agent',
    'microsoft_kernel_mode_code_signing',
    'microsoft_key_recovery_21',
    'microsoft_key_recovery_3',
    'microsoft_license_server',
    'microsoft_licenses',
    'microsoft_lifetime_signing',
    'microsoft_mobile_device_software',
    'microsoft_nt5_crypto',
    'microsoft_oem_whql_crypto',
    'microsoft_qualified_subordinate',
    'microsoft_root_list_signer',
    'microsoft_server_gated_crypto',
    'microsoft_sgc_serialized',
    'microsoft_smart_display',
    'microsoft_smartcard_logon',
    'microsoft_system_health',
    'microsoft_system_health_loophole',
    'microsoft_timestamp_signing',
    'microsoft_whql_crypto',
    'netscape_server_gated_crypto',
    'ocsp_signing',
    'sbgp_cert_aa_service_auth',
    'server_auth',
    'time_stamping',
    'unknown',
    'value',
]
key_usages = [
    'certificate_sign',
    'content_commitment',
    'crl_sign',
    'data_encipherment',
    'decipher_only',
    'digital_signature',
    'encipher_only',
    'key_agreement',
    'key_encipherment',
    'unknown'
]
cipher_suites = [
    'tls_dhe_rsa_with_aes_128_gcm_sha256',
    'tls_dhe_rsa_with_aes_256_cbc_sha',
    'tls_ecdhe_ecdsa_with_aes_128_gcm_sha256',
    'tls_ecdhe_rsa_with_aes_128_gcm_sha256',
    'tls_ecdhe_rsa_with_aes_256_cbc_sha',
    'tls_ecdhe_rsa_with_chacha20_poly1305_sha256',
    'tls_rsa_with_aes_128_cbc_sha',
    'tls_rsa_with_aes_128_gcm_sha256',
    'tls_rsa_with_aes_256_cbc_sha',
    'tls_rsa_with_rc4_128_sha'
]


key_algorithims = [
    'ssh-rsa-cert-v01@openssh.com',
    'ssh-dss-cert-v01@openssh.com',
    'ecdsa-sha2-nistp256-cert-v01@openssh.com',
    'ecdsa-sha2-nistp384-cert-v01@openssh.com',
    'ecdsa-sha2-nistp521-cert-v01@openssh.com',
    'ssh-ed25519-cert-v01@openssh.com',
    'ssh-rsa',
    'ssh-dss',
    'ecdsa-sha2-nistp256',
    'ecdsa-sha2-nistp384',
    'ecdsa-sha2-nistp521',
    'ssh-ed25519'
]

common_issuers = [
    'amazon',
    'alphassl',
    'bms',
    'cisco',
    'comodo',
    'cpanel',
    'digicert',
    'draytek',
    'entrust',
    'fortinet',
    'geotrust',
    'globalsign',
    'godaddy',
    'google',
    'home.pl',
    'sonicwall',
    'huawei',
    'localhost',
    "let's encrypt",
    'microsoft',
    'mini webservice',
    'motorola',
    'rapidssl',
    'sectigo',
    'someorganization',
    'starfield',
    'trustasia',
    'ubiquiti',
    'watchguard',
]


def meta_features(machine, args, field_prefix, _id_prefix):
    res = [
        Feature(as_obj={
            '_id': '{}_TLS_FIELD_PRESENT'.format(_id_prefix),
            '_type': 'MACHINE',
            'expansion_safe': True,
            'value': len([k for k in machine if '{}'.format(field_prefix) in k]) > 0,
            'description': 'does {} have tls'.format(field_prefix)
        })
    ]
    return res


def cipher_suite_features(machine, args, field_prefix, _id_prefix):
    res = []
    res += enumerated_field(machine=machine,
                            field='{}_cipher_suite_name'.format(field_prefix),
                            enum_list=cipher_suites,
                            other_fields=['{}_ciphers_name'.format(field_prefix)])
    return res


def server_host_key_features(machine, args, field_prefix, _id_prefix):
    if '{}_server_host_key_certkey_public_key_validity_valid_before'.format(field_prefix) in machine:
        valid_end_date = \
            machine['{}_server_host_key_certkey_public_key_validity_valid_before'.format(
                field_prefix)][:10].replace('-', '')
    else:
        valid_end_date = '99999999'  # high date for machines that do not have this field

    res = [
        Feature(as_obj={
            '_id': '{}_CERT_KEY_VALID_BEFORE'.format(_id_prefix),
            '_type': 'MACHINE',
            'expansion_safe': True,
            'value': int(valid_end_date <= args['date']),
            'description': 'was the key expired at scan time?'
        }),
        Feature(as_obj={
            '_id': '{}_CERT_KEY_VALID_LENGTH'.format(_id_prefix),
            '_type': 'MACHINE',
            'expansion_safe': True,
            'value': get_field(machine, '{}_server_host_key_certkey_public_key_validity_length'.format(field_prefix)),
            'description': 'The length of time, in seconds, that the key is valid.'
        }),
        Feature(as_obj={
            '_id': '{}_RSA_PUB_KEY_LENGTH'.format(_id_prefix),
            '_type': 'MACHINE',
            'expansion_safe': True,
            'value': get_field(machine,
                               '{}_server_host_key_rsa_public_key_length'.format(field_prefix),
                               t='int'),
            'description': 'Bit-length of modulus. '
                           'length of the rsa public key in {}'.format(field_prefix)
        }),
        Feature(as_obj={
            '_id': '{}_ECDSA_LENGTH'.format(_id_prefix),
            '_type': 'MACHINE',
            'expansion_safe': True,
            'value': get_field(machine,
                               '{}_server_host_key_ecdsa_public_key_length'.format(field_prefix),
                               t='int'),
            'description': 'length of the public portion '
                           'of an ECDSA asymmetric key. {}'.format(field_prefix)
        }),
        Feature(as_obj={
            '_id': '{}_CERT_PUB_KEY_RESERVED'.format(_id_prefix),
            '_type': 'MACHINE',
            'expansion_safe': True,
            'value': get_field(machine,
                               '{}_server_host_key_certkey_public_key_reserved'.format(field_prefix),
                               t='int'),
            'description': 'OpenSSH certificate for host key, see '
                           'https://cvsweb.openbsd.org/src/usr.bin/ssh/PROTOCOL.certkeys?rev=1.8. '
                           '{}'.format(field_prefix)
        }),
        Feature(as_obj={
            '_id': '{}_CRIT_FORCE_COMMAND'.format(_id_prefix),
            '_type': 'MACHINE',
            'expansion_safe': True,
            'value': get_field(machine,
                               '{}_server_host_key_certkey_public_key_critical_options_force_command'.format(
                                   field_prefix),
                               t='int',
                               other_f=['{}_server_host_key_certkey_public_key_critical_options_'
                                        'known_force_command'.format(field_prefix)]),
            'description': 'True if and only if the force-command extension is present. '
                           'Critical OpenSSL certificate options.'
                           'OpenSSH certificate for host key, '
                           'see https://cvsweb.openbsd.org/src/usr.bin/ssh/PROTOCOL.certkeys?rev=1.8'
        }),
        Feature(as_obj={
            '_id': '{}_CRIT_SRC_ADDR'.format(_id_prefix),
            '_type': 'MACHINE',
            'expansion_safe': True,
            'value': get_field(machine,
                               '{}_server_host_key_certkey_public_key_critical_options_source_address'.format(
                                   field_prefix),
                               t='int',
                               other_f=['{}_server_host_key_certkey_public_key_critical_options_'
                                        'known_source_address'.format(field_prefix)]),
            'description': 'True if and only if the source_address extension is present. '
                           'Critical OpenSSL certificate options.'
                           'OpenSSH certificate for host key, '
                           'see https://cvsweb.openbsd.org/src/usr.bin/ssh/PROTOCOL.certkeys?rev=1.8'
        }),
        Feature(as_obj={
            '_id': '{}_HAS_PARSE_ERR'.format(_id_prefix),
            '_type': 'MACHINE',
            'expansion_safe': True,
            'value': '' != get_field(machine,
                                     '{}_server_host_key_certkey_public_key_parse_error'.format(
                                         field_prefix), t='str'),
            'description': 'If present, a description of the error parsing the certificate.'
        })
    ]
    res += enumerated_field(machine,
                            '{}_server_host_key_key_algorithm'.format(field_prefix),
                            key_algorithims,
                            other_fields=['{}_server_host_key_algorithm'.format(field_prefix)])
    ecdsa_curves = [
        'P - 521',
        'P - 256',
        'P - 224',
        'P - 384',
    ]
    res += enumerated_field(machine,
                            '{}_server_host_key_ecdsa_public_key_curve'.format(field_prefix),
                            ecdsa_curves)
    extensions = [
        'permit_X11_forwarding',
        'permit_agent_forwarding',
        'permit_port_forwarding',
        'permit_pty',
        'permit_user_rc'
    ]
    res += list_of_bool_int_fields(machine,
                                   parent_field='{}_server_host_key_certkey_public_key_extensions'.format(field_prefix),
                                   child_fields=extensions,
                                   description='True if and only if the extension is present.',
                                   other_parents=['{}_server_host_key_certkey_public_key_extensions_known'.format(field_prefix)])

    types = ['unknown', 'HOST', 'USER']
    res += enumerated_field(machine,
                            '{}_server_host_key_certkey_public_key_type_name'.format(field_prefix),
                            types,
                            other_fields=['{}_server_host_key_certkey_public_key_cert_type_name'.format(field_prefix)])
    return res


def dh_param_features(machine, field_prefix, _id_prefix, echd=False, mini=False):
    res = []
    params = ['client_private', 'server_private']
    if echd:
        _id = 'ecdh'
        params += ['curve_id', 'client_public_x', 'client_public_y', 'server_public_x', 'server_public_y']
    else:
        _id = 'dh'
        params += ['generator', 'prime', 'session_key', 'client_public', 'server_public']

    if mini:
        params = ['generator', 'prime']

    for param in params:
        if param == 'curve_id':
            field = '{}_{}_params_curve_id_id'.format(field_prefix, _id)
        else:
            field = '{}_{}_params_{}_length'.format(field_prefix, _id, param)

        res += [
            # '{}_{}_PARAM_{}'.format(_id_prefix, _id, param)
            Feature(as_obj={
                '_id': field,
                '_type': 'MACHINE',
                'expansion_safe': True,
                'value': get_field(machine, field, t='int'),
                'description': 'length of {} param '
                               '{} on {}'.format(_id, param, field_prefix)
            })
        ]
    return res


def server_key_exchange_features(m, args, field_prefix, _id_prefix):
    res = [
        Feature(as_obj={
            '_id': '{}_server_rsa_length'.format(field_prefix),
            '_type': 'MACHINE',
            'expansion_safe': True,
            'value': get_field(m,
                               '{}_server_key_exchange_rsa_params_length'.format(field_prefix),
                               t='int'),
            'description': 'Bit-length of modulus.'
        })
    ]
    res += dh_param_features(m, '{}_server_key_exchange'.format(field_prefix), field_prefix, echd=False)
    res += dh_param_features(m, '{}_server_key_exchange'.format(field_prefix), field_prefix, echd=True)
    return res


def certificate_features(m, args, field_prefix, _id_prefix):
    # todo add censys report enum for signature algorithims
    # todo subject_key_infoissuer_dn
    res = []
    cert_field = '{}_certificate'.format(field_prefix)

    res += enumerated_field(machine=m,
                            field='{}_parsed_issuer_organization'.format(cert_field),
                            enum_list=common_issuers,
                            add_fields=[
                                '{}_parsed_issuer_organizational_unit'.format(cert_field),
                                '{}_parsed_issuer_common_name'.format(cert_field),
                                '{}_parsed_issuer_dn'.format(cert_field),
                            ])

    for _field in ['android', 'apple', 'java', 'microsoft', 'nss']:
        res += list_of_bool_int_fields(machine=m,
                                       parent_field='{}_validation_{}'.format(cert_field, _field),
                                       child_fields=['trusted_path', 'valid', 'was_valid'],
                                       description='trust things. look at docs.')
        res += enumerated_field(machine=m,
                                field='{}_validation_{}_type'.format(cert_field, _field),
                                enum_list=['root', 'intermediate', 'leaf'])

    res += list_of_bool_int_fields(m, parent_field='{}'.format(cert_field), child_fields=[
        'parsed_extensions_basic_constraints_is_ca',
        'parsed_extensions_basic_constraints_max_path_len',
        'parsed_extensions_ct_poison',
        'parsed_redacted',
        'parsed_signature_self_signed',
        'parsed_signature_valid',
        'parsed_version',
        'parsed_validity_length'
    ], description='certificate fields in tls. '
                   'Autmoated, so look at docs for more details')

    # not in data model
    # res += list_of_bool_int_fields(m, parent_field='{}_parsed_extensions_extended_key_usage'.format(cert_field),
    #                                child_fields=extended_usages, description='what is the extended key uasge?')

    res += list_of_bool_int_fields(m, parent_field='{}_parsed_extensions_key_usage'.format(cert_field),
                                   child_fields=key_usages, description='what is the key uasge?')

    res += enumerated_field(machine=m,
                            field='{}_parsed_validation_level'.format(cert_field),
                            enum_list=valid_levels)

    if '{}_parsed_validity_end'.format(cert_field) in m:
        valid_end_date = \
            m['{}_parsed_validity_end'.format(cert_field)][:10].replace('-', '')
    else:
        # high date for machines that do not have tls cert
        valid_end_date = '99999999'

    res += [
        Feature(as_obj={
            '_id': '{}_TLS_CERT_PAST_VALID_END_DATE'.format(_id_prefix),
            '_type': 'MACHINE',
            'expansion_safe': True,
            'value': int(valid_end_date <= args['date']),
            'description': 'was the certificate expired at scan time?'
        })
    ]

    unknown_extensions = get_field(m,
                                   t='dict',
                                   f='{}_parsed_unknown_extensions'.format(cert_field),
                                   other_f=['{}_parsed_unknown_extensions_critical'.format(cert_field)])
    has_crit = any([u['critical'] for u in unknown_extensions])

    res += [
        Feature(as_obj={
            '_id': '{}_TLS_CERT_PARSED_UNKNOWN_EXT_CRITICAL'.format(_id_prefix),
            '_type': 'MACHINE',
            'expansion_safe': True,
            'value': int(has_crit),
            'description': 'Certificates should be '
                           'rejected if they have '
                           'critical extensions the '
                           'validator does not recognize.'
        })
    ]
    return res


def ssl_2_features(m, args, ssl2_prefix, _id_prefix):
    res = [
        Feature(as_obj={
            '_id': '{}_SSL_2_SUPPORT'.format(_id_prefix),
            '_type': 'MACHINE',
            'expansion_safe': True,
            'value': get_field(m, '{}_support'.format(ssl2_prefix), t='int'),
            'description': 'does this machine support ssl_2?'
        })
    ]
    res += certificate_features(m, args, ssl2_prefix, _id_prefix)
    return res


def extract(m, args, field, _id):
    res = []
    ssl2_protocols = {
        'p443_https': 'p443_https',
        'p143_imap_starttls': 'p143_imap',
        'p993_imaps_tls': 'p993_imaps',
        'p110_pop3_starttls': 'p110_pop3',
        'p995_pop3s_tls': 'p995_pop3s',
        'p25_smtp_starttls': 'p25_smtp',
        'p587_smtp_starttls': 'p587_smtp',
    }
    if field in ssl2_protocols:
        res += ssl_2_features(m, args,
                              ssl2_prefix='{}_ssl_2'.format(ssl2_protocols[field]),
                              _id_prefix='{}_ssl_2'.format(_id))

    field_prefix = '{}_tls'.format(field)
    _id_prefix = '{}_tls'.format(_id)

    res += meta_features(m, args, field_prefix, _id_prefix)
    res += certificate_features(m, args, field_prefix, _id_prefix)
    res += cipher_suite_features(m, args, field_prefix, _id_prefix)
    res += server_key_exchange_features(m, args, field_prefix, _id_prefix)
    res += list_of_bool_int_fields(machine=m, parent_field=field_prefix, child_fields=[
        'ocsp_stapling',
        'scts_version',
        'secure_renegotiation',
        'session_ticket_length',
        'session_ticket_lifetime_hint',
        'signature_valid',
        'validation_matches_domain',
        'validation_browser_trusted',
    ], description='')
    res += enumerated_field(machine=m,
                            field='{}_version'.format(field_prefix),
                            enum_list=tls_vers,
                            version=True)
    return res


def main():
    import json
    from scripts.utils import recurse_machine_fields
    machine = recurse_machine_fields(json.loads(r"""{"tags":["pop3","smtp","http","https"],"ip":"199.122.116.200","updated_at":"2019-03-22T09:40:36+00:00","ports":[80,587,443,110],"location":{"country":"Canada","longitude":-79.3716,"registered_country":"Canada","registered_country_code":"CA","country_code":"CA","latitude":43.6319,"continent":"North America"},"autonomous_system":{"description":"NETELLIGENT - eStruxture Data Centers Inc.","rir":"unknown","routed_prefix":"199.122.116.0/22","country_code":"CA","path":[7018,577,10929],"asn":10929,"name":"NETELLIGENT - eStruxture Data Centers Inc."},"protocols":["443/https","110/pop3","80/http","587/smtp"],"p80":{"http":{"get":{"body":"<html><body><h1>It works!</h1></body></html>","headers":{"content_length":"44","unknown":[{"value":"\"a60246-2c-51b91380ae800\"","key":"etag"},{"value":"Tue, 19 Mar 2019 18:31:30 GMT","key":"date"}],"server":"Apache/2.2.31 (Unix) mod_ssl/2.2.31 OpenSSL/1.0.1e-fips PHP/5.3.29","last_modified":"Thu, 23 Jul 2015 21:03:28 GMT","content_type":"text/html","accept_ranges":"bytes"},"status_code":200,"status_line":"200 OK","body_sha256":"8f3ff2e2482468f3b9315a433b383f0cc0f9eb525889a34d4703b7681330a3fb","metadata":{"product":"httpd","version":"2.2.31","description":"Apache httpd 2.2.31","manufacturer":"Apache"}}}},"p110":{"pop3":{"starttls":{"starttls":"-ERR authorization first","banner":"+OK <30449.1552782037@server1.elitemail.com>","metadata":{}}}},"p443":{"https":{"tls":{"server_key_exchange":{"ecdh_params":{"curve_id":{"id":23,"name":"secp256r1"}}},"certificate":{"parsed":{"tbs_noct_fingerprint":"a40b4cd615a079984844ed00be7f006b9776989ff206ca2173ad8276def7aabb","subject_dn":"CN=server1.elitemail.com","subject":{"common_name":["server1.elitemail.com"]},"signature_algorithm":{"oid":"1.2.840.113549.1.1.5","name":"SHA1WithRSA"},"redacted":false,"serial_number":"18243842892451429190","validation_level":"unknown","issuer_dn":"C=US, ST=Arizona, L=Scottsdale, O=GoDaddy.com, Inc., OU=http://certs.godaddy.com/repository/, CN=Go Daddy Secure Certificate Authority - G2","fingerprint_sha1":"6f9d27f20b21cd1d16bd6bcfedd3c29e46256cce","version":2,"fingerprint_sha256":"43ec183e0986ca7350692a2dce2673b5e077c830c8762fbcfdbe7c34d0221e8c","names":["server1.elitemail.com"],"tbs_fingerprint":"6e2dc40c5331d083a03e69675f3ba868ea2ba5a4ea837829606270d2c9685ae0","validity":{"start":"2012-05-17T21:11:31Z","length":864000000,"end":"2039-10-03T21:11:31Z"},"extensions":{},"fingerprint_md5":"0f0b9e12af0b190dad27285d7caaddaa","subject_key_info":{"fingerprint_sha256":"a16d04521c0c876402fd9504dc4b2bfc688ae9b4c5560c79d25e0f7a20fba808","key_algorithm":{"name":"RSA"},"rsa_public_key":{"length":1024,"modulus":"r7/FNB5Gws3HSlQGjFvLqhOGMEztXDszwn1CqQxS3bHmLPASpxfaUWurjzMJKHgiu7MfP52Sb4HSGcmtKvAqgVmbhIEFdg3gnOkmP5HCymMq945trGiGqixhx0WCt9hX4RHbv9qPWHyZuyzJoucPK8bSO+SDymKruX5rH9XSkm0=","exponent":65537}},"signature":{"self_signed":true,"valid":true,"value":"pZ3ONo1XUYZgpkpTSUtlycfMIQ0bnMra1Nb/14lLUUpJ7aJZYbG8SskQ48/C8GqMctWkQ4qT+gfem+sXh80+9EVqJEbWfp2Gd+I80uQjP6sxKZwhu5d8+z4pZuNgdn73yk+f0lNuR7ehRnO5rZjdhwzx+k/vAnwh88kr7/SB95E=","signature_algorithm":{"oid":"1.2.840.113549.1.1.5","name":"SHA1WithRSA"}},"spki_subject_fingerprint":"6ceae5e7ea6e09e98ec0cacc2ab38637ccbb278e4a83c333e71bed42dbd223b8","issuer":{"common_name":["server1.elitemail.com"]}}},"metadata":{},"cipher_suite":{"id":"0xC014","name":"TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"},"version":"TLSv1.2","session_ticket":{"length":192,"lifetime_hint":300},"signature":{"hash_algorithm":"sha512","valid":true,"signature_algorithm":"rsa"},"validation":{"browser_trusted":false,"browser_error":"x509: unknown error"},"ocsp_stapling":false},"dhe_export":{"support":false,"metadata":{}},"get":{"body":"<html><body><h1>It works!</h1></body></html>","headers":{"content_length":"44","unknown":[{"value":"Tue, 19 Mar 2019 14:52:25 GMT","key":"date"},{"value":"\"a60246-2c-51b91380ae800\"","key":"etag"}],"server":"Apache/2.2.31 (Unix) mod_ssl/2.2.31 OpenSSL/1.0.1e-fips PHP/5.3.29","last_modified":"Thu, 23 Jul 2015 21:03:28 GMT","content_type":"text/html","accept_ranges":"bytes"},"status_code":200,"status_line":"200 OK","body_sha256":"8f3ff2e2482468f3b9315a433b383f0cc0f9eb525889a34d4703b7681330a3fb","metadata":{"product":"httpd","version":"2.2.31","description":"Apache httpd 2.2.31","manufacturer":"Apache"}},"dhe":{"support":true,"dh_params":{"prime":{"length":1024,"value":"///////////JD9qiIWjCNMTGYouA3BzRKQJOCIpnzHQCC76mOxObIlFKCHmONATd75UZs806QxswKwpt8l8UN0/hNW1tUcJF5IW1dmJefsb0TELppjftawv/XLb0Brft7jhr+1qJn6WunyQRfEsf5kkoZlHs5lOB//////////8="},"generator":{"length":8,"value":"Ag=="}},"metadata":{}},"heartbleed":{"heartbeat_enabled":true,"heartbleed_vulnerable":false,"metadata":{}},"rsa_export":{"support":false,"metadata":{}}}},"p587":{"smtp":{"starttls":{"ehlo":"250-server1.elitemail.com\r\n250-AUTH LOGIN PLAIN\r\n250-AUTH=LOGIN PLAIN\r\n250-PIPELINING\r\n250 8BITMIME","starttls":"502 unimplemented (#5.5.1)","banner":"220 server1.elitemail.com ESMTP","metadata":{}}}},"metadata":{"os":"Unix","os_description":"Unix"}}"""))
    args = {
        'domain': 'verifone.com',
        'c_id': 'verifone',
        'date': '20170215'
    }
    result = extract(machine, args, field='p443_https', _id='p443_https')
    # print([r.get_all() for r in result])
    from scripts.utils import compare_feature_output
    compare_feature_output([r.get_all() for r in result], [{'_type': 'MACHINE', 'descriptive': False, 'value': 1.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_TLS_FIELD_PRESENT', 'description': 'does p443_https_tls have tls'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_ANDROID_TRUSTED_PATH', 'description': 'Flag : p443_https_tls_certificate_validation_android_trusted_path. trust things. look at docs..'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_ANDROID_VALID', 'description': 'Flag : p443_https_tls_certificate_validation_android_valid. trust things. look at docs..'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_ANDROID_WAS_VALID', 'description': 'Flag : p443_https_tls_certificate_validation_android_was_valid. trust things. look at docs..'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_ANDROID_TYPE_LEAF', 'description': 'is p443_https_tls_certificate_validation_android_type leaf?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_ANDROID_TYPE_INTERMEDIATE', 'description': 'is p443_https_tls_certificate_validation_android_type intermediate?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_ANDROID_TYPE_ROOT', 'description': 'is p443_https_tls_certificate_validation_android_type root?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_ANDROID_TYPE_UNKNOWN', 'description': 'is p443_https_tls_certificate_validation_android_type unknown?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_APPLE_TRUSTED_PATH', 'description': 'Flag : p443_https_tls_certificate_validation_apple_trusted_path. trust things. look at docs..'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_APPLE_VALID', 'description': 'Flag : p443_https_tls_certificate_validation_apple_valid. trust things. look at docs..'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_APPLE_WAS_VALID', 'description': 'Flag : p443_https_tls_certificate_validation_apple_was_valid. trust things. look at docs..'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_APPLE_TYPE_LEAF', 'description': 'is p443_https_tls_certificate_validation_apple_type leaf?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_APPLE_TYPE_INTERMEDIATE', 'description': 'is p443_https_tls_certificate_validation_apple_type intermediate?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_APPLE_TYPE_ROOT', 'description': 'is p443_https_tls_certificate_validation_apple_type root?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_APPLE_TYPE_UNKNOWN', 'description': 'is p443_https_tls_certificate_validation_apple_type unknown?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_JAVA_TRUSTED_PATH', 'description': 'Flag : p443_https_tls_certificate_validation_java_trusted_path. trust things. look at docs..'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_JAVA_VALID', 'description': 'Flag : p443_https_tls_certificate_validation_java_valid. trust things. look at docs..'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_JAVA_WAS_VALID', 'description': 'Flag : p443_https_tls_certificate_validation_java_was_valid. trust things. look at docs..'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_JAVA_TYPE_LEAF', 'description': 'is p443_https_tls_certificate_validation_java_type leaf?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_JAVA_TYPE_INTERMEDIATE', 'description': 'is p443_https_tls_certificate_validation_java_type intermediate?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_JAVA_TYPE_ROOT', 'description': 'is p443_https_tls_certificate_validation_java_type root?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_JAVA_TYPE_UNKNOWN', 'description': 'is p443_https_tls_certificate_validation_java_type unknown?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_MICROSOFT_TRUSTED_PATH', 'description': 'Flag : p443_https_tls_certificate_validation_microsoft_trusted_path. trust things. look at docs..'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_MICROSOFT_VALID', 'description': 'Flag : p443_https_tls_certificate_validation_microsoft_valid. trust things. look at docs..'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_MICROSOFT_WAS_VALID', 'description': 'Flag : p443_https_tls_certificate_validation_microsoft_was_valid. trust things. look at docs..'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_MICROSOFT_TYPE_LEAF', 'description': 'is p443_https_tls_certificate_validation_microsoft_type leaf?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_MICROSOFT_TYPE_INTERMEDIATE', 'description': 'is p443_https_tls_certificate_validation_microsoft_type intermediate?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_MICROSOFT_TYPE_ROOT', 'description': 'is p443_https_tls_certificate_validation_microsoft_type root?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_MICROSOFT_TYPE_UNKNOWN', 'description': 'is p443_https_tls_certificate_validation_microsoft_type unknown?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_NSS_TRUSTED_PATH', 'description': 'Flag : p443_https_tls_certificate_validation_nss_trusted_path. trust things. look at docs..'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_NSS_VALID', 'description': 'Flag : p443_https_tls_certificate_validation_nss_valid. trust things. look at docs..'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_NSS_WAS_VALID', 'description': 'Flag : p443_https_tls_certificate_validation_nss_was_valid. trust things. look at docs..'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_NSS_TYPE_LEAF', 'description': 'is p443_https_tls_certificate_validation_nss_type leaf?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_NSS_TYPE_INTERMEDIATE', 'description': 'is p443_https_tls_certificate_validation_nss_type intermediate?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_NSS_TYPE_ROOT', 'description': 'is p443_https_tls_certificate_validation_nss_type root?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_VALIDATION_NSS_TYPE_UNKNOWN', 'description': 'is p443_https_tls_certificate_validation_nss_type unknown?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_BASIC_CONSTRAINTS_IS_CA', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_basic_constraints_is_ca. certificate fields in tls. Autmoated, so look at docs for more details.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_BASIC_CONSTRAINTS_MAX_PATH_LEN', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_basic_constraints_max_path_len. certificate fields in tls. Autmoated, so look at docs for more details.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_CT_POISON', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_ct_poison. certificate fields in tls. Autmoated, so look at docs for more details.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_REDACTED', 'description': 'Flag : p443_https_tls_certificate_parsed_redacted. certificate fields in tls. Autmoated, so look at docs for more details.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 1.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_SIGNATURE_SELF_SIGNED', 'description': 'Flag : p443_https_tls_certificate_parsed_signature_self_signed. certificate fields in tls. Autmoated, so look at docs for more details.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 1.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_SIGNATURE_VALID', 'description': 'Flag : p443_https_tls_certificate_parsed_signature_valid. certificate fields in tls. Autmoated, so look at docs for more details.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 2.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_VERSION', 'description': 'Flag : p443_https_tls_certificate_parsed_version. certificate fields in tls. Autmoated, so look at docs for more details.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 864000000.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_VALIDITY_LENGTH', 'description': 'Flag : p443_https_tls_certificate_parsed_validity_length. certificate fields in tls. Autmoated, so look at docs for more details.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_ANY', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_any. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_APPLE_CODE_SIGNING', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_apple_code_signing. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_APPLE_CODE_SIGNING_DEVELOPMENT', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_apple_code_signing_development. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_APPLE_CODE_SIGNING_THIRD_PARTY', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_apple_code_signing_third_party. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_APPLE_CRYPTO_DEVELOPMENT_ENV', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_apple_crypto_development_env. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_APPLE_CRYPTO_ENV', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_apple_crypto_env. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_APPLE_CRYPTO_MAINTENANCE_ENV', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_apple_crypto_maintenance_env. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_APPLE_CRYPTO_PRODUCTION_ENV', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_apple_crypto_production_env. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_APPLE_CRYPTO_QOS', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_apple_crypto_qos. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_APPLE_CRYPTO_TEST_ENV', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_apple_crypto_test_env. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_APPLE_CRYPTO_TIER0_QOS', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_apple_crypto_tier0_qos. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_APPLE_CRYPTO_TIER1_QOS', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_apple_crypto_tier1_qos. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_APPLE_CRYPTO_TIER2_QOS', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_apple_crypto_tier2_qos. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_APPLE_CRYPTO_TIER3_QOS', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_apple_crypto_tier3_qos. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_APPLE_ICHAT_ENCRYPTION', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_apple_ichat_encryption. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_APPLE_ICHAT_SIGNING', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_apple_ichat_signing. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_APPLE_RESOURCE_SIGNING', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_apple_resource_signing. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_APPLE_SOFTWARE_UPDATE_SIGNING', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_apple_software_update_signing. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_APPLE_SYSTEM_IDENTITY', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_apple_system_identity. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_CLIENT_AUTH', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_client_auth. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_CODE_SIGNING', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_code_signing. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_DVCS', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_dvcs. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_EAP_OVER_LAN', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_eap_over_lan. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_EAP_OVER_PPP', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_eap_over_ppp. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_EMAIL_PROTECTION', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_email_protection. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_IPSEC_END_SYSTEM', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_ipsec_end_system. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_IPSEC_TUNNEL', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_ipsec_tunnel. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_IPSEC_USER', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_ipsec_user. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_CA_EXCHANGE', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_ca_exchange. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_CERT_TRUST_LIST_SIGNING', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_cert_trust_list_signing. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_CSP_SIGNATURE', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_csp_signature. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_DOCUMENT_SIGNING', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_document_signing. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_DRM', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_drm. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_DRM_INDIVIDUALIZATION', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_drm_individualization. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_EFS_RECOVERY', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_efs_recovery. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_EMBEDDED_NT_CRYPTO', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_embedded_nt_crypto. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_ENCRYPTED_FILE_SYSTEM', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_encrypted_file_system. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_ENROLLMENT_AGENT', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_enrollment_agent. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_KERNEL_MODE_CODE_SIGNING', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_kernel_mode_code_signing. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_KEY_RECOVERY_21', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_key_recovery_21. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_KEY_RECOVERY_3', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_key_recovery_3. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_LICENSE_SERVER', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_license_server. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_LICENSES', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_licenses. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_LIFETIME_SIGNING', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_lifetime_signing. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_MOBILE_DEVICE_SOFTWARE', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_mobile_device_software. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_NT5_CRYPTO', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_nt5_crypto. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_OEM_WHQL_CRYPTO', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_oem_whql_crypto. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_QUALIFIED_SUBORDINATE', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_qualified_subordinate. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_ROOT_LIST_SIGNER', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_root_list_signer. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_SERVER_GATED_CRYPTO', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_server_gated_crypto. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_SGC_SERIALIZED', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_sgc_serialized. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_SMART_DISPLAY', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_smart_display. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_SMARTCARD_LOGON', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_smartcard_logon. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_SYSTEM_HEALTH', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_system_health. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_SYSTEM_HEALTH_LOOPHOLE', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_system_health_loophole. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_TIMESTAMP_SIGNING', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_timestamp_signing. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_MICROSOFT_WHQL_CRYPTO', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_microsoft_whql_crypto. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_NETSCAPE_SERVER_GATED_CRYPTO', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_netscape_server_gated_crypto. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_OCSP_SIGNING', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_ocsp_signing. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_SBGP_CERT_AA_SERVICE_AUTH', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_sbgp_cert_aa_service_auth. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_SERVER_AUTH', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_server_auth. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_TIME_STAMPING', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_time_stamping. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_UNKNOWN', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_unknown. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_EXTENDED_KEY_USAGE_VALUE', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_extended_key_usage_value. what is the extended key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_KEY_USAGE_CERTIFICATE_SIGN', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_key_usage_certificate_sign. what is the key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_KEY_USAGE_CONTENT_COMMITMENT', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_key_usage_content_commitment. what is the key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_KEY_USAGE_CRL_SIGN', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_key_usage_crl_sign. what is the key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_KEY_USAGE_DATA_ENCIPHERMENT', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_key_usage_data_encipherment. what is the key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_KEY_USAGE_DECIPHER_ONLY', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_key_usage_decipher_only. what is the key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_KEY_USAGE_DIGITAL_SIGNATURE', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_key_usage_digital_signature. what is the key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_KEY_USAGE_ENCIPHER_ONLY', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_key_usage_encipher_only. what is the key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_KEY_USAGE_KEY_AGREEMENT', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_key_usage_key_agreement. what is the key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_KEY_USAGE_KEY_ENCIPHERMENT', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_key_usage_key_encipherment. what is the key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_EXTENSIONS_KEY_USAGE_UNKNOWN', 'description': 'Flag : p443_https_tls_certificate_parsed_extensions_key_usage_unknown. what is the key uasge?.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_VALIDATION_LEVEL_DV', 'description': 'is p443_https_tls_certificate_parsed_validation_level dv?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_VALIDATION_LEVEL_OV', 'description': 'is p443_https_tls_certificate_parsed_validation_level ov?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_VALIDATION_LEVEL_EV', 'description': 'is p443_https_tls_certificate_parsed_validation_level ev?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 1.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CERTIFICATE_PARSED_VALIDATION_LEVEL_UNKNOWN', 'description': 'is p443_https_tls_certificate_parsed_validation_level unknown?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_TLS_CERT_PAST_VALID_END_DATE', 'description': 'was the certificate expired at scan time?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_TLS_CERT_PARSED_UNKNOWN_EXT_CRITICAL', 'description': 'Certificates should be rejected if they have critical extensions the validator does not recognize.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CIPHER_SUITE_NAME_TLS_DHE_RSA_WITH_AES_128_GCM_S', 'description': 'is p443_https_tls_cipher_suite_name tls_dhe_rsa_with_aes_128_gcm_sha256?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CIPHER_SUITE_NAME_TLS_ECDHE_RSA_WITH_AES_128_GCM', 'description': 'is p443_https_tls_cipher_suite_name tls_ecdhe_rsa_with_aes_128_gcm_sha256?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CIPHER_SUITE_NAME_TLS_DHE_RSA_WITH_AES_256_CBC_S', 'description': 'is p443_https_tls_cipher_suite_name tls_dhe_rsa_with_aes_256_cbc_sha?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 1.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CIPHER_SUITE_NAME_TLS_ECDHE_RSA_WITH_AES_256_CBC', 'description': 'is p443_https_tls_cipher_suite_name tls_ecdhe_rsa_with_aes_256_cbc_sha?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CIPHER_SUITE_NAME_TLS_ECDHE_RSA_WITH_CHACHA20_PO', 'description': 'is p443_https_tls_cipher_suite_name tls_ecdhe_rsa_with_chacha20_poly1305_sha256?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CIPHER_SUITE_NAME_TLS_ECDHE_ECDSA_WITH_AES_128_G', 'description': 'is p443_https_tls_cipher_suite_name tls_ecdhe_ecdsa_with_aes_128_gcm_sha256?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CIPHER_SUITE_NAME_TLS_RSA_WITH_AES_256_CBC_SHA', 'description': 'is p443_https_tls_cipher_suite_name tls_rsa_with_aes_256_cbc_sha?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CIPHER_SUITE_NAME_TLS_RSA_WITH_AES_128_GCM_SHA25', 'description': 'is p443_https_tls_cipher_suite_name tls_rsa_with_aes_128_gcm_sha256?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CIPHER_SUITE_NAME_UNKNOWN', 'description': 'is p443_https_tls_cipher_suite_name unknown?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CIPHER_SUITE_NAME_TLS_RSA_WITH_RC4_128_SHA', 'description': 'is p443_https_tls_cipher_suite_name tls_rsa_with_rc4_128_sha?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_CIPHER_SUITE_NAME_TLS_RSA_WITH_AES_128_CBC_SHA', 'description': 'is p443_https_tls_cipher_suite_name tls_rsa_with_aes_128_cbc_sha?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_SERVER_RSA_LENGTH', 'description': 'Bit-length of modulus.'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_DH_PARAM_CLIENT_PRIVATE', 'description': 'length of dh param client_private on p443_https_tls_server_key_exchange'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_DH_PARAM_SERVER_PRIVATE', 'description': 'length of dh param server_private on p443_https_tls_server_key_exchange'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_DH_PARAM_GENERATOR', 'description': 'length of dh param generator on p443_https_tls_server_key_exchange'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_DH_PARAM_PRIME', 'description': 'length of dh param prime on p443_https_tls_server_key_exchange'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_DH_PARAM_SESSION_KEY', 'description': 'length of dh param session_key on p443_https_tls_server_key_exchange'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_DH_PARAM_CLIENT_PUBLIC', 'description': 'length of dh param client_public on p443_https_tls_server_key_exchange'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_DH_PARAM_SERVER_PUBLIC', 'description': 'length of dh param server_public on p443_https_tls_server_key_exchange'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_ECDH_PARAM_CLIENT_PRIVATE', 'description': 'length of ecdh param client_private on p443_https_tls_server_key_exchange'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_ECDH_PARAM_SERVER_PRIVATE', 'description': 'length of ecdh param server_private on p443_https_tls_server_key_exchange'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 23.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_ECDH_PARAM_CURVE_ID', 'description': 'length of ecdh param curve_id on p443_https_tls_server_key_exchange'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_ECDH_PARAM_CLIENT_PUBLIC_X', 'description': 'length of ecdh param client_public_x on p443_https_tls_server_key_exchange'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_ECDH_PARAM_CLIENT_PUBLIC_Y', 'description': 'length of ecdh param client_public_y on p443_https_tls_server_key_exchange'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_ECDH_PARAM_SERVER_PUBLIC_X', 'description': 'length of ecdh param server_public_x on p443_https_tls_server_key_exchange'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_ECDH_PARAM_SERVER_PUBLIC_Y', 'description': 'length of ecdh param server_public_y on p443_https_tls_server_key_exchange'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_OCSP_STAPLING', 'description': 'Flag : p443_https_tls_ocsp_stapling. .'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_SCTS_VERSION', 'description': 'Flag : p443_https_tls_scts_version. .'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_SECURE_RENEGOTIATION', 'description': 'Flag : p443_https_tls_secure_renegotiation. .'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 192.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_SESSION_TICKET_LENGTH', 'description': 'Flag : p443_https_tls_session_ticket_length. .'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 300.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_SESSION_TICKET_LIFETIME_HINT', 'description': 'Flag : p443_https_tls_session_ticket_lifetime_hint. .'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 1.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_SIGNATURE_VALID', 'description': 'Flag : p443_https_tls_signature_valid. .'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_VALIDATION_MATCHES_DOMAIN', 'description': 'Flag : p443_https_tls_validation_matches_domain. .'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_VALIDATION_BROWSER_TRUSTED', 'description': 'Flag : p443_https_tls_validation_browser_trusted. .'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_VERSION_TLSV1.1', 'description': 'is p443_https_tls_version tlsv1.1?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_VERSION_TLSV1.0', 'description': 'is p443_https_tls_version tlsv1.0?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 1.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_VERSION_TLSV1.2', 'description': 'is p443_https_tls_version tlsv1.2?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_VERSION_SSLV3', 'description': 'is p443_https_tls_version sslv3?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P443_HTTPS_TLS_VERSION_UNKNOWN', 'description': 'is p443_https_tls_version unknown?'}])


if __name__ == "__main__":
    main()