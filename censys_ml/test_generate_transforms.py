import sys, os
myPath = os.path.dirname(os.path.abspath(__file__))
print(myPath)
sys.path.insert(0, myPath + '/')

import json
import pytest
import data_generator
import generate_transforms
import utils
import lupa
import json_flatten
from lupa import LuaRuntime
lua = LuaRuntime(unpack_returned_tuples=True)



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


def test_general_case():
    lines = generate_transforms.general_case('protocols','protocols')
    assert lines == []
    lines = generate_transforms.general_case('__restricted.location', '__restricted_location')
    assert lines == ['event["__restricted.location"], event["__restricted_location"] = nil, event["__restricted.location"]']
    lines = generate_transforms.general_case('p11.restricted.location', 'p11_restricted_location')
    assert lines == ['event["p11.restricted.location"], event["p11_restricted_location"] = nil, event["p11.restricted.location"]',
                     '\n\t event["11.restricted.location"], event["11_restricted_location"] = nil, event["11.restricted.location"]']    

def test_string_scripts(monkeypatch):
    def mock_schema():
        schema = {"p443.https.body" : {"type" : "STRING" },"https.status" : {"type" : "STRING" },"443.https.header" : {"type" : "STRING" }}
        return schema
    def review_lines(mid_lines):
        lines = 'function(event)\n'
        for line in mid_lines:
            lines+= line
            lines+= '\n'
        lines+= 'end'
        
        lua_func = lua.eval(lines)
        Json = {"p443.https.body" : '',"443.https.body" : " ","https.status" : '',"443.https.header" : ' '}
        lua_func(Json)
        print(lines)
        for field in Json:
            assert Json[field] == None, "You have uncaught empty strings...check code"
                
        
    monkeypatch.setattr(utils, "get_schema", mock_schema)
    monkeypatch.setattr(generate_transforms,"generate_string_script", review_lines)
    generate_transforms.main()

def test_numeric_scripts(monkeypatch):
    global schema
    schema  = {"p443.https.body" : {"type" : "INTEGER" },"https.status" : {"type" : "FLOAT" },"443.https.header" : {"type" : "BOOLEAN" }}
    def mock_schema():
        global schema
        return schema
    def review_lines(mid_lines):
        lines = 'function(event)\n'
        for line in mid_lines:
            lines+= line
            lines+= '\n'
        lines+= 'end'
        
        lua_func = lua.eval(lines)
        Json = {"p443.https.body" : 'True',"443.https.body" : "34","https.status" : '242.24224',"443.https.header" : 'False'}
        lua_func(Json)
        print(lines)
        for field in schema:
            assert Json[field] == None, "You have uncaught empty strings...check code"
                
        
    monkeypatch.setattr(utils, "get_schema", mock_schema)
    monkeypatch.setattr(generate_transforms,"generate_numeric_script", review_lines)
    generate_transforms.main()
 

numeric_script = ''
numeric_types = ['INTEGER', 'FLOAT', 'BOOLEAN']

def test_numeric_mapping_with_mock_data(monkeypatch):
    def mock_schema():
        with open('../config/model_definition.json','r') as _file:
            results = json.load(_file)
        return results

    def review_numeric_lines(mid_lines):
        global numeric_script
        numeric_script = generate_script(mid_lines)
        data = data_generator.fill_with_mock(numeric_fields= True)
        Json = json_flatten.flatten(data)
            
        numeric = lua.eval(numeric_script)
        numeric(Json)
        schema = mock_schema()
        for field in schema:
            _type = schema[field]['type']
            if _type in numeric_types:
                fields = field.split('.')
                if len(fields) == 1:
                    continue
                if _type in numeric_types:
                    assert Json[field] == None
                    if field[0] == 'p':
                        assert Json[field] == None, field
                

    def generate_script(mid_lines):
        lines = 'function(event)\n'
        for line in mid_lines:
            lines+= line
            lines+= '\n'
        lines+= 'end'
        return lines


    
    monkeypatch.setattr(utils, "get_schema", mock_schema)
    monkeypatch.setattr(generate_transforms,"generate_numeric_script", review_numeric_lines)
    generate_transforms.main()
    
    

 

