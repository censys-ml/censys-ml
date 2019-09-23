from scripts import utils
from scripts.analyze_data.lib.feature import Feature


def list_of_bool_int_fields(machine, parent_field, child_fields, description, other_parents=None):
    res = []
    for bf in child_fields:
        other_f = ['{}_{}'.format(parent, bf)
                   for parent in other_parents] if other_parents else []
        res += [
            Feature(as_obj={
                '_id': '{}_{}'.format(parent_field, bf),
                '_type': 'MACHINE',
                'expansion_safe': True,
                'value': utils.get_field(machine,
                                         '{}_{}'.format(parent_field, bf),
                                         t='int', other_f=other_f),
                'description': 'Flag : {}_{}. {}.'.format(parent_field,
                                                          bf, description)
            })
        ]
    return res


def enumerated_field(machine, field, enum_list, version=False, add_fields=None, other_fields=None):
    res = []
    machine_value = str(utils.get_field(machine, field, t='str', other_f=other_fields)).lower()
    if add_fields is not None:
        for _f in add_fields:
            machine_value += str(utils.get_field(machine, _f, t='str', other_f=other_fields)).lower()

    for enum in {str(s).lower() for s in (list(enum_list) + ['unknown'])}:
        # hack for version number eg : 1.2 vs 4.1.2
        if version:
            in_str = enum in machine_value and ('.' + enum) not in machine_value
        else:
            in_str = enum in machine_value

        res += [
            Feature(as_obj={
                '_id': '{}_{}'.format(field, enum[:50]),
                '_type': 'MACHINE',
                'expansion_safe': True,
                'value': in_str,
                'description': 'is {} {}?'.format(field, enum)
            })
        ]
    return res


def map_of_enumerated_fields(machine, _map):
    res = []
    for _field in _map:
        res += enumerated_field(machine=machine,
                                field=_field,
                                enum_list=_map[_field])
    return res


def common_models(machine, field_prefix, server_list, add_str=''):
    res = []
    desc = utils.get_field(machine,
                           '{}_metadata_description'.format(field_prefix),
                           t='str')
    prod = utils.get_field(machine,
                           '{}_metadata_product'.format(field_prefix),
                            t='str')
    manu = utils.get_field(machine,
                           '{}_metadata_manufacturer'.format(field_prefix),
                           t='str')

    for server in server_list:
        res += [
            Feature(as_obj={
                '_id': '{}_RUNNING_{}'.format(field_prefix, server),
                '_type': 'MACHINE',
                'expansion_safe': True,
                'value': server in ('{} {} {} {}'.format(prod, desc, manu, add_str)).lower(),
                'description': 'is {} running {}?'.format(field_prefix, server)
            })
        ]

    return res
