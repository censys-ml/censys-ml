import json
from google.cloud import bigquery

from censys_ml import utils


def data_from_json_file(path):
    with open(path, 'r') as in_file:
        return json.load(in_file)


def data_to_json_file(path, data):
    with open(path, 'w') as out_file:
        json.dump(data, out_file, indent=2, sort_keys=True)


def data_from_txt_file(path):
    with open(path, 'r') as in_file:
        return [p.replace('\n', '')
                for p in in_file.readlines()]


def parse_html(raw_html):
    rows = raw_html.replace('&amp;', 'and').split('</tr>')
    res = set()
    for row in rows:
        row_entry = row.split('</td>')[0]
        name = row_entry.split('table-field-prefix">')[-1].replace('</span>', '')
        res.add(name.strip())
    return list(res)


def filter_leaf_fields(fields):
    res = []
    for field in fields:
        parent = '.'.join(field.split('.')[:-1])
        if (parent != '') and (parent in res):
            del res[res.index(parent)]
        res.append(field)
    return res


def filter_parent_fields(fields):
    return list({f.split('.')[0] for f in fields})


def parse_for_domain_names(fields):
    res = []
    leaves = filter_leaf_fields(fields)
    for leaf in leaves:
        if leaf[0] == 'p' and ('name' in leaf or 'dn' in leaf):
           res.append(leaf)
    return res


def bigquery_dry_run(client, field, table):
    project = ''
    dataset_id = ''
    query = ("SELECT {} FROM `{}.{}.{}` WHERE ip='8.8.8.8';".format(
        field, project, dataset_id, table
    ))
    job_config = bigquery.QueryJobConfig()
    job_config.dry_run = True
    job_config.use_query_cache = False
    query_job = client.query(query, job_config=job_config)

    # A dry run query completes immediately.
    assert query_job.state == 'DONE'
    assert query_job.dry_run
    return query_job.total_bytes_processed/(2.0 ** 20)  # in MiB


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
    for k in json_schema:
        model_definition[k] = json_schema[k]
        # TODO : handle model changes over time (str in 2018 -> int in 2019)
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
    outfile = utils.get_config()['censys']['model_outfile']
    with open(outfile, 'w') as _file:
        json.dump(model_definition, _file, indent=2)


def main():
    print('[x] Gathering censys data model')
    config = utils.get_config()
    service_file = config['censys']['service_file']
    project = config['censys']['project']
    dataset_id = config['censys']['dataset_id']

    client = bigquery.Client.from_service_account_json(service_file)
    dataset_ref = client.dataset(dataset_id, project=project)
    model_def = get_model_definition(client, dataset_ref)
    save_model_definition(model_definition=model_def)

# OLD
# def main():
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


if __name__ == "__main__":
    main()
