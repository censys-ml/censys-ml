from censys_ml.field_transforms import utils


def generate_numeric_lines(input_field, output_field):
    lines = []
    lines.extend(utils.handle_general_case(input_field=input_field,
                                           output_field=output_field,
                                           line_generator=utils.generate_numeric_line))
    return lines
