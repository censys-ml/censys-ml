import json

def all_mapped(JSON):
    JSON = json.loads(JSON)
    for i,(field,value) in enumerate(JSON.items()):
        if type(JSON[field]) != dict:
            return False
        elif not JSON[field]:
            continue
        else:
           nested_JSON = json.dumps(JSON[field])
           if not all_mapped(nested_JSON):
                return False 
    return True
        



def check_mapping(file_dir):
    with open(file_dir,'r') as _file:
        Model = json.load(_file)

    for i,(key,value) in enumerate(Model["Left_Over"].items()):
        if not all_mapped(Model["Left_Over"][key]):
            return False
    return True

def main():
    print('WithP mapped: ',check_mapping('withP'))
    print('WithoutP mapped: ',check_mapping('withoutP'))

if __name__ == '__main__':
    main()




