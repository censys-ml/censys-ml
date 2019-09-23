import json


def data_to_json(file, data, indent=2):
    with open(file, 'w') as out_file:
        json.dump(data, out_file, indent=indent, sort_keys=True)


def data_from_json(file):
    with open(file, 'r') as in_file:
        return json.load(in_file)


def main():
    blacklist = ['_id',
                 '_index',
                 '_source',
                 '_type',
                 '_score']

    desc_fields = [
        # 'NUM_HIGH_RISK_SERVICES_RUNNING',
        # 'NUM_MEDIUM_RISK_SERVICES_RUNNING',
        # 'NUM_LOW_RISK_SERVICES_RUNNING',
        #
        # u'DOMAIN',
        # u'CENSYS_DATE_TABLE',
        # u'LABEL',
        # u'IP_ADDRESS',
        # u'SPLIT_MATCHES',
        #
        # u'CHERRY_PICKED',
        # u'LEN_1',
        # u'LEN_2',
        # u'OUTLIER_ALG',
        #
        # u'SPLIT_MATCH',
        # u'NOT_CHERRY_PICKED',
        # u'IS_OUTLIER',
        # u'IS_INLIER'
    ]

    file_path = './feature_space.json'
    raw_fields = data_from_json(file_path)[0]['_source']['fields']
    fields = {f['name'] for f in json.loads(raw_fields) if f['name'] not in blacklist and '.keyword' not in f['name']}
    all_fields = sorted(list(fields), reverse=True)
    data_to_json(file_path + '.out', sorted(list(all_fields), reverse=True))


if __name__ == "__main__":
    main()
