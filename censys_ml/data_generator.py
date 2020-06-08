import json
import random

numeric_types = ['INTEGER', 'BOOLEAN', 'FLOAT']
string_types = ["STRING"]
insisted_string = []
strings = [''," ", "lorem ipsum", "[sdf,sfd]", "src = \"www.google.com\""]

def get_schema():
    with open('../config/model_definition.json','r') as _file:
        results = json.load(_file)
        return results

def attacher(event,field,_type):
    if len(field) > 1:
        try:
            attacher(event[field[0]], field[1:], _type)
        except:
            event[field[0]]={}
            attacher(event[field[0]], field[1:], _type)
    else:
        event[field[0]] = generate_value(_type)

def generate_value(_type):
    if _type == 'INTEGER':
       return str(random.randint(1,10000))
    elif _type == 'BOOLEAN':
       return str(bool(random.randint(0,1)))
    elif _type == 'FLOAT':
        return str(random.uniform(1,10000))
    elif _type == 'STRING':
        if insisted_string != []:
            return insisted_string[random.randint(0,len(insisted_string)-1)]
        return strings[random.randint(0, 4)]

def fill_with_mock(numeric_fields=False, string_fields=False, string=[]):
    global insisted_string
    insisted_string = string
    gen_data = []
    if numeric_fields == True:
        gen_data.extend(numeric_types)
    if string_fields == True:
        gen_data.extend(string_types)
    model = get_schema()
    withP = json.loads('{}')
    
    for field in model:
        _type = model[field]['type']
        fields = field.split('.')
        if _type in gen_data:
            if fields[0][0] == 'p':
               _fields = []
               _fields.extend(fields)
               _fields[0] = _fields[0][1:]
               attacher(withP, _fields, _type)
            attacher(withP, fields, _type)


    sample_json = {'withP': withP}
    insisted_string = []
    return withP
            

if __name__ == '__main__':
    data = (fill_with_mock(numeric_fields=True, string_fields=True))
    with open('mock_data.json','w') as _file:
        json.dump(data,_file,)
    

