import json
import os
import sys
import datetime
import time

from lib import es
from scripts import configuration, utils
from features import daily_features
from features import machine_features as machine_f
from scripts.utils import recurse_machine_fields

global_config = None

"""
RUNTIME 

processed 714244 machines in 33623 seconds, found 22 empties

"""


def get_sample_features():
    machine = recurse_machine_fields(json.loads(
        r"""{"ip":"148.66.134.162","SPLIT_MATCHES":["EVERYTHING"],"location":{"country":"Singapore","longitude":103.8,
        "registered_country":"Singapore","registered_country_code":"SG","country_code":"SG","latitude":1.3667,"timezone"
        :"Asia/Singapore","continent":"Asia"},"autonomous_system":
        {"description":"AS-26496-GO-DADDY-COM-LLC - GoDaddy.com, LLC","routed_prefix":"148.66.128.0/19","country_code":
        "US","asn":26496,"name":"AS-26496-GO-DADDY-COM-LLC - GoDaddy.com, LLC","rir":"unknown","path":
        [7018,1299,26496]},"tags":[],"updated_at":"2019-03-25T02:49:11+00:00","ports":[],"protocols":["80/http"]}"""))
    args = {
        'domain': 'verifone.com',
        'c_id': 'verifone',
        'date': '20170215'
    }
    return machine_f.extract(machine, args)


def save_feature_ids():
    features = get_sample_features()
    ids = [f.get_id() for f in features]
    file_name = global_config['feature_ids'] + '.{}'.format(int(time.time()))
    utils.data_to_txt_file(file_name, ids)


def process_date_files(file_paths, args):
    machine_feats = []
    empty_count = 0
    mps_freq = 25
    for j, file_path in enumerate(file_paths):
        print "[x] {} / {} ) File path {}".format(j + 1, len(file_paths), file_path)
        machines = utils.data_from_json_gz(file_path)
        if len(machines) == 0:
            print "[!!!] No machines found..."
            empty_count += 1
        else:
            start = datetime.datetime.now()
            total = len(machines)
            for k, machine in enumerate(machines):
                if k % mps_freq == 0:
                    now = datetime.datetime.now()
                    rate = (k * 1.0) / ((now - start).seconds + 0.001)
                    left = str(datetime.timedelta(seconds=int(total - k) / ((rate+0.0001) * 1.0)))[:7]
                sys.stdout.write("\r[X] Current machine : %d / %d; mps : "
                                 "%.1f machines/sec; "
                                 "left : %s secs       " % (k+1, total, rate, left))
                sys.stdout.flush()
                machine_feats.append(machine_f.extract(raw_m=machine,
                                                       args=args,
                                                       value_mapped=True,
                                                       mini=True))
            print ""
    return machine_feats, empty_count


def write_features(features, file_path):
    utils.data_to_json(file_path, features)
    if global_config['save_to_elastic']:
        import time
        for i, feature_vec in enumerate(features):
            sys.stdout.write("\r[X] Adding machine : %d / %d  to elastic  " % (i+1, len(features)))
            sys.stdout.flush()
            es.add_to_index(feature_vec,
                            index='extracted_features',
                            doc_type='feature_vector')
            time.sleep(0.001)


def extract_features():
    cohort = utils.retrieve_cohort(normalize=True, one_obg=True, breach_label=True)
    data = utils.data_files(conf_key='datastore_dir')
    total_count = 0
    total_empties = 0
    start = datetime.datetime.now()
    for i, domain in enumerate(sorted(data.keys(), reverse=True)):
        print "\n\n[X] {}) Domain {}".format(i+1, domain)
        dates_files = data[domain]['date_files']
        domain_dir = '{}{}'.format(global_config['feature_dir'], domain)

        for date in sorted(list({d[0] for d in dates_files})):
            print "[X] Date {}".format(date)

            if not os.path.isdir(domain_dir):
                os.mkdir(domain_dir)
            filename = '{}.json'.format(date)
            file_path = '{}/{}'.format(domain_dir, filename)
            if os.path.isfile(file_path) and not global_config['overwrite_features']:
                print "Skipping {}...".format(domain, date)
                continue
            args = {
                'domain': domain,
                'c_id': data[domain]['c_id'],
                'date': date
            }
            file_paths = [d[1] for d in dates_files if d[0] == date]
            machine_feats, empty_count = process_date_files(file_paths, args)
            total_empties += empty_count
            total_count += len(machine_feats)
            daily_feats = daily_features.main(machine_feats,
                                              value_mapped=True,
                                              mini=True)
            for feature_vec in machine_feats:
                feature_vec.update(daily_feats)
                feature_vec.update({
                    'LABEL': cohort[domain]['label']
                })

            write_features(features=machine_feats, file_path=file_path)

    now = datetime.datetime.now()
    print "[x] processed {} machines in {} seconds, found {} empties".format(total_count,
                                                                             (now - start).seconds,
                                                                             total_empties)


def run_extract():
    global global_config
    conf = configuration.get_conf()
    global_config = conf
    print "\n[X] Running Feature Extraction Engine..."
    save_feature_ids()
    extract_features()


if __name__ == "__main__":
    run_extract()


# def write_all_features(features):
#     print "\n[X] Writing features to out file"
#     ids = [f.get_id() for f in features[features.keys()[0]]]
#     d = []
#     i = 0
#     for company in features:
#         i += 1
#         print "On company {} ) {}".format(i, company)
#         line = features[company]
#         if len(line) == 0:
#             continue
#         _map = {_id: f.get_value() for _id in ids for f in line if f.get_id() == _id}
#         d.append([company]+[_map[_id] for _id in ids])
#
#     utils.data_to_json(global_config['features_json_outfile'],
#                        {key: feature.reduce_list_features(features[key]) for key in features},
#                        indent=1)
#     header = ['domain'] + ids
#     data = [header] + d
#     quoting = csv.QUOTE_MINIMAL
#     writer, file_handle = utils.get_writer_to_csv(global_config['features_csv_outfile'],
#                                                   quoting=quoting)
#     [writer.writerow(item) for item in data]
#     file_handle.close()
#     utils.sort_csv(file=global_config['features_csv_outfile'],
#                    column=0, quoting=quoting, reverse=False)
