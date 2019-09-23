from scripts.const import ports_and_protocols
from scripts.analyze_data.lib.feature import Feature
from scripts.utils import get_field


def meta_features(machine, field_prefix):
    res = [
            Feature(as_obj={
                '_id': '{}_SUPPORT'.format(field_prefix),
                '_type': 'MACHINE',
                'expansion_safe': True,
                'value': get_field(machine,
                                   '{}_supported'.format(field_prefix),
                                   t='int'),
                'description': 'is {} supported?'.format(field_prefix)
            })
    ]
    return res


def extract(machine, args):
    res = []
    protocol = ''
    ports = [p for c in ports_and_protocols
             if c[0] == protocol
             for p in c[1]]
    for port in sorted(ports, reverse=True):
        field_prefix = 'p{}_{}_banner'.format(port, protocol)
        res += meta_features(machine, field_prefix)
    return res


def main():
    import json
    from scripts.utils import recurse_machine_fields
    machine = recurse_machine_fields(json.loads(r""""""))
    args = {
        'domain': 'verifone.com',
        'c_id': 'verifone',
        'date': '20170215'
    }
    result = extract(machine, args)
    print([r.get_all() for r in result])
    assert sorted([r.get_all() for r in result]) == sorted([])


if __name__ == "__main__":
    main()