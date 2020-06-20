from censys_ml.field_transforms import utils


def generate_string_lines(input_field, output_field):
    """
    :param input_field:
    :param output_field:
    :return:
    """
    lines = []
    lines.extend(utils.handle_general_case(input_field, output_field))
    lines.extend(utils.handle_null_string_case(input_field, output_field))
    return lines
