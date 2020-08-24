function encode_RSA_length(str)
    if str ~= nil and str ~= '' and str ~= ' ' then
    	result = {
            s512    = 0,
            s1024   = 0,
            s2048   = 0,
            s4096   = 0
        }
	result['s'..str] = 1
	return result
    else
	return {
            s512    = nil,
            s1024   = nil,
            s2048   = nil,
            s4096   = nil
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




function encode_certificate_version(str)
    if str ~= nil and str ~= '' and str ~= ' ' then
    	result = {
            v1   = 0,
            v2   = 0,
            v3   = 0
        }
	result['v'..str] = 1
	return result
    else
	return {
            v1   = nil,
            v2   = nil,
            v3   = nil,
        }
    end
end

function is_ashrae(str)
    if str ~= nil and str ~= '' and str ~= ' ' then
    	result = {
            v555 = 1,
            v666 = 1,
            v777 = 1,
            v888 = 1,
            v911 = 1,
            v999 = 1,
            v1111 = 1,
        }
	return result['v'..str] and 1 or 0
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


--print (flatten_RSA_length('4096')["s512"])
--print (flatten_RSA_length('4096')["v1024"])
--print (flatten_RSA_length('4096')["v2048])
--print (flatten_RSA_length('4096')["s4096"])