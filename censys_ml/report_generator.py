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


def reportbuilder (par):
    global_config = utils.get_config()
    report_key = global_config['censys']['report_key']
    with open(report_key) as f:
        key = json.load(f)
    
    responce = censys.ipv4.CensysIPv4(api_id=key["UID"], api_secret=key["secret"])  
    report = responce.report(par["query"], field=par["field"], buckets=par["buckets"])
    print(type(report))
    
    report_dir = global_config['censys']['report_dir']

    # current date and time
    now = datetime.now()
    time = str(now)
    time = time[0:13] +" "+ time[14:16] + " " + time[17:19]
    print("time = ", time)
    
    with open(report_dir+"result"+time+" .json", 'w') as fp:
        json.dump(report, fp)
   
reportbuilder(dicty)