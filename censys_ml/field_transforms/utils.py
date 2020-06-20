
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
