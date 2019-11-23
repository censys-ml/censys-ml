import utils

numeric_types = [
    "BOOLEAN",
    "FLOAT",
    "INTEGER",
]

time_types = [
    "TIMESTAMP",
    "DATETIME",
]

string_types = [
    "STRING",
]

# def generate_numeric_script(midlines):
#     utils.write_script_to_file(file_name='numeric_field', 
#                                function_name='handle_numeric', 
#                                data_lines=midlines)

# def generate_numeric_script(midlines):
#     utils.write_script_to_file(file_name='numeric_field', 
#                                function_name='handle_numeric', 
#                                data_lines=midlines)

def generate_numeric_line(field):
    line = 'event["{}"] = "{}"'.format(field, field)
    return line

def generate_numeric_script(midlines):
    utils.write_script_to_file(file_name='numeric_field', 
                               function_name='handle_numeric', 
                               data_lines=midlines)

def main():
    schema = utils.get_schema()
    numeric_lines = []
    time_lines = []
    string_lines = []
    
    for field in schema:
        _type = schema[field]['type']
        if _type in numeric_types:
            numeric_lines.append(generate_numeric_line(field))
        elif _type in time_types:
            time_lines.append('event["{}"] = {}'.format(field, ''))
        elif _type in string_lines:
            string_lines.append('event["{}"] = {}'.format(field, ''))
    
    generate_numeric_script(numeric_lines)
    




if __name__ == '__main__':
    main()
