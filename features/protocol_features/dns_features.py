from u_utils import common_models, list_of_bool_int_fields

dns_server_list = [s.lower() for s in [
    'AnswerX',
    'BIND',
    'PowerDNS',
    'djbdns',
    'dbndns',
    'pdnsd',
    'MaraDNS',
    'Posadis',
    'Unbound',
    'Dnsmasq',
    'NSD',
    'Knot',
    'dnrd',
    'gdnsd',
    'YADIFA',
    'yaku-ns',
    'Microsoft',
    'Simple',
    'ANS',
    'Vantio',
    'Blast',
    'Secure64',
    'Technitium',
    'unknown'
]]


def dns_meta_features(m, field_prefix):
    res = []
    res += common_models(m, field_prefix, dns_server_list)
    res += list_of_bool_int_fields(machine=m, parent_field=field_prefix, child_fields=['errors',
                                                                                       'support',
                                                                                       'open_resolver',
                                                                                       'resolves_correctly'],
                                   description='pretty self '
                                               'explanatory, no? '
                                               'then look at censys '
                                               'docs :)')
    return res


def extract(machine, args):
    res = []
    field_prefix = 'p53_dns_lookup'
    res += dns_meta_features(machine, field_prefix=field_prefix)
    return res


def main():
    import json
    from scripts.utils import recurse_machine_fields
    machine = recurse_machine_fields(json.loads(r"""{"tags":["cwmp","dns"],"ip":"74.222.111.178","updated_at":"2019-03-22T08:06:19+00:00","ports":[7547,53],"location":{"province":"South Carolina","city":"Sumter","country":"United States","longitude":-80.3587,"registered_country":"United States","registered_country_code":"US","country_code":"US","latitude":33.9133,"timezone":"America/New_York","continent":"North America","postal_code":"29150"},"autonomous_system":{"description":"FTC-INET - Farmers Telephone Cooperative, Inc.","rir":"unknown","routed_prefix":"74.222.96.0/20","country_code":"US","path":[6939,2711,20257,20257,20257,20257,20257,20257,20257,20257,20257],"asn":20257,"name":"FTC-INET - Farmers Telephone Cooperative, Inc."},"protocols":["7547/cwmp","53/dns"],"p53":{"dns":{"lookup":{"resolves_correctly":true,"support":true,"open_resolver":true,"answers":[{"type":"A","name":"c.afekv.com","response":"192.150.186.1"},{"type":"A","name":"c.afekv.com","response":"69.80.95.222"}],"errors":false,"additionals":[],"questions":[{"type":"A","name":"c.afekv.com"}],"authorities":[],"metadata":{}}}},"p7547":{"cwmp":{"get":{"headers":{"content_length":"0","unknown":[{"value":"Wed, 20 Mar 2019 02:49:05 GMT","key":"date"}],"content_security_policy":"frame-ancestors 'self'","x_frame_options":"sameorigin"},"status_code":400,"status_line":"400 Bad Request","metadata":{}}}}}"""))
    args = {
        'domain': 'verifone.com',
        'c_id': 'verifone',
        'date': '20170215'
    }
    result = extract(machine, args)
    # print([r.get_all() for r in result])
    from scripts.utils import compare_feature_output
    compare_feature_output([r.get_all() for r in result], [{'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_ANSWERX', 'description': 'is p53_dns_lookup running answerx?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_BIND', 'description': 'is p53_dns_lookup running bind?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_POWERDNS', 'description': 'is p53_dns_lookup running powerdns?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_DJBDNS', 'description': 'is p53_dns_lookup running djbdns?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_DBNDNS', 'description': 'is p53_dns_lookup running dbndns?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_PDNSD', 'description': 'is p53_dns_lookup running pdnsd?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_MARADNS', 'description': 'is p53_dns_lookup running maradns?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_POSADIS', 'description': 'is p53_dns_lookup running posadis?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_UNBOUND', 'description': 'is p53_dns_lookup running unbound?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_DNSMASQ', 'description': 'is p53_dns_lookup running dnsmasq?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_NSD', 'description': 'is p53_dns_lookup running nsd?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_KNOT', 'description': 'is p53_dns_lookup running knot?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_DNRD', 'description': 'is p53_dns_lookup running dnrd?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_GDNSD', 'description': 'is p53_dns_lookup running gdnsd?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_YADIFA', 'description': 'is p53_dns_lookup running yadifa?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_YAKU-NS', 'description': 'is p53_dns_lookup running yaku-ns?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_MICROSOFT', 'description': 'is p53_dns_lookup running microsoft?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_SIMPLE', 'description': 'is p53_dns_lookup running simple?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_ANS', 'description': 'is p53_dns_lookup running ans?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_VANTIO', 'description': 'is p53_dns_lookup running vantio?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_BLAST', 'description': 'is p53_dns_lookup running blast?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_SECURE64', 'description': 'is p53_dns_lookup running secure64?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_TECHNITIUM', 'description': 'is p53_dns_lookup running technitium?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RUNNING_UNKNOWN', 'description': 'is p53_dns_lookup running unknown?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_ERRORS', 'description': 'Flag : p53_dns_lookup_errors. pretty self explanatory, no? then look at censys docs :).'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 1.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_SUPPORT', 'description': 'Flag : p53_dns_lookup_support. pretty self explanatory, no? then look at censys docs :).'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 1.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_OPEN_RESOLVER', 'description': 'Flag : p53_dns_lookup_open_resolver. pretty self explanatory, no? then look at censys docs :).'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 1.0, 'expansion_safe': True, '_id': 'P53_DNS_LOOKUP_RESOLVES_CORRECTLY', 'description': 'Flag : p53_dns_lookup_resolves_correctly. pretty self explanatory, no? then look at censys docs :).'}])


if __name__ == "__main__":
    main()
