import sys, os
myPath = os.path.dirname(os.path.abspath(__file__))
print(myPath)
sys.path.insert(0, myPath + '/')

import json
import pytest
from data_generator import generate_mock_data
import generate_transforms
import utils
import lupa
import json_flatten
from lupa import LuaRuntime
lua = LuaRuntime(unpack_returned_tuples=True)

numeric_types = ['INTEGER', 'FLOAT', 'BOOLEAN']

def skip_writing_function(file_name, function_name, data_lines):
    return

def generate_script(mid_lines):
    lines = 'function(event)\n'
    for line in mid_lines:
        lines+= line
        lines+= '\n'
    lines+= 'end'
    return lines

#Tests Below

def test_general_case():
    lines = generate_transforms.general_case('protocols','protocols')
    assert lines == []
    lines = generate_transforms.general_case('__restricted.location', '__restricted_location')
    assert lines == ['event["__restricted.location"], event["__restricted_location"] = nil, event["__restricted.location"]']
    lines = generate_transforms.general_case('p11.restricted.location', 'p11_restricted_location')
    assert lines == ['event["p11.restricted.location"], event["p11_restricted_location"] = nil, event["p11.restricted.location"]',
                     '\n\t event["11.restricted.location"], event["11_restricted_location"] = nil, event["11.restricted.location"]']    


def test_generic(monkeypatch):
    check = ['event["double"] = nil', 'event["priple"] = nil', 'event["riple"] = nil']
    
    def review_lines(file_name, function_name, data_lines):
        for i in range (-1 , -4, -1):
            assert data_lines[i] == check[i]
        assert data_lines[-4] != 'event["double"]=nil'
    
    monkeypatch.setattr(utils, "write_script_to_file", review_lines)
    schema = """{
                    "single" : "single",
                    "double.first" : "double.first",
                    "double.second" : "double.second",
                    "priple.first.second" : "triple.first.second"
                }"""
    schema = json.loads(schema)
    generate_transforms.generate_generic_script(schema)



def test_string_scripts(monkeypatch):
    def mock_schema():
        schema = {"p443.https.body" : {"type" : "STRING" },"https.status" : {"type" : "STRING" },"443.https.header" : {"type" : "STRING" }}
        return schema
    def review_lines(mid_lines):
        script_lines = generate_script(mid_lines)
        
        lua_func = lua.eval(script_lines)
        Json = {"p443.https.body" : '',"443.https.body" : " ","https.status" : '',"443.https.header" : ' '}
        lua_func(Json)
        schema = mock_schema()
        print(script_lines)
        for field in schema:
            assert Json[field] == None, "You have uncaught empty strings...check code"
                
        
    monkeypatch.setattr(utils, "get_schema", mock_schema)
    monkeypatch.setattr(utils, "write_script_to_file", skip_writing_function)
    monkeypatch.setattr(generate_transforms,"generate_string_script", review_lines)
    generate_transforms.main()

def test_numeric_scripts(monkeypatch):
    def mock_schema():
        schema  = {"p443.https.body" : {"type" : "INTEGER" },"https.status" : {"type" : "FLOAT" },"443.https.header" : {"type" : "BOOLEAN" }}
        return schema
    def review_lines(mid_lines):
        script_lines = generate_script(mid_lines)
        
        lua_func = lua.eval(script_lines)
        Json = {"p443.https.body" : 'True',"443.https.body" : "34","https.status" : '242.24224',"443.https.header" : 'False'}
        lua_func(Json)
        print(script_lines)
        schema = mock_schema()
        for field in schema:
            assert Json[field] == None, "You have uncaught empty strings...check code"
                
        
    monkeypatch.setattr(utils, "get_schema", mock_schema)
    monkeypatch.setattr(utils, "write_script_to_file", skip_writing_function)
    monkeypatch.setattr(generate_transforms,"generate_numeric_script", review_lines)
    generate_transforms.main()
 


def test_numeric_mapping_with_mock_data(monkeypatch):
    def mock_schema():
        try:
            with open('../config/model_definition.json','r') as _file: #if run from in side the censys_ml dir
                results = json.load(_file)
        except:
            with open('./config/model_definition.json', 'r') as _file: #if run from root project dir
                results = json.load(_file)
        return results



    def review_numeric_lines(mid_lines):
        numeric_script = generate_script(mid_lines)
        schema = mock_schema()
        data = generate_mock_data(model = schema, numeric_fields= True)
        flattened_data = json_flatten.flatten(data)
            
        handle_numeric = lua.eval(numeric_script)
        handle_numeric(flattened_data)
        
        schema = mock_schema()
        for field in schema:
            _type = schema[field]['type']
            if _type in numeric_types:
                nodes = field.split('.')
                if len(nodes) == 1:
                    assert flattened_data[field] != None
                else:
                    assert flattened_data[field] == None
                    if field[0] == 'p':
                        assert flattened_data[field] == None, field
                



    
    monkeypatch.setattr(utils, "get_schema", mock_schema)
    monkeypatch.setattr(utils, "write_script_to_file", skip_writing_function)
    monkeypatch.setattr(generate_transforms,"generate_numeric_script", review_numeric_lines)
    generate_transforms.main()
    

    

 
