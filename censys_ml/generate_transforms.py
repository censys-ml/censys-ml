import utils

#numeric_types = [
#    "BOOLEAN",
#    "FLOAT",
#    "INTEGER",
#]

#time_types = [
#    "TIMESTAMP",
#    "DATETIME",
#]

string_types = [
    "STRING",
]

# def generate_numeric_script(midlines):
#     utils.write_script_to_file(file_name='numeric_field', 
#                                function_name='handle_numeric', 
#                                data_lines=midlines)



# def generate_numeric_lines(field, out_field):
#     lines = []
#     lines.extend(general_case(out_field, field))
#     return lines

# def generate_numeric_script(midlines):
#     utils.write_script_to_file(file_name='numeric_field', 
#                                function_name='handle_numeric', 
#                                data_lines=midlines)

def general_case(field, out_field):
    lines = []
    if out_field == field:
        return lines
    lines.append('event["{}"], event["{}"] = nil, event["{}"]'.format(field,out_field,field))
    if field[0] == 'p':
        lines.append('\n\t event["{}"], event["{}"] = nil, event["{}"]'.format(field[1:],out_field[1:],field[1:]))
    return lines

#Replaces any string field with an empty value
def empty_check_lines(field):
    lines = []
    lines.append('if event["{}"] == " " or event["{}"] == "" then'.format(field, field))
    lines.append('  event["{}"] = nil'.format(field))
    lines.append('end')
    return lines



def generate_string_lines(field):
    lines = []
    lines.extend(empty_check_lines(field))
    if field[0] == 'p':
        lines.extend(empty_check_lines(field[1:]))
    return lines



def generate_string_script(midlines):
    utils.write_script_to_file(file_name='string_field', 
                               function_name='handle_string', 
                               data_lines=midlines)

#generates a script that clears the output dataset after replacement 
def generate_generic_script(schema):
    lines = []

    seen_fields = set()
    for field in schema:
        fields = field.split('.')
        if len(fields) == 1:
            continue
        top_level_field = fields[0]
        if top_level_field not in seen_fields:
            seen_fields.add(top_level_field)
            lines.append('event["{}"] = nil'.format(top_level_field))
            if top_level_field[0] == 'p':
                lines.append('event["{}"] = nil'.format(top_level_field[1:]))
            
    utils.write_script_to_file(file_name='general_field', 
                               function_name='handle_general', 
                               data_lines=lines)

#Generates a script that swaps the branched representation of value with its equivalent flattened representation
def generate_replacer_lines(field,out_field):
    lines = [] 
    lines.extend(general_case(field,out_field))
    return lines

def generate_replacer_script(midlines):
    utils.write_script_to_file(file_name='replacer', 
                               function_name='handle_replacement', 
                               data_lines=midlines)    
    
def main():
    schema = utils.get_schema()
    string_lines = []
    replacer_lines = []
    
    for field in schema:
        _type = schema[field]['type']
        out_field = field.replace('.', '__')
        if _type in string_types:
            string_lines.extend(generate_string_lines(field))
        replacer_lines.extend(generate_replacer_lines(field, out_field))
        
    generate_string_script(string_lines)
    generate_replacer_script(replacer_lines)
    generate_generic_script(schema)




if __name__ == '__main__':
    main()
