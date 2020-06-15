import json

from pprint import pprint
from google.cloud import bigquery

import utils

global_config = utils.get_config()


# def data_from_json(file):
#     with open(file, 'r') as in_file:
#         return json.load(in_file)


# def data_to_json(file, data):
#     with open(file, 'w') as out_file:
#         json.dump(data, out_file, indent=2, sort_keys=True)


# def parse_html(raw):
#     rows = raw.replace('&amp;', 'and').split('</tr>')
#     res = set()
#     for row in rows:
#         name = row.split('</td>')[0].split('table-field-prefix">')[-1].replace('</span>', '')
#         res.add(name.strip())
#     return list(res)


# def data_from_txt_file(path):
#     with open(path, 'r') as in_file:
#         return [p.replace('\n', '')
#                 for p in in_file.readlines()]


# def of_interest_domain_names(fields):
#     res = []
#     leaves = only_leaves(fields)
#     for leaf in leaves:
#         if leaf[0] == 'p' and ('name' in leaf or 'dn' in leaf):
#            res.append(leaf)
#     return res


# def only_leaves(fields):
#     res = []
#     for field in fields:
#         parent = '.'.join(field.split('.')[:-1])
#         if parent != '' and parent in res:
#             del res[res.index(parent)]
#         res.append(field)
#     return res


# def only_parents(fields):
#     return list({f.split('.')[0] for f in fields})


# def get_dry_run(field, table):
#     query = ("SELECT {} FROM `{}.{}.{}` WHERE ip='8.8.8.8';"
#              .format(field, project, dataset_id, table))

#     job_config = bigquery.QueryJobConfig()
#     job_config.dry_run = True
#     job_config.use_query_cache = False
#     query_job = client.query(query, job_config=job_config)

#     # A dry run query completes immediately.
#     assert query_job.state == 'DONE'
#     assert query_job.dry_run

#     return query_job.total_bytes_processed/(2.0 ** 20) # in MiB


# def main_old():
#     fields = data_from_json('../../raw/aggregated_columns.json')
#     tables = ['20170106', '20180530', '20190211']
#     costs = {}

#     for t, table in enumerate(tables):
#         print "\n[X] Table {}".format(table)
#
#         columns = only_parents()
#         for i, field in enumerate(only_parents(fields)):
#             print "[X] Field {}.{} ) {}".format(t, i, field)
#             if field in costs:
#                 costs[field].append(get_dry_run(field, table) if field in columns else 0)
#             else:
#                 costs[field] = [get_dry_run(field, table) if field in columns else 0]

#     avg_costs = {k: max(costs[k]) for k in costs}
#     data_to_json('../../raw/aggregated_costs.json', avg_costs)
# print("{} query will process {} bytes.".format(f, avg_proc))


def parse_schema(fields):
    result = {}
    for field in fields:
        j_field = field

        if 'fields' in j_field and len(j_field['fields']) != 0:
            parsed = parse_schema(j_field['fields'])
            for k in parsed:
                result[j_field['name'] + '.' + k] = parsed[k]
        else:
            result[j_field['name']] = j_field

    return result


# def type_precedence(item1, item2):
#     # If the type changed over time, return the type with highest number
#     precedence = {
#         'STRING': 0,
#         'INTEGER': 1
#     }
#     return item1


def update_model_definition(json_schema, model_definition):
    # TODO : handle model changes over time (str in 2018 -> int in 2019)
    for k in json_schema:
        model_definition[k] = json_schema[k]

        # if k in model_definition:
        #     model_definition[k] = type_precedence(item1=json_schema[k],
        #                                           item2=model_definition[k])
        # else:


def get_model_definition(client, dataset_ref):
    model_definition = {}
    total = len([0 for _ in client.list_tables(dataset_ref)])

    utils.printProgressBar(iteration=0, total=total,
                           prefix='Table : ', suffix='Complete',
                           length=50)
    for i, table in enumerate(client.list_tables(dataset_ref)):
        utils.printProgressBar(iteration=i, total=total,
                               prefix='Table : {}'.format(table.table_id),
                               suffix='Complete', length=50)

        table_ref = dataset_ref.table(table.table_id)
        raw_schema = client.get_table(table_ref).schema
        json_schema = parse_schema([r.to_api_repr() for r in raw_schema])
        update_model_definition(json_schema, model_definition)
    return model_definition


def save_model_definition(model_definition):
    outfile = global_config['censys']['model_outfile']
    with open(outfile, 'w') as _file:
        json.dump(model_definition, _file, indent=2)


def main():
    print('[x] Gathering censys data model')
    service_file = global_config['censys']['service_file']
    project = global_config['censys']['project']
    dataset_id = global_config['censys']['dataset_id']

    client = bigquery.Client.from_service_account_json(service_file)
    dataset_ref = client.dataset(dataset_id, project=project)
    model_def = get_model_definition(client, dataset_ref)
    save_model_definition(model_definition=model_def)


if __name__ == "__main__":
    main()
