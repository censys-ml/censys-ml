import json
import random

numeric_types = ['INTEGER', 'BOOLEAN', 'FLOAT']
string_types = ["STRING"]
default_strings = [''," ", "lorem ipsum", "[sdf,sfd]", "src = \"www.google.com\""]

def get_schema():
    with open('../config/model_definition.json','r') as _file:
        results = json.load(_file)
        return results


#Function that builds and attaches descendant NODES to a ROOT field, and assigns values to its leaf field based on its _type
def assign_field_to_json(root, nodes,_type, insisted_strings, return_string_values=True):
    if len(nodes) > 1:
        try:
            assign_field_to_json(root[nodes[0]], nodes[1:], _type, insisted_strings, return_string_values)
        except:
            root[nodes[0]]={}
            assign_field_to_json(root[nodes[0]], nodes[1:], _type, insisted_strings, return_string_values)
    else:
        root[nodes[0]] = generate_value(_type, insisted_strings, return_string_values)

def generate_value(_type, insisted_strings=[], return_string_values = True):
    value = None
    if _type == 'INTEGER':
       value = random.randint(1,10000)
    elif _type == 'BOOLEAN':
       value = bool(random.randint(0,1))
    elif _type == 'FLOAT':
       value = random.uniform(1,10000)
    elif _type == 'STRING':
        if insisted_strings != []:
            value = insisted_strings[random.randint(0,len(insisted_string)-1)]
        else:
            value = default_strings[random.randint(0, 4)]

            
    if return_string_values:
        return str(value)
    else:
        return value


#returns a mock data filled with fields in the model definition
#insisted_strings is a list of strings that will be used instead of the default_strings list
def generate_mock_data(model= None ,numeric_fields=False, string_fields=False, insisted_strings=[], return_string_values = True):
    desired_types = []
    mock_data = json.loads('{}')
    
    if numeric_fields == True:
        desired_types.extend(numeric_types)
    if string_fields == True:
        desired_types.extend(string_types)
    if model == None:
        model = get_schema()
    
    for field in model:
        _type = model[field]['type']
        if _type in desired_types:
            nodes = field.split('.')
            if field[0] == 'p':
               nodes_without_p = field[1:].split('.')
               assign_field_to_json(mock_data, nodes_without_p, _type, insisted_strings, return_string_values)
            assign_field_to_json(mock_data, nodes, _type, insisted_strings, return_string_values)

    return mock_data
            

if __name__ == '__main__':
    data = generate_mock_data(numeric_fields=True, string_fields=True, return_string_values = False)
    with open('mock_data.json','w') as _file:
        json.dump(data,_file,)
    

