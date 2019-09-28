import json

from pprint import pprint
from google.cloud import bigquery

import config

global_config = config.get_config()

# dataset_ref = client.dataset(dataset_id, project=project)
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


# def recurse_schema(field):
#     if len(field.fields) == 0:
#         return [field.name]
#     else:
#         return [
#             field.name + '.' + r
#             for f in field.fields
#             for r in recurse_schema(f)
#         ]


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
#         schema = client.get_table(dataset_ref.table(table)).schema
#         columns = only_parents({item for t in schema for item in recurse_schema(t)})
#         for i, field in enumerate(only_parents(fields)):
#             print "[X] Field {}.{} ) {}".format(t, i, field)
#             if field in costs:
#                 costs[field].append(get_dry_run(field, table) if field in columns else 0)
#             else:
#                 costs[field] = [get_dry_run(field, table) if field in columns else 0]

#     avg_costs = {k: max(costs[k]) for k in costs}
#     data_to_json('../../raw/aggregated_costs.json', avg_costs)
    # print("{} query will process {} bytes.".format(f, avg_proc))


def main():
    service_file = global_config['censys']['service_file']
    client = bigquery.Client.from_service_account_json(service_file)


if __name__ == "__main__":
    main()