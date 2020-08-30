
function arr_has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end

function one_hot_encode(event, old_field, new_field, value)
	if event[old_field] == value then
	  event[new_field] = true
	else
	  event[new_field] = false
	end
end

--print(has_value({1, 7}, 7))
--print(tonumber("9"))