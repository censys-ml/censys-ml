# Censys-ML

Censys-ML is a Mapping tool that transforms the data model seen in [Censys](https://censys.com) and other similar sources to a data model that is flattened so as to make its easier for data analysis.



![alt text](./img.png "Censys-ML Logo")



## Installation

###     Install Dependencies

All of the dependencies and requirements are listed in the ***pipfile***. Use the package manager [pipenv](https://pypi.org/project/pipenv/) to install all the dependencies. If pipenv is not installed on the system, Visit the official [site](https://pypi.org/project/pipenv/) and see how pipenv can be installed. 

Run this line from a terminal opened from the root project directory to install the dependencies.

```bash
pipenv install
```

###     Install Vector

Vector is one on the key components of this project as it is used to transform or flatten the original dataset.
To install vector, run the bash script ***setup.sh*** in the ***scripts*** folder. 

Try the following...
```bash
$ bash scripts/setup.sh
```

Vector can also be installed using curl

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.vector.dev | sh
```

Looking for other methods to install vector? Take a look at [Vector installation Methods](https://vector.dev/docs/setup/installation/)


## Usage

###         	Generating the Lua Scripts   (Optional)

Before getting into the transformation phase, the Lua scripts must first be generated. **THIS IS OPTIONAL** as the Lua scripts are already generated and frequently updated.

These scripts are dynamically generated after looking at the schema set by these sources.
To do this, simply execute the ***generate_transforms*** module in the ***censys_ml*** directory or run these lines in a terminal (from the root directory of the project) and it should generate Lua scripts based on the currently set Model Definition.

 ```bash
cd censys_ml
python generate_transforms.py
 ```

 ###        Handling Datasets

Currently, this tool supports a number of sources. Supported sources are documented right beneath this section. The datasets also need to be structured into a standard **valid** **JSON**. As far as the output dataset goes, you can find it in the ***output*** folder inside main *vector* directory.

###         Transforming Datasets

To carry on with the transformation phase just execute the ***main.sh*** script in the scripts folder or run these lines in a terminal from the root of the project folder

 ```bash
cd scripts
bash main.sh
 ```

Please supply inputs based on the selected source type. Afterwards, Gracefully shutdown the process once its done.

The output dataset can be found in the ***output*** folder inside the vector directory, It will be named with an extension of the date the transformation was carried out. the final dataset should be a flattened JSON version of the original dataset represented in a single line.

## Supported Sources

N.B. All sources must supply data that is structured as a standard single-line JSON

### Standard Input (STDIN)

A straight forward data source is the console itself. Although this method might be tedious to insert large data it is still an option. This method might come in handy when self analyzed data needs to be included in the report. This input method is the default if no input method is supplied by the user. Inputs still need to be single line JSONs. Every line input is considered as a separate event and hence its own output JSON will be generated for it.

### File Inputs

One of the supported sources for this mapping tool is a File input.  To use this source set the `source` to `file` The default pattern for recognition is any file ending with a  \**.json* extension. Once the transformation process has began, new files can still be added to the input directory and they will be caught automatically. Compressed files (gzip e.t.c) are also decompressed for reading but is not a reliable method. Once a file has been read and has a checkpoint set for it, it **WILL NOT** be read again. 

### Apache Kafka -- NOT DONE

Want to handle larger data? If so, Kafka streaming is also an option **with  [Kafka](https://kafka.apache.org/) version** `>= 0.8`. The `kafka` source uses [`librdkafka`](https://github.com/edenhill/librdkafka) under the hood but since this dependency is packaged with Vector, you do not need to install it. Data can also be ingested from different bootstrap servers, not just one. If there are different bootstrap servers that act as data sources set the BOOTSTRAP_SERVERS environment variable to a string of IPs separated by commas. The GROUP_ID and TOPICS env variables also needs to be filled out. For advanced options for this options look at the Advanced Kafka in docs.

### HTTP

Data can also be retrieved from HTTP requests.  To use this source set the `source` to `http` **This component exposes a configured port. You must ensure your network allows access to this port.** Set the ADDRESS variable as a text of the target IP and port to listen for connections like such  `"0.0.0.0:80"` . A JSON encoding format is only supported. TLS is supported. For advanced options check out the HTTP section in docs. This source supports TLS over TCP connection mode

### Splunk HEC Source

This source ingests data through the [Splunk HTTP Event Collector protocol](https://docs.splunk.com/Documentation/Splunk/8.0.0/Data/HECRESTendpoints). To use this source set the `source` to `splunk_hec`. A valid address, meaning an IP followed by a port number should be assigned afterwards. A `token` is used to authorize connection, so please do authorize. This source also supports TLS

### Heroku Logplex Source

This source ingests data through the [Heroku Logplex HTTP Drain protocol](https://github.com/heroku/logplex/blob/master/doc/README.http_drains.md). To use this source set the `source` to `logplex`. A valid address, meaning an IP followed by a port number should be assigned afterwards. This source supports TLS.

### **Socket**

Custom socket connections are also an option.  To use this source set the `source` to `socket`. Set the MODE env variable to either 'udp', ' tcp' or 'unix' based on your socket connection type. In a tcp connection mode TLS can be enabled. If the connection mode is set to 'unix', the path to the absolute unix socket should be set. For advanced settings, take a look at the Socket section in docs. A Socket connection source also supports TLS over TCP connection mode

### Vector

If there already exists a vector instance that acts as an upstream, it can be used as a data source for this instance.  To use this source set the `source` to `vector`. The dataset from the upstream instance can be ingested over a socket connection. Since we only support json format , please make sure that the data coming through this source was a valid JSON prior to the encoding. vector is also supports TLS over TCP connection mode

### Docker

Docker engine daemon can also act as a source. A Docker API `>= 1.24`  and  `Json-file` logging driver are required and so should be installed first. To use this source set the `source` to `docker`. Please note a connection to the docker daemon is only automated if the active user can and has privilege to run `docker ps`.  This Plugin allows the consumption of data from a container and an image. To supply the container or image please, set the field `container` to the name of the desired container. The same goes for image as well.

### Syslog

This source ingests data through the syslog protocol. To use this source, set the `source` to `syslog`. A syslog protocol uses a socket connection. So the same steps in the socket section can be followed. syslog is also supports TLS over TCP connection mode









------

|    Sources     | Source function | Multiple OS support | OpenSSL Over TLS | Guaranteed Data Delivery in all cases* |
| :------------: | :-------------: | :-----------------: | :--------------: | :------------------------------------: |
|      File      |    `collect`    |          ✅          |       `-`        |                   ❌                    |
|     Stdin      |    `recieve`    |          ✅          |       `-`        |                   ✅                    |
|     Docker     |    `collect`    |          ✅          |        ✅         |                   ❌                    |
|     Socket     |    `recieve`    |          ✅          |        ✅         |                   ❌                    |
|      HTTP      |    `recieve`    |          ✅          |        ✅         |                   ✅                    |
|     Kafka      |    `collect`    |          ✅          |        ✅         |                   ✅                    |
|     Vector     |    `recieve`    |          ✅          |        ✅         |                   ❌                    |
|    Journald    |    `collect`    |          ❌          |       `-`        |                   ✅                    |
| Heroku Logplex |    `recieve`    |          ✅          |        ✅         |                   ✅                    |
|  Splunk  HEC   |    `recieve`    |          ✅          |        ✅         |                   ✅                    |
|     Syslog     |    `recieve`    |          ✅          |       `-`        |                   ❌                    |

*. Some sources have been given negative feedback under this field, this DOES NOT mean that they do not have modes that guarantee data delivery. But rather in some modes, these sources makes best-effort delivery guarantee and In rare cases can lose data



## Updating the Model definition   (Optional)

**N.B.** Make sure that the correct **service file** is found in the ***auth*** folder inside the main ***config*** directory before proceeding.

The schema set by these sources is subject to change and these can in turn affect the final dataset if the transformation is not working in accordance to them. This means that the model definition needs to be updated from time to time. **This is OPTIONAL** as the model definition is frequently updated. 

To Update the Model definition, either run the following 

```bash
cd censys_ml
pipenv run python update_model.py
```

or open the pipenv shell. Simply run this line from the terminal (from the root project) to do so.

```bash
pipenv shell
```

Once the shell is running, navigate to the ***censys_ml*** directory and execute the ***update_model.py*** module. Run these lines in the terminal to do so

```bash
cd censys_ml
python update_model.py
```

## Running Tests

Run the following from the root directory to run the unit tests.

```bash
pipenv run python run_tests.py     
```

The code coverage report will be generated in the /coverage/ directory.
Visit ```./coverage/index.html``` to view the report.

## Recommended tools

- PyCharm
- Python 3.7 + pipenv

## Resources

```
- https://pypi.org/project/pipenv/
- https://censys.io/ipv4
- https://vector.dev/
- Lua programming language
- https://cloud.google.com/bigquery
```

## License

[MIT](https://choosealicense.com/licenses/mit/)
