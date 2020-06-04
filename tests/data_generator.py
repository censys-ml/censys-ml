import json
import random

numeric_types = ['INTEGER', 'BOOLEAN', 'FLOAT']

def get_schema():
    with open('./config/model_definition.json','r') as _file:
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
       return random.randint(1,10000)
    elif _type == 'BOOLEAN':
       return bool(random.randint(0,1))
    else:
        return random.uniform(1,10000)

def fill_with_mock():
    model = get_schema()
    print('model')
    withP = json.loads('{}')
    withoutP = json.loads('{}')
    
    
    for field in model:
        _type = model[field]['type']
        fields = field.split('.')
        if _type in numeric_types:
            if len(fields)>1 and fields[0][0] == 'p':
               _fields = []
               _fields.extend(fields)
               _fields[0] = _fields[0][1:]
               attacher(withoutP, _fields, _type)
            else:
               attacher(withoutP, fields, _type)
            attacher(withP, fields, _type)


    sample_json = {'withP': withP, 'withoutP' : withoutP}            
    return sample_json
            

def dumper(JSON,i):
    with open(f'./tests/test_vector/input/{i}.json','w') as _file:
        json.dump(JSON,_file,)

def generate_data():
    JSONS = fill_with_mock()
    for k,(i,data) in enumerate(JSONS.items()):
        dumper(data,i)

if __name__ == '__main__':
    generate_data()
