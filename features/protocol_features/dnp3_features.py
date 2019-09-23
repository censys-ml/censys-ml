from scripts.const import ports_and_protocols
from scripts.analyze_data.lib.feature import Feature
from scripts.utils import recurse_machine_fields, get_field
import json


def meta_features(machine, port, protocol):
    res = []
    res += [Feature(as_obj={
        '_id': 'P{}_{}_SUPPORT'.format(port, protocol),
        '_type': 'MACHINE',
        'expansion_safe': True,
        'value': get_field(machine, 'p{}_{}_status_support'.format(port, protocol)),
        'description': 'does port {} have {} support?'.format(port, protocol)
    })]

    return res


def extract(machine, args):
    res = []
    protocol = 'dnp3'
    ports = [p for c in ports_and_protocols
             if c[0] == protocol
             for p in c[1]]
    for port in sorted(ports, reverse=True):
        pass
        res += meta_features(machine, port, protocol)
    return res


def main():
    machine = recurse_machine_fields(json.loads("""{"ip":"166.168.38.191","tags":["dnp3","scada"],"updated_at":"2019-03-17T04:17:55+00:00","autonomous_system":{"description":"CELLCO - Cellco Partnership DBA Verizon Wireless","rir":"unknown","routed_prefix":"166.168.0.0/16","country_code":"US","path":[7018,701,6167,22394,22394,22394,22394,22394,22394,22394],"asn":22394,"name":"CELLCO - Cellco Partnership DBA Verizon Wireless"},"location":{"country":"United States","longitude":-97.822,"registered_country":"United States","registered_country_code":"US","country_code":"US","latitude":37.751,"continent":"North America"},"ports":[20000],"protocols":["20000/dnp3"],"p20000":{"dnp3":{"status":{"support":true,"raw_response":"BWQFCwAAAQC68A==","metadata":{}}}}}"""))
    args = {
        'domain': 'verifone.com',
        'c_id': 'verifone',
        'date': '20170215'
    }
    result = extract(machine, args)
    # print([r.get_all() for r in result])
    from scripts.utils import compare_feature_output
    compare_feature_output([r.get_all() for r in result],[{'_type': 'MACHINE', 'descriptive': False, 'value': 1.0, 'expansion_safe': True, '_id': 'P20000_DNP3_SUPPORT', 'description': 'does port 20000 have dnp3 support?'}])


if __name__ == "__main__":
    main()