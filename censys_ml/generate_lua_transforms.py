from censys_ml import utils
from censys_ml.field_transforms import (
    numeric_field_transform,
    string_field_transform,
    time_field_transform
)

NUMERIC_TYPES = [
   "BOOLEAN",
   "FLOAT",
   "INTEGER",
]

TIME_TYPES = [
   "TIMESTAMP",
   "DATETIME",
]

STRING_TYPES = [
    "STRING",
]


def generate_output_field(input_field, field_type):
    """
    Grab an output field for a censys input field
    :param input_field: censys Field
    :return:
    """
    output_field = input_field.replace('.', '__')
    return output_field


def get_field_type(schema, input_field):
    """
    Grabs a type for a field
    :param schema: censys model
    :param input_field: censys field
    :return:
    """
    _type = schema[input_field]['type']
    return _type


def generate_string_script(lines):
    utils.write_script_to_file(file_name='string_field',
                               function_name='handle_string',
                               data_lines=lines)


def generate_numeric_script(lines):
    utils.write_script_to_file(file_name='numeric_field', 
                               function_name='handle_numeric', 
                               data_lines=lines)


def generate_time_script(lines):
    utils.write_script_to_file(file_name='time_field',
                               function_name='handle_time',
                               data_lines=lines)


def clear_lines_for_field(field):
    lines = [f'event["{field}"] = nil']
    if field[0] == 'p':
        lines.append(f'event["{field[1:]}"] = nil')
    return lines


def remove_input_fields(schema, additional_fields=None):
    """

    :param schema:
    :param additional_fields:
    :return:
    """
    lines = [
        '-- Remove all fields where the value is " "',
        '-- for f,v in ipairs(event) do',
        '--    if v == " " then',
        '--        event[f] = nil',
        '--    end',
        '-- end'
    ]
    seen_fields = set()
    for field in schema:
        fields = field.split('.')
        if len(fields) != 1:
            top_level_field = fields[0]
            if top_level_field not in seen_fields:
                seen_fields.add(top_level_field)
                lines.extend(clear_lines_for_field(top_level_field))

    if additional_fields:
        for field in additional_fields:
            lines.extend(clear_lines_for_field(field))

    utils.write_script_to_file(file_name='remove_input_fields',
                               function_name='remove_input_fields',
                               data_lines=lines)


def main():
    all_numeric_lines = []
    all_time_lines = []
    all_string_lines = []
    schema = utils.get_schema()

    for input_field in schema:
        field_type = get_field_type(schema, input_field)
        output_field = generate_output_field(input_field, field_type)

        if field_type in NUMERIC_TYPES:
            numeric_lines = numeric_field_transform.generate_numeric_lines(
                input_field=input_field,
                output_field=output_field
            )
            all_numeric_lines.extend(numeric_lines)

        elif field_type in STRING_TYPES:
            string_lines = string_field_transform.generate_string_lines(
                input_field=input_field,
                output_field=output_field
            )
            all_string_lines.extend(string_lines)

        elif field_type in TIME_TYPES:
            time_lines = time_field_transform.generate_time_lines(
                input_field=input_field,
                output_field=output_field
            )
            all_time_lines.extend(time_lines)

    generate_numeric_script(all_numeric_lines)
    generate_string_script(all_string_lines)
    generate_time_script(all_time_lines)
    remove_input_fields(schema, additional_fields=[
        'ports', 'tags', 'protocols'
    ])


if __name__ == '__main__':
    main()
