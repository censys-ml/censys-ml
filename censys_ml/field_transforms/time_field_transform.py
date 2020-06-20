from censys_ml.field_transforms import utils

# More fields to include:
#   Difference in time span between two related time fields
#   LOOK AT THE CENSYS DATA MODEL (to get more features)

DAYS_IN_A_WEEK = 7
WEEKS_IN_A_QUARTER = 13
DAYS_IN_A_QUARTER = DAYS_IN_A_WEEK * WEEKS_IN_A_QUARTER


def add_year_fields(output_field):
    return [
        f'if event["{output_field}_yday"] ~= nil then',
        # (approximate) week of the year
        f'  event["{output_field}_yweek"] = (event["{output_field}_yday"] // {DAYS_IN_A_WEEK}) + 1',

        # (approximate) quarter of the year
        f'  event["{output_field}_yquarter"] = (event["{output_field}_yday"] // {DAYS_IN_A_QUARTER}) + 1',
        f'end'
    ]


def add_week_fields(output_field):
    return [
        f'if event["{output_field}_wday"] ~= nil then',
        # is during the weekend
        f'  event["{output_field}_is_weekend"] = arr_has_value(weekends, event["{output_field}_wday"])',

        # is during the weekday
        f'  event["{output_field}_is_weekday"] = arr_has_value(weekdays, event["{output_field}_wday"])',
        f'end'
    ]


def get_basic_time_fields_from_date(input_field, output_field):
    lines = []
    time_fields = [
        "year", "month", "day", "hour", "min", "sec",
        "yday",   # day of the year
        "wday",   # day of the week
        "isdst",  # is daylight savings
    ]
    for time_field in time_fields:
        lines.append(
            f'event["{output_field}_{time_field}"] = parse_timestamp(event["{input_field}"])["{time_field}"]'
        )
    # Note: do not move these files above the for loop....
    # they have a dependency on some of the generated fields
    lines.extend(add_year_fields(output_field))
    lines.extend(add_week_fields(output_field))
    return lines


def generate_time_lines(input_field, output_field):
    lines = []
    transform_functions = [
        get_basic_time_fields_from_date
    ]
    for transform_func in transform_functions:
        lines.extend(transform_func(input_field, output_field))
        lines.extend(utils.handle_general_case(input_field, output_field))
        if input_field[0] == 'p':
            lines.extend(transform_func(input_field[1:], output_field[1:]))
            lines.extend(utils.handle_general_case(input_field[1:], output_field[1:]))
    return lines
