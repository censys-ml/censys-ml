import json
import random

numeric_types = ['INTEGER', 'BOOLEAN', 'FLOAT']
string_types = ["STRING"]
default_strings = [''," ", "lorem ipsum", "[sdf,sfd]", "src = \"www.google.com\""]

def get_schema():
    with open('../config/model_definition.json','r') as _file:
        results = json.load(_file)
        return results



def random_value_for_type(_type, return_string_values = True):
    value = None
    if _type == 'INTEGER':
       value = random.randint(1,10000)
    elif _type == 'BOOLEAN':
       value = bool(random.randint(0,1))
    elif _type == 'FLOAT':
       value = random.uniform(1,10000)
    elif _type == 'STRING':
            value = default_strings[random.randint(0, 4)]

            
    if return_string_values:
        return str(value)
    else:
        return value



#Function that builds and attaches descendant NODES to a ROOT field, and assigns values to its leaf field based on its _type
def assign_field_to_dict(root, nodes, _type, return_string_values=True):
    if len(nodes) > 1:
        try:
            assign_field_to_dict(root[nodes[0]], nodes[1:], _type, return_string_values)
        except:
            root[nodes[0]]={}
            assign_field_to_dict(root[nodes[0]], nodes[1:], _type, return_string_values)
    else:
        root[nodes[0]] = random_value_for_type(_type, return_string_values)



def generate_mock_data(model= None ,numeric_fields=False, string_fields=False, return_string_values = True):
    """ returns a dict filled with mock data from fields in the model definition"""

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
               assign_field_to_dict(mock_data, nodes_without_p, _type, return_string_values)
            assign_field_to_dict(mock_data, nodes, _type, return_string_values)

    return mock_data
            

if __name__ == '__main__':
    data = generate_mock_data(numeric_fields=True, string_fields=True, return_string_values = False)
    with open('mock_data.json','w') as _file:
        json.dump(data,_file,)
    

