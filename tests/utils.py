import configparser
import json

lua_dir = './scripts'

def get_config():
    config = configparser.ConfigParser()
    config.read('../config/config.ini')
    return config

def get_schema():
    with open(get_config()["censys"]["model_outfile"]) as _file:
        result = json.load(_file)
    return result

def write_script_to_file(file_name, function_name, data_lines):
    begin_line = "function {}(event)".format(function_name)
    end_line = "end"
    data = '\n'.join([begin_line] + ['\t' + d for d in data_lines] + [end_line])
    file_name = '{}/{}.lua'.format(lua_dir, file_name)
    with open(file_name, 'w') as _file:
        _file.write(data)
        
def generate_test_scripts(schema):
    # generates a script that saves fields of the original dataset
    # that may have not been mapped in the tranformation process
    lines = []
    general_script = \
    """-- Remove all fields where the value is " "
    -- for f,v in ipairs(event) do
    --    if v == " " then
    --        event[f] = nil
    --    end
    -- end
    """
    lines += general_script.split("\n")
    seen_fields = set()
    for field in schema:
        fields = field.split('.')
        if len(fields) == 1:
            continue
        top_level_field = fields[0]
        if top_level_field not in seen_fields:
            seen_fields.add(top_level_field)
            lines.append('event["{}"], event["Left_Over.{}"] = nil, event["{}"]'.format(top_level_field, top_level_field, top_level_field))
            if top_level_field[0] == 'p':
                lines.append('event["{}"], event["Left_over.{}"] = nil, event["{}"]'.format(top_level_field[1:],top_level_field[1:],top_level_field[1:] ))
            
    write_script_to_file(file_name='general_field_safely', 
                               function_name='handle_general', 
                               data_lines=lines)

def main():
    print([g for g in get_config()])
    generate_test_scripts(get_schema())

if __name__ == "__main__":
    main()
