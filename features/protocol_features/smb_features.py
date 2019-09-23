from scripts.const import ports_and_protocols
from scripts.analyze_data.lib.feature import Feature
from scripts.utils import recurse_machine_fields, get_field
import json


def meta_features(machine, field_prefix):
    res = [
            Feature(as_obj={
                '_id': '{}_SMBv1_SUPPORT'.format(field_prefix),
                '_type': 'MACHINE',
                'expansion_safe': True,
                'value': get_field(machine,
                                   '{}_smbv1_support'.format(field_prefix),
                                   t='int'),
                'description': 'is {} smb v1 supported?'.format(field_prefix)
            })
    ]

    return res


def extract(machine, args):
    res = []
    protocol = 'smb'
    ports = [p for c in ports_and_protocols
             if c[0] == protocol
             for p in c[1]]
    for port in sorted(ports, reverse=True):
        field_prefix = 'p{}_{}_banner'.format(port, protocol)
        res += meta_features(machine, field_prefix)
    return res


def main():
    machine = recurse_machine_fields(json.loads("""{"ip":"207.155.50.170","tags":["ftp","dns","http","ssh","embedded","Update utility","telnet","smb"],"updated_at":"2019-03-22T08:53:17+00:00","autonomous_system":{"description":"WINDSTREAM - Windstream Communications LLC","rir":"unknown","routed_prefix":"207.155.0.0/17","country_code":"US","path":[7018,701,7029],"asn":7029,"name":"WINDSTREAM - Windstream Communications LLC"},"location":{"country":"United States","longitude":-106.0717,"registered_country":"United States","registered_country_code":"US","country_code":"US","latitude":35.9872,"continent":"North America","province":"New Mexico","city":"Espaola","postal_code":"87532","timezone":"America/Denver"},"ports":[80,53,22,23,445,21],"protocols":["80/http","445/smb","23/telnet","21/ftp","53/dns","22/ssh"],"p21":{"ftp":{"banner":{"banner":"220 Ftp firmware update utility","metadata":{}}}},"p22":{"ssh":{"v2":{"server_host_key":{"fingerprint_sha256":"1dba325e7968eb634ae506274d74fcfeb2b2c0f1eb4a8caf55f28c40868f9ca7","key_algorithm":"ssh-rsa","rsa_public_key":{"length":1040,"modulus":"4fo0awPA0luBLo/VzR+MVXWvoadRP78capCxdZO90rFAPZfvc9xZvJL3n1+x9H9gXIN7fZqst9ybRrlaqvPUvR8p+bZkn0gVWPydDTPVlkqmzMOhlMArxWavlKIdn7q2O3QEK31cPe5Lnw50cg2yUDZ5/KAshWlsndeHdju8A6wsw==","exponent":65537}},"support":{"host_key_algorithms":["ssh-rsa"],"first_kex_follows":false,"kex_algorithms":["curve25519-sha256@libssh.org","ecdh-sha2-nistp521","ecdh-sha2-nistp384","ecdh-sha2-nistp256","diffie-hellman-group1-sha1","diffie-hellman-group14-sha1","kexguess2@matt.ucc.asn.au"],"server_to_client":{"ciphers":["aes128-ctr","3des-ctr","aes256-ctr","aes128-cbc","3des-cbc","aes256-cbc","twofish256-cbc","twofish-cbc","twofish128-cbc"],"macs":["hmac-sha1-96","hmac-sha1","hmac-md5"],"compressions":["none"]},"client_to_server":{"ciphers":["aes128-ctr","3des-ctr","aes256-ctr","aes128-cbc","3des-cbc","aes256-cbc","twofish256-cbc","twofish-cbc","twofish128-cbc"],"macs":["hmac-sha1-96","hmac-sha1","hmac-md5"],"compressions":["none"]}},"selected":{"host_key_algorithm":"ssh-rsa","client_to_server":{"mac":"hmac-sha1","cipher":"aes128-ctr","compression":"none"},"kex_algorithm":"curve25519-sha256@libssh.org","server_to_client":{"mac":"hmac-sha1","cipher":"aes128-ctr","compression":"none"}},"banner":{"raw":"SSH-2.0-dropbear_2014.65","version":"2.0","software":"dropbear_2014.65"},"metadata":{"product":"Dropbear SSH","version":"2014.65","description":"Dropbear SSH 2014.65"}}}},"p23":{"telnet":{"banner":{"will":[{"name":"Echo","value":1},{"name":"Suppress Go Ahead","value":3}],"do":[{"name":"Echo","value":1},{"name":"Remote Flow Control","value":33}],"support":true,"banner":"BCM963268 Broadband RouterLogin:","metadata":{}}}},"p53":{"dns":{"lookup":{"resolves_correctly":true,"support":true,"open_resolver":true,"answers":[{"type":"A","name":"c.afekv.com","response":"192.150.186.1"},{"type":"A","name":"c.afekv.com","response":"173.194.101.195"}],"errors":false,"additionals":[],"questions":[{"type":"A","name":"c.afekv.com"}],"authorities":[],"metadata":{}}}},"p80":{"http":{"get":{"headers":{"unknown":[{"value":"Tue, 19 Mar 2019 15:27:51 GMT","key":"date"}],"www_authenticate":"Basic realm=Broadband Router","cache_control":"no-cache","content_type":"text/html","server":"micro_httpd"},"status_code":401,"title":"401 Unauthorized","status_line":"401 Unauthorized","body_sha256":"19f02740a6a603ff5f8c2bf6901d94546cd065c74e8da850bd39d19e1e6408d9","metadata":{"product":"micro_httpd","description":"micro_httpd"}}}},"p445":{"smb":{"banner":{"smbv1_support":true,"metadata":{}}}}}"""))
    args = {
        'domain': 'verifone.com',
        'c_id': 'verifone',
        'date': '20170215'
    }
    result = extract(machine, args)
    # print([r.get_all() for r in result])
    from scripts.utils import compare_feature_output
    compare_feature_output([r.get_all() for r in result],[{'_type': 'MACHINE', 'descriptive': False, 'value': 1.0, 'expansion_safe': True, '_id': 'P445_SMB_BANNER_SMBV1_SUPPORT', 'description': 'is p445_smb_banner smb v1 supported?'}])


if __name__ == "__main__":
    main()