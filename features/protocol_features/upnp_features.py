from scripts.const import ports_and_protocols
from scripts.analyze_data.lib.feature import Feature
from scripts.utils import recurse_machine_fields
import json

'''
#######################################
NO MACHINE WITH UPNP AS AN EXAMPLE!!!!!
########################################
'''


def meta_features(machine, field_prefix):
    res = [
        Feature(as_obj={
            '_id': '{}_FIELD_PRESENT'.format(field_prefix),
            '_type': 'MACHINE',
            'expansion_safe': True,
            'value': len([k for k in machine if '{}'.format(field_prefix) in k]) > 0,
            'description': 'does {} have tls'.format(field_prefix)
        })
    ]
    return res


def extract(machine, args):

    res = []
    protocol = 'upnp'
    ports = [p for c in ports_and_protocols
             if c[0] == protocol
             for p in c[1]]
    for port in sorted(ports, reverse=True):
        field_prefix = 'p{}_{}_discovery'.format(port, protocol)
        res += meta_features(machine, field_prefix)
    return res


def main():
    machine = recurse_machine_fields(json.loads("""{"ip":"144.118.232.159","location":[{"city":"Philadelphia","subdivision_2_code":"","country":"United States","subdivision_1":"Pennsylvania","time_zone":"America/New_York","longitude":-75.1968,"continent":"North America","locale_code":"en","subdivision_1_code":"PA","postal_code":"19104","continent_code":"NA","country_code":"US","subdivision_2":"","latitude":39.9597,"metro_code":"504","is_anonymous_proxy":false,"is_satellite_provider":false}],"autonomous_system":{"description":"DREXEL-ASN - Drexel University, US","routed_prefix":"144.118.0.0/16","country_code":"US","asn":11834,"name":"DREXEL-ASN","organization":"Drexel University, US"},"p1900":{"upnp":{"discovery":{"agent":"fake_data"}}}}"""))
    args = {
        'domain': 'verifone.com',
        'c_id': 'verifone',
        'date': '20170215'
    }
    result = extract(machine, args)
    # print([r.get_all() for r in result])
    from scripts.utils import compare_feature_output
    compare_feature_output([r.get_all() for r in result],[{'_type': 'MACHINE', 'descriptive': False, 'value': 1.0, 'expansion_safe': True, '_id': 'P1900_UPNP_DISCOVERY_FIELD_PRESENT', 'description': 'does p1900_upnp_discovery have tls'}])


if __name__ == "__main__":
    main()