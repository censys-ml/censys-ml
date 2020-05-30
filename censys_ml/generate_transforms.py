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


def empty_check_lines(field):
    """
    Replaces any string field with an empty value
    """
    lines = list()
    lines.append(f'if event["{field}"] == " " or event["{field}"] == "" then')
    lines.append(f'  event["{field}"] = nil')
    lines.append('end')
    return lines


def general_case(field, out_field):
    lines = []
    if out_field == field:
        return lines
    lines.append(f'event["{field}"], event["{out_field}"] = nil, event["{field}"]')
    # lines.append('event["{}"] = event["{}"]'.format(out_field, field))
    if field[0] == 'p':
        line = f'\n\t event["{field[1:]}"], event["{out_field[1:]}"] = nil, event["{field[1:]}"]'
        lines.append(line)
    return lines


def generate_string_lines(field, out_field):
    lines = []
    lines.extend(general_case(field, out_field))
    # lines.extend(empty_check_lines(field))
    lines.extend(empty_check_lines(out_field))
    if field[0] == 'p':
        lines.extend(empty_check_lines(field[1:]))
    return lines


def generate_numeric_lines(field, out_field):
    lines = []
    lines.extend(general_case(out_field, field))
    return lines


def generate_string_script(midlines):
    utils.write_script_to_file(file_name='string_field', 
                               function_name='handle_string', 
                               data_lines=midlines)


def generate_numeric_script(midlines):
    utils.write_script_to_file(file_name='numeric_field', 
                               function_name='handle_numeric', 
                               data_lines=midlines)


def generate_generic_script(schema):
    # generates a script that clears the output dataset after replacement
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
            lines.append('event["{}"] = nil'.format(top_level_field))
            if top_level_field[0] == 'p':
                lines.append('event["{}"] = nil'.format(top_level_field[1:]))
            
    utils.write_script_to_file(file_name='general_field', 
                               function_name='handle_general', 
                               data_lines=lines)


def main():
    schema = utils.get_schema()
    numeric_lines = []
    string_lines = []
    
    for field in schema:
        _type = schema[field]['type']
        out_field = field.replace('.', '__')
        if _type in numeric_types:
            numeric_lines.extend(generate_numeric_lines(field, out_field))
        elif _type in string_types:
            # string_lines.extend(generate_string_lines(field))
            string_lines.extend(generate_string_lines(field, out_field))

    generate_numeric_script(numeric_lines)
    generate_string_script(string_lines)
    generate_generic_script(schema)


if __name__ == '__main__':
    main()
