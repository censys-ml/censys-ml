

def get_basic_time_fields_from_date(input_field, output_field):
    return [
        f'parse_all_time_fields(event, "{input_field}", "{output_field}")'
    ]


def generate_time_lines(input_field, output_field, field_data=None):
    lines = []
    lines.extend(get_basic_time_fields_from_date(input_field, output_field))
    if input_field[0] == 'p':
        lines.extend(get_basic_time_fields_from_date(input_field[1:], output_field[1:]))
    return sorted(list(set(lines)))
