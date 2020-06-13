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

Currently, this tool only handles file inputs and output. This means that the input files must be in the right directory before you can expect to carry on the transformation. All input dataset **MUST** be found in the ***input*** folder inside the main ***vector*** directory. The datasets also need to be represented by a **single-line** **JSON** file. As far as the output dataset goes, you can find it in the ***output*** folder inside main *vector* directory.

###         Transforming Datasets

To carry on with the transformation phase just execute the ***main.sh*** script in the scripts folder or run these lines in a terminal from the root of the project folder

 ```bash
cd scripts
bash main.sh
 ```

Gracefully shutdown the process once its done.

The output dataset can be found in the ***output*** folder inside the vector directory, It will be named with an extension of the date the transformation was carried out. the final dataset should be a flattened JSON version of the original dataset represented in a single line.



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
