from censys_ml.field_transforms import utils


def prep_new_output_field(occurrence, output_field):
    odd_chars = ['.', ' ', '-']
    new_key = occurrence.lower()
    for odd_char in odd_chars:
        new_key = new_key.replace(odd_char, '_')
    return f'{output_field}__{new_key}'


def handle_top_occurrences(input_field, output_field, field_data, n_vals=10):
    lines = []
    if 'top_values' in field_data and field_data['top_values']:
        for result in field_data['top_values']['results'][:n_vals]:
            occurrence = result['key']
            new_output_field = prep_new_output_field(occurrence, output_field)
            lines.append(
                f'one_hot_encode(event, "{input_field}", "{new_output_field}", "{occurrence}")'
            )
    return lines


def generate_string_lines(input_field, output_field, field_data):
    """
    :param input_field:
    :param output_field:
    :return:
    """
    lines = []
    lines.extend(utils.handle_general_case(input_field, output_field))
    lines.extend(utils.handle_null_string_case(input_field, output_field))
    lines.extend(handle_top_occurrences(input_field, output_field, field_data))
    return lines
