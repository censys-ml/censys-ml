from scripts.const import ports_and_protocols
from scripts.analyze_data.lib.feature import Feature
from scripts.utils import recurse_machine_fields, get_field
import json
from u_utils import map_of_enumerated_fields

copyrights = [
    '02263',
    '02545',
    '02550',
    '02650',
    '03040',
    '03180',
    'operation',
    'original insevis equipment',
    'original schneider electri',
    'original siemens equipment'
]
cpu_profiles = ['chiajna', 'hong kong', 'japan', 'singapore', 'united states']
firmwares = [
    '32.81.45  29.05.2017',
    '6es7954-8lc02-0aa0',
    '6es7954-8lc03-0aa0',
    '6es7954-8le02-0aa0',
    '6es7954-8le03-0aa0',
    '6es7954-8lf02-0aa0',
    '6es7954-8lf03-0aa0',
    '6nh7 800-4ba00',
    'boot loader']

memory_serial_numbers = [
    '01.21.2011 8sd23e',
    '03.12.2010 8sd23e',
    '07.28.2012 8sd23e',
    '09.24.2013 8sd23e'
]
modules = [
    'cpu 312c',
    'cpu 313c',
    'cpu 314c',
    'cpu 315-2 dp',
    'cpu 315-2 pn/dp',
    'im151-8 pn/dp cpu',
    'pc35xv',
    'plc_1',
    'siemens, simatic, s7-200'
]
module_ids = [
    '6es7 151',
    '6es7 212',
    '6es7 214',
    '6es7 215',
    '6es7 315',
]
oem_ids = ["Eldorado do Sul / RS"]
plant_ids = [
    '-ss2',
    'ber-pa srl spazio m4',
    'city water',
    'cp xxxyyy',
    'doe water service',
    'dubai factory',
    'e42 -esperssen',
    'mouser factory',
    'wka'
]
reserved_for_oss = [
    'cpu',
    'im151',
    'mmc',
    'smc'
]
serial_numbers = [
    '88111222',
    's c-b3uk38432011',
    's c-b4u205172011',
    's c-b5tt22392011',
    's c-c2ur28922012',
    's c-c7vf79012012',
    's c-d5ue91052013',
    's c-ensd47172014',
    's c-f5s936322015',
    's q-e9u046122014'
]
systems = [
    'ie-721',
    'base dir',
    'cpu 313',
    'et 200',
    'heizhaus',
    'pc35xv',
    'plc',
    'r51.0 thies',
    's7-300',
    's71500/et200',
    's7300/et200',
    'simatic',
    'sinumerik',
    'technodrome'
]


def enumerated_fields(machine, field_prefix):
    res = []
    _map = {
        '{}_copyright'.format(field_prefix): copyrights,
        '{}_cpu_profile'.format(field_prefix): cpu_profiles,
        '{}_firmware'.format(field_prefix): firmwares,
        '{}_memory_serial_number'.format(field_prefix): memory_serial_numbers,
        '{}_module'.format(field_prefix): modules,
        '{}_module_id'.format(field_prefix): module_ids,
        '{}_module_type'.format(field_prefix): modules,
        '{}_oem_id'.format(field_prefix): oem_ids,
        '{}_plant_id'.format(field_prefix): plant_ids,
        '{}_reserved_for_os'.format(field_prefix): reserved_for_oss,
        '{}_serial_number'.format(field_prefix): serial_numbers,
        '{}_system'.format(field_prefix): systems,
    }
    res += map_of_enumerated_fields(machine, _map)
    return res


def meta_features(machine, field_prefix):
    res = [
            Feature(as_obj={
                '_id': '{}_SUPPORT'.format(field_prefix),
                '_type': 'MACHINE',
                'expansion_safe': True,
                'value': get_field(machine,
                                   '{}_support'.format(field_prefix),
                                   t='int'),
                'description': 'is {} supported?'.format(field_prefix)
            })
    ]
    return res


def extract(machine, args):
    res = []
    protocol = 's7'
    ports = [p for c in ports_and_protocols
             if c[0] == protocol
             for p in c[1]]
    for port in sorted(ports, reverse=True):
        field_prefix = 'p{}_{}_szl'.format(port, protocol)
        res += meta_features(machine, field_prefix)
        res += enumerated_fields(machine, field_prefix)

    return res


def main():
    machine = recurse_machine_fields(json.loads("""{"ip":"18.224.135.86","tags":["http","s7","ssh","scada"],"updated_at":"2019-03-21T08:29:07+00:00","autonomous_system":{"description":"AMAZON-02 - Amazon.com, Inc.","rir":"unknown","routed_prefix":"18.224.0.0/14","country_code":"US","path":[11537,16509],"asn":16509,"name":"AMAZON-02 - Amazon.com, Inc."},"location":{"country":"United States","longitude":-83.0235,"registered_country":"United States","registered_country_code":"US","country_code":"US","latitude":39.9653,"continent":"North America","province":"Ohio","city":"Columbus","postal_code":"43215","timezone":"America/New_York"},"ports":[80,22,102],"protocols":["80/http","22/ssh","102/s7"],"p22":{"ssh":{"v2":{"server_host_key":{"fingerprint_sha256":"8600803b9b47d45397c6ad11eaa3d554468d807369ec201a85a9d5d6b88e12e9","key_algorithm":"ecdsa-sha2-nistp256","ecdsa_public_key":{"b":"WsY12Ko6k+ez671VdpiGvGUdBrDMU7D2O848PifSYEs=","curve":"P-256","gy":"T+NC4v4af5uO5+tKfA+eFivOM1drMV7Oy7ZAaDe/UfU=","n":"/////wAAAAD//////////7zm+q2nF56E87nKwvxjJVE=","p":"/////wAAAAEAAAAAAAAAAAAAAAD///////////////8=","length":256,"y":"wW0aEPSeJi3VVGje1vOBCZvUEIElP6zBOa4TpS/PszI=","x":"kZRBey2aMcMfwDgqmY+/MXemWdJR1flJ2qE7thk8dlg=","gx":"axfR8uEsQkf4vOblY6RA8ncDfYEt6zOg9KE5RdiYwpY="}},"support":{"host_key_algorithms":["ssh-rsa","rsa-sha2-512","rsa-sha2-256","ecdsa-sha2-nistp256","ssh-ed25519"],"first_kex_follows":false,"kex_algorithms":["curve25519-sha256@libssh.org","ecdh-sha2-nistp256","ecdh-sha2-nistp384","ecdh-sha2-nistp521","diffie-hellman-group-exchange-sha256","diffie-hellman-group14-sha1"],"server_to_client":{"ciphers":["chacha20-poly1305@openssh.com","aes128-ctr","aes192-ctr","aes256-ctr","aes128-gcm@openssh.com","aes256-gcm@openssh.com"],"macs":["umac-64-etm@openssh.com","umac-128-etm@openssh.com","hmac-sha2-256-etm@openssh.com","hmac-sha2-512-etm@openssh.com","hmac-sha1-etm@openssh.com","umac-64@openssh.com","umac-128@openssh.com","hmac-sha2-256","hmac-sha2-512","hmac-sha1"],"compressions":["none","zlib@openssh.com"]},"client_to_server":{"ciphers":["chacha20-poly1305@openssh.com","aes128-ctr","aes192-ctr","aes256-ctr","aes128-gcm@openssh.com","aes256-gcm@openssh.com"],"macs":["umac-64-etm@openssh.com","umac-128-etm@openssh.com","hmac-sha2-256-etm@openssh.com","hmac-sha2-512-etm@openssh.com","hmac-sha1-etm@openssh.com","umac-64@openssh.com","umac-128@openssh.com","hmac-sha2-256","hmac-sha2-512","hmac-sha1"],"compressions":["none","zlib@openssh.com"]}},"selected":{"host_key_algorithm":"ecdsa-sha2-nistp256","client_to_server":{"mac":"hmac-sha2-256","cipher":"aes128-ctr","compression":"none"},"kex_algorithm":"curve25519-sha256@libssh.org","server_to_client":{"mac":"hmac-sha2-256","cipher":"aes128-ctr","compression":"none"}},"banner":{"comment":"Ubuntu-4ubuntu2.8","raw":"SSH-2.0-OpenSSH_7.2p2 Ubuntu-4ubuntu2.8","version":"2.0","software":"OpenSSH_7.2p2"},"metadata":{"product":"OpenSSH","version":"7.2p2","description":"OpenSSH 7.2p2"}}}},"p80":{"http":{"get":{"headers":{"content_length":"578","unknown":[{"value":"Tue, 19 Mar 2019 02:59:17 GMT","key":"date"}],"last_modified":"Tue, 19 May 1993 09:00:00 GMT","content_type":"text/html"},"status_code":200,"title":"Overview - Siemens, SIMATIC, S7-200","status_line":"200 OK","body_sha256":"bbb5af04e4271cb1342ba723f961bf36b026ad133dec16838b4d013d27429dc2","metadata":{}}}},"p102":{"s7":{"szl":{"copyright":"Original Siemens Equipment","plant_id":"Mouser Factory","support":true,"system":"Technodrome","module":"Siemens, SIMATIC, S7-200","module_type":"IM151-8 PN/DP CPU","serial_number":"88111222","metadata":{}}}},"metadata":{"os":"Ubuntu","os_description":"Ubuntu"}}"""))
    args = {
        'domain': 'verifone.com',
        'c_id': 'verifone',
        'date': '20170215'
    }
    result = extract(machine, args)
    # print([r.get_all() for r in result])
    from scripts.utils import compare_feature_output
    compare_feature_output([r.get_all() for r in result],[{'_type': 'MACHINE', 'descriptive': False, 'value': 1.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SUPPORT', 'description': 'is p102_s7_szl supported?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_CPU_PROFILE_SINGAPORE', 'description': 'is p102_s7_szl_cpu_profile singapore?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_CPU_PROFILE_UNKNOWN', 'description': 'is p102_s7_szl_cpu_profile unknown?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_CPU_PROFILE_CHIAJNA', 'description': 'is p102_s7_szl_cpu_profile chiajna?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_CPU_PROFILE_UNITED_STATES', 'description': 'is p102_s7_szl_cpu_profile united states?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_CPU_PROFILE_JAPAN', 'description': 'is p102_s7_szl_cpu_profile japan?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_CPU_PROFILE_HONG_KONG', 'description': 'is p102_s7_szl_cpu_profile hong kong?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_ID_UNKNOWN', 'description': 'is p102_s7_szl_module_id unknown?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_ID_6ES7_214', 'description': 'is p102_s7_szl_module_id 6es7 214?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_ID_6ES7_215', 'description': 'is p102_s7_szl_module_id 6es7 215?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_ID_6ES7_151', 'description': 'is p102_s7_szl_module_id 6es7 151?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_ID_6ES7_315', 'description': 'is p102_s7_szl_module_id 6es7 315?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_ID_6ES7_212', 'description': 'is p102_s7_szl_module_id 6es7 212?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_COPYRIGHT_ORIGINAL_INSEVIS_EQUIPMENT', 'description': 'is p102_s7_szl_copyright original insevis equipment?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_COPYRIGHT_03180', 'description': 'is p102_s7_szl_copyright 03180?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_COPYRIGHT_ORIGINAL_SCHNEIDER_ELECTRI', 'description': 'is p102_s7_szl_copyright original schneider electri?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_COPYRIGHT_02263', 'description': 'is p102_s7_szl_copyright 02263?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_COPYRIGHT_UNKNOWN', 'description': 'is p102_s7_szl_copyright unknown?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_COPYRIGHT_02550', 'description': 'is p102_s7_szl_copyright 02550?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_COPYRIGHT_02545', 'description': 'is p102_s7_szl_copyright 02545?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_COPYRIGHT_03040', 'description': 'is p102_s7_szl_copyright 03040?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 1.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_COPYRIGHT_ORIGINAL_SIEMENS_EQUIPMENT', 'description': 'is p102_s7_szl_copyright original siemens equipment?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_COPYRIGHT_02650', 'description': 'is p102_s7_szl_copyright 02650?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_COPYRIGHT_OPERATION', 'description': 'is p102_s7_szl_copyright operation?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_FIRMWARE_6NH7_800-4BA00', 'description': 'is p102_s7_szl_firmware 6nh7 800-4ba00?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_FIRMWARE_UNKNOWN', 'description': 'is p102_s7_szl_firmware unknown?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_FIRMWARE_BOOT_LOADER', 'description': 'is p102_s7_szl_firmware boot loader?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_FIRMWARE_6ES7954-8LC02-0AA0', 'description': 'is p102_s7_szl_firmware 6es7954-8lc02-0aa0?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_FIRMWARE_6ES7954-8LF03-0AA0', 'description': 'is p102_s7_szl_firmware 6es7954-8lf03-0aa0?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_FIRMWARE_6ES7954-8LE03-0AA0', 'description': 'is p102_s7_szl_firmware 6es7954-8le03-0aa0?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_FIRMWARE_6ES7954-8LE02-0AA0', 'description': 'is p102_s7_szl_firmware 6es7954-8le02-0aa0?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_FIRMWARE_32.81.45__29.05.2017', 'description': 'is p102_s7_szl_firmware 32.81.45  29.05.2017?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_FIRMWARE_6ES7954-8LC03-0AA0', 'description': 'is p102_s7_szl_firmware 6es7954-8lc03-0aa0?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_FIRMWARE_6ES7954-8LF02-0AA0', 'description': 'is p102_s7_szl_firmware 6es7954-8lf02-0aa0?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_RESERVED_FOR_OS_IM151', 'description': 'is p102_s7_szl_reserved_for_os im151?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_RESERVED_FOR_OS_UNKNOWN', 'description': 'is p102_s7_szl_reserved_for_os unknown?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_RESERVED_FOR_OS_SMC', 'description': 'is p102_s7_szl_reserved_for_os smc?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_RESERVED_FOR_OS_CPU', 'description': 'is p102_s7_szl_reserved_for_os cpu?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_RESERVED_FOR_OS_MMC', 'description': 'is p102_s7_szl_reserved_for_os mmc?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_PLANT_ID_WKA', 'description': 'is p102_s7_szl_plant_id wka?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_PLANT_ID_UNKNOWN', 'description': 'is p102_s7_szl_plant_id unknown?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_PLANT_ID_E42_-ESPERSSEN', 'description': 'is p102_s7_szl_plant_id e42 -esperssen?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_PLANT_ID_DOE_WATER_SERVICE', 'description': 'is p102_s7_szl_plant_id doe water service?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_PLANT_ID_CITY_WATER', 'description': 'is p102_s7_szl_plant_id city water?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_PLANT_ID_BER-PA_SRL_SPAZIO_M4', 'description': 'is p102_s7_szl_plant_id ber-pa srl spazio m4?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_PLANT_ID_DUBAI_FACTORY', 'description': 'is p102_s7_szl_plant_id dubai factory?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_PLANT_ID_CP_XXXYYY', 'description': 'is p102_s7_szl_plant_id cp xxxyyy?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_PLANT_ID_-SS2', 'description': 'is p102_s7_szl_plant_id -ss2?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 1.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_PLANT_ID_MOUSER_FACTORY', 'description': 'is p102_s7_szl_plant_id mouser factory?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SERIAL_NUMBER_S_C-F5S936322015', 'description': 'is p102_s7_szl_serial_number s c-f5s936322015?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SERIAL_NUMBER_S_C-B4U205172011', 'description': 'is p102_s7_szl_serial_number s c-b4u205172011?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SERIAL_NUMBER_UNKNOWN', 'description': 'is p102_s7_szl_serial_number unknown?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SERIAL_NUMBER_S_C-ENSD47172014', 'description': 'is p102_s7_szl_serial_number s c-ensd47172014?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SERIAL_NUMBER_S_C-B5TT22392011', 'description': 'is p102_s7_szl_serial_number s c-b5tt22392011?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 1.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SERIAL_NUMBER_88111222', 'description': 'is p102_s7_szl_serial_number 88111222?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SERIAL_NUMBER_S_C-B3UK38432011', 'description': 'is p102_s7_szl_serial_number s c-b3uk38432011?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SERIAL_NUMBER_S_C-C2UR28922012', 'description': 'is p102_s7_szl_serial_number s c-c2ur28922012?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SERIAL_NUMBER_S_C-D5UE91052013', 'description': 'is p102_s7_szl_serial_number s c-d5ue91052013?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SERIAL_NUMBER_S_Q-E9U046122014', 'description': 'is p102_s7_szl_serial_number s q-e9u046122014?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SERIAL_NUMBER_S_C-C7VF79012012', 'description': 'is p102_s7_szl_serial_number s c-c7vf79012012?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 1.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_SIEMENS,_SIMATIC,_S7-200', 'description': 'is p102_s7_szl_module siemens, simatic, s7-200?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_CPU_315-2_PN/DP', 'description': 'is p102_s7_szl_module cpu 315-2 pn/dp?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_CPU_313C', 'description': 'is p102_s7_szl_module cpu 313c?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_UNKNOWN', 'description': 'is p102_s7_szl_module unknown?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_CPU_312C', 'description': 'is p102_s7_szl_module cpu 312c?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_CPU_315-2_DP', 'description': 'is p102_s7_szl_module cpu 315-2 dp?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_IM151-8_PN/DP_CPU', 'description': 'is p102_s7_szl_module im151-8 pn/dp cpu?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_CPU_314C', 'description': 'is p102_s7_szl_module cpu 314c?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_PLC_1', 'description': 'is p102_s7_szl_module plc_1?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_PC35XV', 'description': 'is p102_s7_szl_module pc35xv?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MEMORY_SERIAL_NUMBER_UNKNOWN', 'description': 'is p102_s7_szl_memory_serial_number unknown?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MEMORY_SERIAL_NUMBER_03.12.2010_8SD23E', 'description': 'is p102_s7_szl_memory_serial_number 03.12.2010 8sd23e?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MEMORY_SERIAL_NUMBER_01.21.2011_8SD23E', 'description': 'is p102_s7_szl_memory_serial_number 01.21.2011 8sd23e?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MEMORY_SERIAL_NUMBER_07.28.2012_8SD23E', 'description': 'is p102_s7_szl_memory_serial_number 07.28.2012 8sd23e?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MEMORY_SERIAL_NUMBER_09.24.2013_8SD23E', 'description': 'is p102_s7_szl_memory_serial_number 09.24.2013 8sd23e?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SYSTEM_HEIZHAUS', 'description': 'is p102_s7_szl_system heizhaus?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SYSTEM_BASE_DIR', 'description': 'is p102_s7_szl_system base dir?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SYSTEM_IE-721', 'description': 'is p102_s7_szl_system ie-721?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SYSTEM_S7300/ET200', 'description': 'is p102_s7_szl_system s7300/et200?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SYSTEM_SIMATIC', 'description': 'is p102_s7_szl_system simatic?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SYSTEM_CPU_313', 'description': 'is p102_s7_szl_system cpu 313?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SYSTEM_R51.0_THIES', 'description': 'is p102_s7_szl_system r51.0 thies?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SYSTEM_UNKNOWN', 'description': 'is p102_s7_szl_system unknown?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SYSTEM_ET_200', 'description': 'is p102_s7_szl_system et 200?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SYSTEM_S7-300', 'description': 'is p102_s7_szl_system s7-300?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 1.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SYSTEM_TECHNODROME', 'description': 'is p102_s7_szl_system technodrome?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SYSTEM_PLC', 'description': 'is p102_s7_szl_system plc?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SYSTEM_SINUMERIK', 'description': 'is p102_s7_szl_system sinumerik?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SYSTEM_PC35XV', 'description': 'is p102_s7_szl_system pc35xv?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_SYSTEM_S71500/ET200', 'description': 'is p102_s7_szl_system s71500/et200?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_OEM_ID_ELDORADO_DO_SUL_/_RS', 'description': 'is p102_s7_szl_oem_id eldorado do sul / rs?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_OEM_ID_UNKNOWN', 'description': 'is p102_s7_szl_oem_id unknown?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_TYPE_SIEMENS,_SIMATIC,_S7-200', 'description': 'is p102_s7_szl_module_type siemens, simatic, s7-200?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_TYPE_CPU_315-2_PN/DP', 'description': 'is p102_s7_szl_module_type cpu 315-2 pn/dp?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_TYPE_CPU_313C', 'description': 'is p102_s7_szl_module_type cpu 313c?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_TYPE_UNKNOWN', 'description': 'is p102_s7_szl_module_type unknown?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_TYPE_CPU_312C', 'description': 'is p102_s7_szl_module_type cpu 312c?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_TYPE_CPU_315-2_DP', 'description': 'is p102_s7_szl_module_type cpu 315-2 dp?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 1.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_TYPE_IM151-8_PN/DP_CPU', 'description': 'is p102_s7_szl_module_type im151-8 pn/dp cpu?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_TYPE_CPU_314C', 'description': 'is p102_s7_szl_module_type cpu 314c?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_TYPE_PLC_1', 'description': 'is p102_s7_szl_module_type plc_1?'}, {'_type': 'MACHINE', 'descriptive': False, 'value': 0.0, 'expansion_safe': True, '_id': 'P102_S7_SZL_MODULE_TYPE_PC35XV', 'description': 'is p102_s7_szl_module_type pc35xv?'}])


if __name__ == "__main__":
    main()