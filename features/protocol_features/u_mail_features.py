from u_utils import common_models, enumerated_field
from scripts.analyze_data.lib.feature import Feature
from scripts import utils, const
import u_tls_certificate_features as tcf

mail_server_list = {s.lower() for s in [
    #censys
    'idealmap',
    'imap',
    'Microsoft Exchange Server 2003',
    'Microsoft Exchange Server 2007',
    'Google IMAP',
    'Microsoft Exchange Server 2010',
    'google',
    'exchange server',

    'agorum',
    'apache',
    'axigen',
    'bongo',
    'citadel',
    'communigate',
    'courier',
    'cyrus',
    'dovecot',
    'eudora',
    'exim',
    'firstclass',
    'gordano',
    'groupwise',
    'halon',
    'haraka',
    'hmail',
    'ibm',
    'icewarp',
    'ipswitch',
    'ironport',
    'kerio',
    'kerio connect',
    'kolab',
    'kopano',
    'mailenable',
    'mailsite',
    'mailtraq',
    'mdaemon',
    'mercury',
    'meta1',
    'microsoft',
    'mmdf',
    'netmail',
    'novell',
    'open-xchange',
    'opensmtpd',
    'openwave',
    'oracle',
    'postfix',
    'qmail',
    'qpopper',
    'qpsmtpd',
    'scalix',
    'sendmail',
    'smail',
    'sparkengine',
    'sun',
    'synovel',
    'univention',
    'uw imap',
    'wingate',
    'xchange',
    'zarafa',
    'zentyal',
    'zimbra',
    'zimbra',
    'unknown',
    'zmailer'
]}

raw_starttlses = [
    'a001 bad invalid command',
    "a001 bad tls support isn't enabled.",
    'a001 bad unknown',
    'a001 no error in imap command received by server.',
    'a001 ok begin',
    'a001 ok completed',
    'a001 no',
]


def meta_features(machine, field_preifx):
    res = []
    machine_start_tls = ''
    if field_preifx not in ['p993_imaps_tls', 'p995_pop3s_tls']:
        start_tls_field = '{}_starttls'.format(field_preifx)
        res += enumerated_field(machine=machine,
                                field=start_tls_field,
                                enum_list=raw_starttlses)
        machine_start_tls = utils.get_field(machine, start_tls_field, t='str')

    banner = utils.get_field(machine, '{}_banner'.format(field_preifx), t='str')
    res += common_models(machine, field_preifx, mail_server_list, banner)

    msg = ' '.join([machine_start_tls, banner])
    success_connects = ['200 ', '220 ', 'ready', 'go ahead', 'OK', 'begin']
    connection_successful = any([_s in msg for _s in success_connects])
    res += [
        Feature(as_obj={
            '_id': '{}_CONN_SUCCESS'.format(field_preifx.upper()),
            '_type': 'MACHINE',
            'expansion_safe': True,
            'value': connection_successful,
            'description': 'was the connection '
                           'to this mail server '
                           'successful?'
        })
    ]
    return res


def extract(machine, args, protocol):
    res = []
    # if the field starts with tls not starttls
    tls = ['p465', 'p993', 'p995']

    port_fields = ['p{}'.format(i)
                   for c in const.ports_and_protocols
                   if c[0] == protocol for i in c[1]]
    for p in port_fields:
        if p in tls:
            f_prefix = '{}_{}_tls'.format(p, protocol)
        else:
            f_prefix = '{}_{}_starttls'.format(p, protocol)

        res += meta_features(machine, f_prefix)
        res += tcf.extract(machine,
                           args=args,
                           field=f_prefix,
                           _id='{}_{}'.format(p, protocol))

    return res


if __name__ == "__main__":
    from pprint import pprint
    pprint(mail_server_list)