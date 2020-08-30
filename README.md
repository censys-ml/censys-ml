# Censys-ML (Beta)

[![Build Status](https://travis-ci.org/censys-ml/censys-ml.svg?branch=master)](https://travis-ci.org/censys-ml/censys-ml)

![alt text](./logo.png "Censys-ML Logo")

Current release: 0.0.2

License: [MIT](https://choosealicense.com/licenses/mit/)

Censys-ML is a data mapping tool that transforms the [Censys](https://censys.io) data model and other similar sources into one more suited for data analysis.

## Installation

### Python Dependencies

All of the dependencies and requirements are listed in the ***pipfile***. 

Use the package manager [pipenv](https://pypi.org/project/pipenv/) to install all the dependencies. 
Visit the official [site](https://pypi.org/project/pipenv/) to install pipenv. 

Run this line from a terminal opened from the root project directory to install the dependencies.

``` bash
pipenv install
```

### Vector

Vector is one on the key components of this project.
It is used as a engine to transform the original dataset.

To install vector, run the bash script ***setup.sh*** in the ***scripts*** folder. 

``` bash
$ bash scripts/setup.sh
```

Alternatively, Vector can also be installed using curl

``` bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.vector.dev | sh
```

If these methods do not work, take a look at these [Vector installation Methods](https://vector.dev/docs/setup/installation/).

## Setup

### Handling Datasets

The datasets need to be structured into **JSON** format.

### Configurations

Change the input and output configurations to match the target environment.

``` bash
~/censys-ml $ cd scripts
~/censys-ml/scripts $ vim main.sh
```

``` env
export INPUT="file"     <-- input configuration
export OUTPUT="console" <-- output configuration
```

There are additional [sinks](https://vector.dev/docs/reference/sinks/) and [sources](https://vector.dev/docs/reference/sources/) in beta on the Vector website that might have not been included here.

Additional configuration changes might need to be made in the **source_configs** (./vector/source_configs/) and **sink_configs** (./vector/sink_configs/) directories based on other source/sink specific requirements. E.g., topics for kafka, indices for elasticsearch, etc.

``` bash
~/censys-ml $ cd scripts
~/censys-ml/scripts $ bash main.sh
```

### Enabling TLS

TLS is not used by default. 
If a connection is to be set up with TLS, configurations such as CA certificate file, certificate file, and certificate key file should be specified in the sources/sinks configuration.

### Transforming Datasets

After setting up the correct source and sink, execute the ***main.sh*** script in the scripts directory to start the transform.

``` bash
~/censys-ml $ cd scripts
~/censys-ml/scripts $ bash main.sh
```

Press CTRL+c to stop the transform process.

### (Optional) Updating the Model definition   

**Note** Make sure that the correct **service account file** is found in the ***auth*** folder inside the main ***config*** directory before proceeding. 
This service account would need to have access to the Censys Bigquery database as described [here](https://support.censys.io/hc/en-us/articles/360038761891-Research-Access-to-Censys-Data).

The schema set by these sources is subject to change as more services are found and ports are scanned. These can in turn affect the transformation process and resulting dataset. This means that the model definition needs to be updated from time to time. 

**This is OPTIONAL** because the model definition is frequently updated by our team. 

To update the Model definition, run the following 

``` bash
cd censys_ml
pipenv run python update_model.py
```

Once the shell is running, navigate to the ***censys_ml*** directory and execute the ***update_model.py*** module. Run these lines in the terminal to do so

``` bash
cd censys_ml
python update_model.py
```

### (Optional) Generating the Lua Scripts 

Before getting into the transformation phase, the Lua scripts must first be generated. 
These scripts are dynamically generated based on the current Censys model definition.

**THIS IS OPTIONAL** because the Lua scripts are frequently updated by our team.

To do this, simply execute the ***generate_transforms*** module in the ***censys_ml*** directory

``` bash
cd censys_ml
pipenv run python generate_lua_transforms.py
 ```

## Supported Sources

**Note**: All sources must supply data that is structured as a standard single-line JSON

### Standard Input (stdin)

A straight forward data source is the console itself. 
Although this method might be tedious to insert large data it is still an option.
This method might come in handy when self analyzed data needs to be included in the report. 
Inputs still need to be single line JSONs. 
Every line input is considered as a separate event and hence its own output JSON will be generated for it.

### File

One of the supported sources for this mapping tool is a File input.  
The default pattern for recognition is any file ending with a  \**.json* extension. 
Once the transformation process has began, new files can still be added to the input directory and they will be caught automatically. 
Compressed files (gzip e.t.c) are also decompressed for reading but is not a reliable method. 
Once a file has been read and has a checkpoint set for it, it **WILL NOT** be read again. 

### Apache Kafka

Meant for larger data sets that will continuously flow in. 
Kafka streaming is also an option **with  [Kafka](https://kafka.apache.org/) version** `>= 0.8` . 
<!-- The `kafka` source uses [ `librdkafka` ](https://github.com/edenhill/librdkafka) under the hood but since this dependency is packaged with Vector, you do not need to install it.  -->
<!-- A bootstrap server to listen to is required.  -->
Supply the bootstrap server address as a string of IP followed by port, separated by a colon like this `"127.0.0.1:9092"` . 
Data can also be ingested from different bootstrap servers, not just one. 
If there are different bootstrap servers that act as data sources set the bootstrap servers variable to a string of IPs separated by commas like `"127.0.0.1:9092,3.345.323.2:9092"` . 
Once the servers are set, the group id for the consumer group should be specified. 
Afterwards comes the message_key, this key is the field that holds the message in the output log event. Finally the topics need to be set. 
These topics are Kafka topics to read events from. Simply supply the names separated by a comma like `"topic1,topic2"`

### HTTP

Data can also be retrieved from HTTP requests.  
To use this source set the `source` to `http` .
**This component exposes a configured port. You must ensure your network allows access to this port.** Set the ADDRESS variable as a text of the target IP and port to listen for connections like such `"0.0.0.0:80"` . 
<!-- A JSON encoding format is only supported.  -->
<!-- TLS is also supported for this source.  -->
For other advanced options check out the HTTP section in Vector HTTP source documentation.

### Splunk HEC Source

This source ingests data through the [Splunk HTTP Event Collector protocol](https://docs.splunk.com/Documentation/Splunk/8.0.0/Data/HECRESTendpoints). 
To use this source set the `source` to `splunk_hec` . 
A valid address, meaning an IP followed by a port number should be set. 
A `token` is used to authorize connection. 
<!-- This source also supports TLS -->

### Heroku Logplex Source

This source ingests data through the [Heroku Logplex HTTP Drain protocol](https://github.com/heroku/logplex/blob/master/doc/README.http_drains.md). 
To use this source set the `source` to `logplex` . 
A valid address, meaning an IP followed by a port number should be set.
<!-- This source supports TLS. -->

### **Socket**

Custom socket connections are also an option.  
To use this source set the `source` to `socket` . 
Set the MODE env variable to either 'udp', ' tcp' or 'unix' based on your socket connection type. 
In a tcp connection mode TLS can be enabled. 
If the connection mode is set to 'unix', the path to the absolute unix socket should be set. 
For advanced settings, take a look at the Socket section in docs. 

### Vector

If there already exists a vector instance that acts as an upstream, it can be used as a data source for this instance.  
To use this source set the `source` to `vector` . 
The dataset from the upstream instance can be ingested over a socket connection. 
Since we only support json format, make sure that the data coming through this source was a valid JSON prior to the encoding. 
<!-- vector is also supports TLS over TCP connection mode -->

### Docker

Docker engine daemon can also act as a source. 
A Docker API `>= 1.24` and `Json-file` logging driver are required and so should be installed first. 
To use this source set the `source` to `docker` . 
Please note a connection to the docker daemon is only automated if the active user can and has privilege to run `docker ps` .  
This plugin allows the consumption of data from a container and an image. 
To supply the container or image please, set the field `container` or `image` to the name of the desired container. 
<!-- The same goes for image as well. -->

### Syslog

This source ingests data through the syslog protocol. 
To use this source, set the `source` to `syslog` . 
A syslog protocol uses a socket connection. 
So the same steps in the socket section can be followed. 
<!-- syslog is also supports TLS over TCP connection mode -->

### Journald

Data can also be ingested through Systemd's Journald utility. 
The [ `journalctl` ](https://vector.dev/docs/reference/sources/journald/#journalctl) binary is required, this is the interface Vector uses to retrieve JournalD logs. 
User must also be part of the `systemd-journal` group in order to execute the [ `journalctl` ](https://vector.dev/docs/reference/sources/journald/#journalctl) binary. 
Checkpoints are set for every batch that is read. 
<!-- The batch_size option limits this size.  -->
If needed entries from alternate boots can be included. 
The full path of the [ `journalctl` ](https://vector.dev/docs/reference/sources/journald/#journalctl) executable must also be specified. 
Units are monitored once process has began. 
To select which units to monitor simply specify there names separated with a comma as such `.unit1,unit2` . 
Any unit lacking a `"."` will have a `".service"` appended to it to make it a valid service unit name.

## Source comparisons

------

|    Sources     | Source function | Multiple OS support | OpenSSL Over TLS | Guaranteed Data Delivery in all cases* |
| :------------: | :-------------: | :-----------------: | :--------------: | :------------------------------------: |
|      File      | `collect` |          ✅          | `-` |                   ❌                    |
|     Stdin      | `recieve` |          ✅          | `-` |                   ✅                    |
|     Docker     | `collect` |          ✅          |        ✅         |                   ❌                    |
|     Socket     | `recieve` |          ✅          |        ✅         |                   ❌                    |
|      HTTP      | `recieve` |          ✅          |        ✅         |                   ✅                    |
|     Kafka      | `collect` |          ✅          |        ✅         |                   ✅                    |
|     Vector     | `recieve` |          ✅          |        ✅         |                   ❌                    |
|    Journald    | `collect` |          ❌          | `-` |                   ✅                    |
| Heroku Logplex | `recieve` |          ✅          |        ✅         |                   ✅                    |
|  Splunk  HEC   | `recieve` |          ✅          |        ✅         |                   ✅                    |
|     Syslog     | `recieve` |          ✅          | `-` |                   ❌                    |

*. Some sources have been given negative feedback under this field, this DOES NOT mean that they do not have modes that guarantee data delivery. 
But rather in some modes, these sources makes best-effort delivery guarantee and, in rare cases, can lose data.

## Supported Sinks

### Console (stdout)
Output the result JSON directly to stdout.
[More info](https://vector.dev/docs/reference/sinks/splunk_hec/)

### Elasticsearch
Output the result JSON to an elasticsearch index/indices.
[More info](https://vector.dev/docs/reference/sinks/elasticsearch/)

### File
Output the result JSON to a file with an optional time based pattern.
[More info](https://vector.dev/docs/reference/sinks/file/)

### HTTP
Output the result JSON via an HTTP request.
[More info](https://vector.dev/docs/reference/sinks/http/)

### Kafka
Output the result JSON via a kafka.
[More info](https://vector.dev/docs/reference/sinks/kafka/)

### Splunk HEC
Output the result JSON via a Splunk HEC.
[More info](https://vector.dev/docs/reference/sinks/splunk_hec/)

## Running Tests

Run the following from the root directory to run the unit tests.

``` bash
pipenv run python run_tests.py     
```

The code coverage report will be generated in the /coverage/ directory.

Visit ` `  ` ./coverage/index.html `  ` ` to view the report.

## Development tools

* PyCharm

## Resources

``` 
* https://pypi.org/project/pipenv/
* https://censys.io/ipv4
* https://vector.dev/
* Lua programming language
* https://cloud.google.com/bigquery

```
