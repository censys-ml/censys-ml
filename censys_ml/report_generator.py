from censys_ml import utils
import json
import censys.ipv4
from datetime import datetime


# sample dictionary and url put here to test things
dicty = {
  "query": "80.http.get.status_code: 200",
  "field":"location.country.raw",
  "buckets":10
}
#url = "https://censys.io/api/v1/report/ipv4"


#tried to get the report builder working without using censys tools and just using python requests but i kept getting a "malformed requests" error (400)
#that's the reason i had to use the censys module but it only works for ipv4 at the moment.

#the code to use the report builder (feed query data to the function) isnt written yet

global_config = utils.get_config()
def reportBuilder (par):
    report_key = global_config['censys']['report_key']
    with open(report_key) as f:
        key = json.load(f)
    
    responce = censys.ipv4.CensysIPv4(api_id=key["UID"], api_secret=key["secret"])  
    report = responce.report(par["query"], field=par["field"], buckets=par["buckets"])
    report_dir = global_config['censys']['report_dir']

    #current date and time
    now = datetime.now()
    time = str(now)
    time = time[0:13] +" "+ time[14:16] + " " + time[17:19]
    with open(report_dir+"result"+time+" .json", 'w') as fp:
        json.dump(report, fp)
    return report

def oneHotEncode (report):
    data = report["results"]
    count = len(data)
    keys = []
    for i in range (0,count):
        temp = data[i]
        keys.append(temp["key"])
    header = []
    for i in range (0,count):
        header.append("is"+keys[i])
    header.append("doc_count")
    new_key = {}
    for i in range (0,count):
        segment = []
        temp = data[i]
        for k in keys:
            if k == temp["key"]:
                segment.append (1)
            else:
                segment.append (0)

        segment.pop(count-1)
        new_key[temp["key"]] = segment

    new_list = []
    new_list.append(header)
    for i in range (0,count):
        segment = []
        temp = data[i]
        docs = int (temp["doc_count"])
        segment = (new_key[temp["key"]])
        segment.append(docs)
        new_list.append(segment)

    # current date and time
    now = datetime.now()
    time = str(now)
    time = time[0:13] +" "+ time[14:16] + " " + time[17:19]
    report_dir = global_config['censys']['report_dir']
    with open(report_dir+"result"+time+" OHE.json", 'w') as fp:
       json.dump(new_list, fp)