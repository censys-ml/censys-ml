
function arr_has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

--print(has_value({1, 7}, 7))
--print(tonumber("9"))