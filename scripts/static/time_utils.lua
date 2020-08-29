function parse_timestamp(str)
    if str ~= nil and str ~= '' and str ~= ' ' then
        local timestamp_pattern =
            "(%d%d%d%d)[-](%d%d)[-](%d%d)T(%d%d):(%d%d):(%d%d).*"

        local year, month, day, hour, min, sec =
            string.match(str, timestamp_pattern)

        return os.date("*t", os.time({
            year = year,
            month = month,
            day = day,
            hour = hour,
            min = min,
            sec = sec
        }))
    else
        return {
            year = nil,
            month = nil,
            day = nil,
            hour = nil,
            min = nil,
            sec = nil,
            wday = nil,
            yday = nil
        }
    end
end

function parse_general_time_features(event,input_field, output_field)

    local parsed_timestamp = parse_timestamp(event[input_field])

    event[output_field.."_sec"] = parsed_timestamp["sec"]
    event[output_field.."_min"] = parsed_timestamp["min"]
    event[output_field.."_hour"] = parsed_timestamp["hour"]
    event[output_field.."_day"] = parsed_timestamp["day"]
    event[output_field.."_month"] = parsed_timestamp["month"]
    event[output_field.."_year"] = parsed_timestamp["year"]
    event[output_field.."_wday"] = parsed_timestamp["wday"] -- day of the week
    event[output_field.."_yday"] = parsed_timestamp["yday"] -- day of the year
    event[output_field.."_isdst"] = parsed_timestamp["isdst"] -- is daylight savings
end

function parse_year_features(event, output_field)
    local input_yday_field = output_field.."_yday"
    local output_yweek_field = output_field.."_yweek"
    local output_yquarter_field = output_field.."_yquarter"

    if event[input_yday_field] ~= nil then
        -- (approximate) week of the year
        event[output_yweek_field] = (event[input_yday_field] // DAYS_IN_A_WEEK) + 1

        -- (approximate) quarter of the year
        event[output_yquarter_field] = (event[input_yday_field] // DAYS_IN_A_QUARTER) + 1
    end
end

function parse_week_features(event, output_field)
    local input_wday_field = output_field.."_wday"
    local output_weekend_field = output_field.."_is_weekend"
    local output_weekday_field = output_field.."_is_weekday"

    if event[input_wday_field] ~= nil then
        -- is during the weekend
        event[output_weekend_field] = arr_has_value(weekends,
                                                    event[input_wday_field])

        -- is during the weekday
        event[output_weekday_field] = arr_has_value(weekdays,
                                                    event[input_wday_field])
    end
end


function parse_all_time_fields(event, input_field, output_field)
    -- Note: We can add a few more time fields:
    --  Difference in time span between two related time fields
    --  LOOK AT THE CENSYS DATA MODEL (to get more features)

    event[output_field] = event[input_field]
    parse_general_time_features(event, input_field, output_field)

    -- Note: do not move these lines above the general time features....
    -- they have a dependency on some of the generated fields
    parse_week_features(event, output_field)
    parse_year_features(event, output_field)
end


-- print(parse_timestamp('2020-07-21T07:38:47Z')["year"])
-- print(parse_timestamp('2020-07-21T07:38:47Z')["month"])
-- print(parse_timestamp('2020-07-21T07:38:47Z')["day"])
-- print(parse_timestamp('2020-07-21T07:38:47Z')["hour"])
-- print(parse_timestamp('2020-07-21T07:38:47Z')["min"])
-- print(parse_timestamp('2020-07-21T07:38:47Z')["sec"])
-- print(parse_timestamp('2020-07-21T07:38:47Z')["isdst"])

-- print(parse_timestamp('2020-04-28T07:38:47Z')["min"])
-- print(parse_timestamp('2020-06-13T20:35:22.400267Z')["wday"])
-- print(parse_timestamp('2020-05-25T03:27:30+00:00')["wday"])
-- print(parse_timestamp('')["wday"])
-- print(parse_timestamp(nil)["yday"])
-- print(119 // 7)
--print("a".."b")