# Censys-ML

Censys-ML is a Mapping tool that pulls data from [Censys](https://censys.com) and other similar sources to restructure and flatten the acquired dataset so that its easier to analyze.

![alt text](./img.png "Censys-ML Logo")



## Installation

###     Install Dependencies
At some point, we will be pulling data of from Google's [bigquery](https://cloud.google.com/bigquery),  Specially when we are grabbing the main schema to update our model definition. Use the package manager [pip](https://pip.pypa.io/en/stable/) to install Google cloud tools

```bash
pip install google.cloud
```

###     Install Vector

Vector is one on the key components of this project as it is used to transform or flatten the original dataset.
To install vector, run the bash script ***setup.sh*** in the ***scripts*** folder. You can also install vector using curl

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.vector.dev | sh
```

Vector can also be installed using other different methods. Take a look at [Vector installation Methods](https://vector.dev/docs/setup/installation/)



## Usage

###         	Generating the Lua Scripts

Before getting into the transformation phase we must first generate the Lua scripts that vector depends on.
These scripts are dynamically generated after looking at the schema set by these sources.
So lets generate these scripts first. To do this, you can simply execute the ***generate_transforms*** module in the ***censys_ml*** directory or you can run these lines in your terminal (from the root directory of the project) and it should generate Lua scripts based on your currently set Model Definition.

 ```bash
cd censys_ml
python generate_transforms.py
 ```

 ###        Handling Your Datasets

For now, this tool only handles file inputs and output. This means that you need to get your files in the right directory before you can expect to carry on the transformation. All input dataset **MUST** be found in the ***input*** folder inside the main ***vector*** directory. The datasets also need to be represented by a **single-line** **JSON** file. Here is a sample Dataset. As far as the output dataset goes, you can find it in the ***output*** folder inside main *vector* directory.

###         Transforming Your Dataset

To carry on with the transformation phase just execute the ***main.sh*** script in the scripts folder
or run this in a terminal from the root of the project folder

 ```bash
cd scripts
sh main.sh
 ```

You can gracefully shutdown the process once you're done.

You can then find your desired dataset in the ***output*** folder inside the vector directory. Your final dataset should be a flattened and unbranched JSON represented in a single line.



## Updating Your Model definition

The schema set by these sources is subject to change and these can in turn affect our final dataset if our
transformation is not working in accordance to them. This means that we need to update our model definition from time to time. To Update your Model definition, you can simply execute the ***update_model*** Module in the ***censys_ml*** directory or run these lines from a terminal within the root project folder.

```bash
cd censys_ml
python update_model.py
```

**N.B.** Make sure you have the correct **service file** in your ***auth*** folder inside the main ***config*** directory.



## Resources

```
- https://censys.io/ipv4
- https://vector.dev/
- Lua programming language
- https://cloud.google.com/bigquery
```



## License

[MIT](https://choosealicense.com/licenses/mit/)