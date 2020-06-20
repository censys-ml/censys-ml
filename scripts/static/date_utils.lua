
function parse_timestamp(str)
    if str ~= nil and str ~= '' and str ~= ' ' then
        local timestamp_pattern = "(%d%d%d%d)[-](%d%d)[-](%d%d)T(%d%d):(%d%d):(%d%d).*"
        local year, month, day, hour, min, sec = string.match(str, timestamp_pattern)
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
            year    = nil,
            month   = nil,
            day     = nil,
            hour    = nil,
            min     = nil,
            sec     = nil,
            wday    = nil,
            yday    = nil
        }
    end
end

--print(parse_timestamp('2020-07-21T07:38:47Z')["year"])
--print(parse_timestamp('2020-07-21T07:38:47Z')["month"])
--print(parse_timestamp('2020-07-21T07:38:47Z')["day"])
--print(parse_timestamp('2020-07-21T07:38:47Z')["hour"])
--print(parse_timestamp('2020-07-21T07:38:47Z')["min"])
--print(parse_timestamp('2020-07-21T07:38:47Z')["sec"])
--print(parse_timestamp('2020-07-21T07:38:47Z')["isdst"])

--print(parse_timestamp('2020-04-28T07:38:47Z')["min"])
--print(parse_timestamp('2020-06-13T20:35:22.400267Z')["wday"])
--print(parse_timestamp('2020-05-25T03:27:30+00:00')["wday"])
--print(parse_timestamp('')["wday"])
--print(parse_timestamp(nil)["yday"])
--print(119 // 7)
