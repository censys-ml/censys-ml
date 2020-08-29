
def generate_null_lines(output_field):
    return [
        f'if event["{output_field}"] == " " or event["{output_field}"] == "" then',
        f'  event["{output_field}"] = nil',
        f'end'
    ]


def handle_null_string_case(input_field, output_field):
    """
    Output an empty value for any null field
    :param input_field:
    :param output_field:
    :return:
    """
    lines = list()
    lines.extend(generate_null_lines(output_field=output_field))
    if input_field[0] == 'p':
        lines.extend(generate_null_lines(output_field=output_field[1:]))
    return lines


def generate_generic_line(input_field, output_field):
    return f'event["{output_field}"] = event["{input_field}"]'


def generate_numeric_line(input_field, output_field):
    return f'event["{output_field}"] = tonumber(event["{input_field}"])'


def handle_general_case(input_field, output_field, line_generator=generate_generic_line):
    """
    :param input_field:
    :param output_field:
    :param line_generator:
    :return:
    """
    lines = []
    if input_field == output_field:
        return lines

    lines.append(line_generator(input_field, output_field))
    if input_field[0] == 'p':
        lines.append(line_generator(input_field[1:], output_field[1:]))
    return lines


def one_hot_encode(input_field, output_field, options, function_name, field_prefix=""):
    """
    Generates lua lines that One-Hot encodes a field from its possible options

    :param input_field: original censys field
    :param output_field: flattened version of censys field
    :param options: array of the possible values the input field can have
    :param function_name: the lua function that will encode the field
    :param field_prefix: an optional string to be concatenated at the end of original field
    :return:
    """
    lines = []
    for option in options:
        key = option
        if type(option) == str:
            key = f'"{option}"'
        lines.append(
            f'event["{output_field}_{field_prefix}{option}"] = {function_name}(event["{input_field}"])[{key}]'
        )
    return lines


def generate_relating_lines(input_field, output_field, function_name, field_prefix=""):
    """
    Generates lua lines that checks other fields related to input_field for feature engineering

    :param input_field: original censys field
    :param output_field: flattened version of censys field
    :param function_name: the lua function that will encode the field
    :param field_prefix: an optional string to be concatenated at the end of original field
    :return:
    """
    lines = [
        f'event["{output_field}_{field_prefix}"] = {function_name}(event, "{input_field}")'
    ]
    return lines


def generate_check_lines(input_field, output_field, function_name, field_prefix=""):
    """
    Generates lua lines that return bool on conditions set in the static script

    :param input_field: original censys field
    :param output_field: flattened version of censys field
    :param function_name: the lua function that will encode the field
    :param field_prefix: an optional string to be concatenated at the end of original field
    :return:
    """
    lines = [
        f'event["{output_field}_{field_prefix}"] = {function_name}(event["{input_field}"])'
    ]
    return lines
