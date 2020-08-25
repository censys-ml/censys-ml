function encode_key_length(str)
    if str ~= nil and str ~= '' and str ~= ' ' then
    	str = tonumber(str)
	print(str)
	result = {
            [256]   = 0,
            [384]   = 0,
            [521]   = 0,
            [512]    = 0,
	    [768]    = 0,
            [1024]  = 0,
            [2048]  = 0,
            [3072]    = 0,
            [4096]   = 0
        }
	result[str] = 1
	return result
    else
	return {
            [256]   = nil,
            [384]   = nil,
            [521]   = nil,
            [512]   = nil,
	    [768]   = nil,
            [1024]  = nil,
            [2048]  = nil,
            [3072]  = nil,
            [4096]  = nil
        }
    end
end


function encode_RSA_exponent(str)
    if str ~= nil and str ~= '' and str ~= ' ' then
    	str = tonumber(str)
	print(str)
	result = {
            [2]    = 0,
	    [3]    = 0,
            [5]  = 0,
            [17]  = 0,
            [257]    = 0,
            [65537]   = 0
        }
	result[str] = 1
	return result
    else
	return {
            [2]   = nil,
	    [3]   = nil,
            [5]  = nil,
            [17]  = nil,
            [257]  = nil,
            [65537]  = nil
        }
    end
end



function encode_SHA_support(str)
    if str ~= nil and str ~= '' and str ~= ' ' then
    	size = tonumber(str)
	result = {
            SHA1    = 0,
            SHA2   = 0
        }
	if size < 2048 then
	    result["SHA1"] = 1
	elseif size >2048 then
	    result["SHA2"] = 1
	end
	return result
    else
	return {
            SHA1   = nil,
            SHA2   = nil,
        }
    end
end

function encode_version_major(str)
    if str ~= nil and str ~= '' and str ~= ' ' then
    	str = tonumber(str)
	result = {
            [1]    = 0,
	    [2]    = 0,
	    [3]    = 0,
	    [4]    = 0,
            [5]  = 0,
            [6]  = 0,
            [7]  = 0,
            [8]   = 0,
            [9]   = 0,
            [10]   = 0
        }
	result[str] = 1
	return result
    else
	return {
            [1]    = nil,
	    [2]    = nil,
	    [3]    = nil,
	    [4]    = nil,
            [5]  = nil,
            [6]  = nil,
            [7]  = nil,
            [8]   = nil,
            [9]   = nil,
            [10]   = nil
        }
    end
end



function encode_certificate_version(str)
    if str ~= nil and str ~= '' and str ~= ' ' then
    	str = tonumber(str)
	result = {
            [1]  = 0,
            [2]  = 0,
            [3]   = 0
        }
	result[str] = 1
	return result
    else
	return {
            v1   = nil,
            v2   = nil,
            v3   = nil,
        }
    end
end


function encode_ecdsa_length(str)
    if str ~= nil and str ~= '' and str ~= ' ' then
    	str = tonumber(str)
	result = {
            [256]   = 0,
            [384]   = 0,
            [521]   = 0
        }
	result[str] = 1
	return result
    else
	return {
            [256]   = nil,
            [384]   = nil,
            [521]   = nil,
        }
    end
end

function encode_validity_length(str)
    if str ~= nil and str ~= '' and str ~= ' ' then
    	str = tonumber(str)
	return {
	    minutes = str // 60,
	    hours = str // 3600,
	    days = str // 86400,
	    weeks = str // 604800,
            months = str // 2.628e+6
	} 
    else
	return {
	    minutes = nil,
	    hours = nil,
    	    days = nil,
	    weeks = nil,
	    months = nil
	}
    end
end

function version_number(event, field)
    if event[field] ~= nil and event[field] ~= '' and event[field] ~= ' ' then
	major = event[field]
	minor_field = string.gsub(field, "major", "minor")
	minor = event[minor_field]
	major = tonumber(major)
	minor = tonumber(minor)
	minor = minor / 10 
	return major + minor
    else
	return nil
    end
end

function encode_status_code(str)
    if str ~= nil and str ~= '' and str ~= ' ' then
    	status_code = tonumber(str)
	result = {
            success       = 0,
            redirection   = 0,
            client_error  = 0,
	    server_error  = 0
        }
	
	if status_code < 200 then
            return result
	elseif status_code < 300 then
            result["success"] = 1
	elseif status_code < 400 then
	    result["redirection"] = 1
	elseif status_code < 500 then
	    result["client_error"] = 1
    	else
	    result["server_error"] = 1
	end
	return result
    else
	return {
            success       = nil,
            redirection   = nil,
            client_error  = nil,
	    server_error  = nil
        }
    end
end


function is_ashrae(str)
    if str ~= nil and str ~= '' and str ~= ' ' then
    	str = tonumber(str)
	result = {
            [555] = 1,
            [666]= 1,
            [777]= 1,
            [888]= 1,
            [911]= 1,
            [999]= 1,
            [1111] = 1,
        }
	bool = result[str] and 1 or 0
	return bool == 1
    else
	return nil
    end
end

function has_no_sub_CA(str)
    if str ~= nil and str ~= '' and str ~= ' ' then
    	str = tonumber(str)
	if str == 0 then
	    return true
        else
	    return false
	end
    else
	return nil
    end
end





--print (flatten_RSA_length('4096')["512"])
--print (flatten_RSA_length('4096')["v1024"])
--print (flatten_RSA_length('4096')["v2048])
--print (flatten_RSA_length('4096')["s4096"])