function handle_time(event)
	event["updated_at_year"] = parse_timestamp(event["updated_at"])["year"]
	event["updated_at_month"] = parse_timestamp(event["updated_at"])["month"]
	event["updated_at_day"] = parse_timestamp(event["updated_at"])["day"]
	event["updated_at_hour"] = parse_timestamp(event["updated_at"])["hour"]
	event["updated_at_min"] = parse_timestamp(event["updated_at"])["min"]
	event["updated_at_sec"] = parse_timestamp(event["updated_at"])["sec"]
	event["updated_at_yday"] = parse_timestamp(event["updated_at"])["yday"]
	event["updated_at_wday"] = parse_timestamp(event["updated_at"])["wday"]
	event["updated_at_isdst"] = parse_timestamp(event["updated_at"])["isdst"]
	if event["updated_at_yday"] ~= nil then
	  event["updated_at_yweek"] = (event["updated_at_yday"] // 7) + 1
	  event["updated_at_yquarter"] = (event["updated_at_yday"] // 91) + 1
	end
	if event["updated_at_wday"] ~= nil then
	  event["updated_at_is_weekend"] = arr_has_value(weekends, event["updated_at_wday"])
	  event["updated_at_is_weekday"] = arr_has_value(weekdays, event["updated_at_wday"])
	end
	event["p110__pop3__starttls__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.validity.start"])["year"]
	event["p110__pop3__starttls__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.validity.start"])["month"]
	event["p110__pop3__starttls__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.validity.start"])["day"]
	event["p110__pop3__starttls__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.validity.start"])["hour"]
	event["p110__pop3__starttls__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.validity.start"])["min"]
	event["p110__pop3__starttls__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.validity.start"])["sec"]
	event["p110__pop3__starttls__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.validity.start"])["yday"]
	event["p110__pop3__starttls__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.validity.start"])["wday"]
	event["p110__pop3__starttls__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.validity.start"])["isdst"]
	if event["p110__pop3__starttls__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p110__pop3__starttls__tls__certificate__parsed__validity__start_yweek"] = (event["p110__pop3__starttls__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p110__pop3__starttls__tls__certificate__parsed__validity__start_yquarter"] = (event["p110__pop3__starttls__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p110__pop3__starttls__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p110__pop3__starttls__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p110__pop3__starttls__tls__certificate__parsed__validity__start_wday"])
	  event["p110__pop3__starttls__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p110__pop3__starttls__tls__certificate__parsed__validity__start_wday"])
	end
	event["p110__pop3__starttls__tls__certificate__parsed__validity__start"] = event["p110.pop3.starttls.tls.certificate.parsed.validity.start"]
	event["110__pop3__starttls__tls__certificate__parsed__validity__start"] = event["110.pop3.starttls.tls.certificate.parsed.validity.start"]
	event["110__pop3__starttls__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.validity.start"])["year"]
	event["110__pop3__starttls__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.validity.start"])["month"]
	event["110__pop3__starttls__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.validity.start"])["day"]
	event["110__pop3__starttls__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.validity.start"])["hour"]
	event["110__pop3__starttls__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.validity.start"])["min"]
	event["110__pop3__starttls__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.validity.start"])["sec"]
	event["110__pop3__starttls__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.validity.start"])["yday"]
	event["110__pop3__starttls__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.validity.start"])["wday"]
	event["110__pop3__starttls__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.validity.start"])["isdst"]
	if event["110__pop3__starttls__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["110__pop3__starttls__tls__certificate__parsed__validity__start_yweek"] = (event["110__pop3__starttls__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["110__pop3__starttls__tls__certificate__parsed__validity__start_yquarter"] = (event["110__pop3__starttls__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["110__pop3__starttls__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["110__pop3__starttls__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["110__pop3__starttls__tls__certificate__parsed__validity__start_wday"])
	  event["110__pop3__starttls__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["110__pop3__starttls__tls__certificate__parsed__validity__start_wday"])
	end
	event["110__pop3__starttls__tls__certificate__parsed__validity__start"] = event["110.pop3.starttls.tls.certificate.parsed.validity.start"]
	event["p110__pop3__starttls__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.validity.end"])["year"]
	event["p110__pop3__starttls__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.validity.end"])["month"]
	event["p110__pop3__starttls__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.validity.end"])["day"]
	event["p110__pop3__starttls__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.validity.end"])["hour"]
	event["p110__pop3__starttls__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.validity.end"])["min"]
	event["p110__pop3__starttls__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.validity.end"])["sec"]
	event["p110__pop3__starttls__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.validity.end"])["yday"]
	event["p110__pop3__starttls__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.validity.end"])["wday"]
	event["p110__pop3__starttls__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.validity.end"])["isdst"]
	if event["p110__pop3__starttls__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p110__pop3__starttls__tls__certificate__parsed__validity__end_yweek"] = (event["p110__pop3__starttls__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p110__pop3__starttls__tls__certificate__parsed__validity__end_yquarter"] = (event["p110__pop3__starttls__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p110__pop3__starttls__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p110__pop3__starttls__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p110__pop3__starttls__tls__certificate__parsed__validity__end_wday"])
	  event["p110__pop3__starttls__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p110__pop3__starttls__tls__certificate__parsed__validity__end_wday"])
	end
	event["p110__pop3__starttls__tls__certificate__parsed__validity__end"] = event["p110.pop3.starttls.tls.certificate.parsed.validity.end"]
	event["110__pop3__starttls__tls__certificate__parsed__validity__end"] = event["110.pop3.starttls.tls.certificate.parsed.validity.end"]
	event["110__pop3__starttls__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.validity.end"])["year"]
	event["110__pop3__starttls__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.validity.end"])["month"]
	event["110__pop3__starttls__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.validity.end"])["day"]
	event["110__pop3__starttls__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.validity.end"])["hour"]
	event["110__pop3__starttls__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.validity.end"])["min"]
	event["110__pop3__starttls__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.validity.end"])["sec"]
	event["110__pop3__starttls__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.validity.end"])["yday"]
	event["110__pop3__starttls__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.validity.end"])["wday"]
	event["110__pop3__starttls__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.validity.end"])["isdst"]
	if event["110__pop3__starttls__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["110__pop3__starttls__tls__certificate__parsed__validity__end_yweek"] = (event["110__pop3__starttls__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["110__pop3__starttls__tls__certificate__parsed__validity__end_yquarter"] = (event["110__pop3__starttls__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["110__pop3__starttls__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["110__pop3__starttls__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["110__pop3__starttls__tls__certificate__parsed__validity__end_wday"])
	  event["110__pop3__starttls__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["110__pop3__starttls__tls__certificate__parsed__validity__end_wday"])
	end
	event["110__pop3__starttls__tls__certificate__parsed__validity__end"] = event["110.pop3.starttls.tls.certificate.parsed.validity.end"]
	event["p110__pop3__starttls__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.validity.start"])["year"]
	event["p110__pop3__starttls__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.validity.start"])["month"]
	event["p110__pop3__starttls__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.validity.start"])["day"]
	event["p110__pop3__starttls__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.validity.start"])["hour"]
	event["p110__pop3__starttls__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.validity.start"])["min"]
	event["p110__pop3__starttls__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.validity.start"])["sec"]
	event["p110__pop3__starttls__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.validity.start"])["yday"]
	event["p110__pop3__starttls__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.validity.start"])["wday"]
	event["p110__pop3__starttls__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.validity.start"])["isdst"]
	if event["p110__pop3__starttls__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["p110__pop3__starttls__tls__chain__parsed__validity__start_yweek"] = (event["p110__pop3__starttls__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["p110__pop3__starttls__tls__chain__parsed__validity__start_yquarter"] = (event["p110__pop3__starttls__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p110__pop3__starttls__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["p110__pop3__starttls__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p110__pop3__starttls__tls__chain__parsed__validity__start_wday"])
	  event["p110__pop3__starttls__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p110__pop3__starttls__tls__chain__parsed__validity__start_wday"])
	end
	event["p110__pop3__starttls__tls__chain__parsed__validity__start"] = event["p110.pop3.starttls.tls.chain.parsed.validity.start"]
	event["110__pop3__starttls__tls__chain__parsed__validity__start"] = event["110.pop3.starttls.tls.chain.parsed.validity.start"]
	event["110__pop3__starttls__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.validity.start"])["year"]
	event["110__pop3__starttls__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.validity.start"])["month"]
	event["110__pop3__starttls__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.validity.start"])["day"]
	event["110__pop3__starttls__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.validity.start"])["hour"]
	event["110__pop3__starttls__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.validity.start"])["min"]
	event["110__pop3__starttls__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.validity.start"])["sec"]
	event["110__pop3__starttls__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.validity.start"])["yday"]
	event["110__pop3__starttls__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.validity.start"])["wday"]
	event["110__pop3__starttls__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.validity.start"])["isdst"]
	if event["110__pop3__starttls__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["110__pop3__starttls__tls__chain__parsed__validity__start_yweek"] = (event["110__pop3__starttls__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["110__pop3__starttls__tls__chain__parsed__validity__start_yquarter"] = (event["110__pop3__starttls__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["110__pop3__starttls__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["110__pop3__starttls__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["110__pop3__starttls__tls__chain__parsed__validity__start_wday"])
	  event["110__pop3__starttls__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["110__pop3__starttls__tls__chain__parsed__validity__start_wday"])
	end
	event["110__pop3__starttls__tls__chain__parsed__validity__start"] = event["110.pop3.starttls.tls.chain.parsed.validity.start"]
	event["p110__pop3__starttls__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.validity.end"])["year"]
	event["p110__pop3__starttls__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.validity.end"])["month"]
	event["p110__pop3__starttls__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.validity.end"])["day"]
	event["p110__pop3__starttls__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.validity.end"])["hour"]
	event["p110__pop3__starttls__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.validity.end"])["min"]
	event["p110__pop3__starttls__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.validity.end"])["sec"]
	event["p110__pop3__starttls__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.validity.end"])["yday"]
	event["p110__pop3__starttls__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.validity.end"])["wday"]
	event["p110__pop3__starttls__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.validity.end"])["isdst"]
	if event["p110__pop3__starttls__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["p110__pop3__starttls__tls__chain__parsed__validity__end_yweek"] = (event["p110__pop3__starttls__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["p110__pop3__starttls__tls__chain__parsed__validity__end_yquarter"] = (event["p110__pop3__starttls__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p110__pop3__starttls__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["p110__pop3__starttls__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p110__pop3__starttls__tls__chain__parsed__validity__end_wday"])
	  event["p110__pop3__starttls__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p110__pop3__starttls__tls__chain__parsed__validity__end_wday"])
	end
	event["p110__pop3__starttls__tls__chain__parsed__validity__end"] = event["p110.pop3.starttls.tls.chain.parsed.validity.end"]
	event["110__pop3__starttls__tls__chain__parsed__validity__end"] = event["110.pop3.starttls.tls.chain.parsed.validity.end"]
	event["110__pop3__starttls__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.validity.end"])["year"]
	event["110__pop3__starttls__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.validity.end"])["month"]
	event["110__pop3__starttls__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.validity.end"])["day"]
	event["110__pop3__starttls__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.validity.end"])["hour"]
	event["110__pop3__starttls__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.validity.end"])["min"]
	event["110__pop3__starttls__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.validity.end"])["sec"]
	event["110__pop3__starttls__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.validity.end"])["yday"]
	event["110__pop3__starttls__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.validity.end"])["wday"]
	event["110__pop3__starttls__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.validity.end"])["isdst"]
	if event["110__pop3__starttls__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["110__pop3__starttls__tls__chain__parsed__validity__end_yweek"] = (event["110__pop3__starttls__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["110__pop3__starttls__tls__chain__parsed__validity__end_yquarter"] = (event["110__pop3__starttls__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["110__pop3__starttls__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["110__pop3__starttls__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["110__pop3__starttls__tls__chain__parsed__validity__end_wday"])
	  event["110__pop3__starttls__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["110__pop3__starttls__tls__chain__parsed__validity__end_wday"])
	end
	event["110__pop3__starttls__tls__chain__parsed__validity__end"] = event["110.pop3.starttls.tls.chain.parsed.validity.end"]
	event["p25__smtp__starttls__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.validity.start"])["year"]
	event["p25__smtp__starttls__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.validity.start"])["month"]
	event["p25__smtp__starttls__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.validity.start"])["day"]
	event["p25__smtp__starttls__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.validity.start"])["hour"]
	event["p25__smtp__starttls__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.validity.start"])["min"]
	event["p25__smtp__starttls__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.validity.start"])["sec"]
	event["p25__smtp__starttls__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.validity.start"])["yday"]
	event["p25__smtp__starttls__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.validity.start"])["wday"]
	event["p25__smtp__starttls__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.validity.start"])["isdst"]
	if event["p25__smtp__starttls__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p25__smtp__starttls__tls__certificate__parsed__validity__start_yweek"] = (event["p25__smtp__starttls__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p25__smtp__starttls__tls__certificate__parsed__validity__start_yquarter"] = (event["p25__smtp__starttls__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p25__smtp__starttls__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p25__smtp__starttls__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p25__smtp__starttls__tls__certificate__parsed__validity__start_wday"])
	  event["p25__smtp__starttls__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p25__smtp__starttls__tls__certificate__parsed__validity__start_wday"])
	end
	event["p25__smtp__starttls__tls__certificate__parsed__validity__start"] = event["p25.smtp.starttls.tls.certificate.parsed.validity.start"]
	event["25__smtp__starttls__tls__certificate__parsed__validity__start"] = event["25.smtp.starttls.tls.certificate.parsed.validity.start"]
	event["25__smtp__starttls__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.validity.start"])["year"]
	event["25__smtp__starttls__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.validity.start"])["month"]
	event["25__smtp__starttls__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.validity.start"])["day"]
	event["25__smtp__starttls__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.validity.start"])["hour"]
	event["25__smtp__starttls__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.validity.start"])["min"]
	event["25__smtp__starttls__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.validity.start"])["sec"]
	event["25__smtp__starttls__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.validity.start"])["yday"]
	event["25__smtp__starttls__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.validity.start"])["wday"]
	event["25__smtp__starttls__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.validity.start"])["isdst"]
	if event["25__smtp__starttls__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["25__smtp__starttls__tls__certificate__parsed__validity__start_yweek"] = (event["25__smtp__starttls__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["25__smtp__starttls__tls__certificate__parsed__validity__start_yquarter"] = (event["25__smtp__starttls__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["25__smtp__starttls__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["25__smtp__starttls__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["25__smtp__starttls__tls__certificate__parsed__validity__start_wday"])
	  event["25__smtp__starttls__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["25__smtp__starttls__tls__certificate__parsed__validity__start_wday"])
	end
	event["25__smtp__starttls__tls__certificate__parsed__validity__start"] = event["25.smtp.starttls.tls.certificate.parsed.validity.start"]
	event["p25__smtp__starttls__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.validity.end"])["year"]
	event["p25__smtp__starttls__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.validity.end"])["month"]
	event["p25__smtp__starttls__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.validity.end"])["day"]
	event["p25__smtp__starttls__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.validity.end"])["hour"]
	event["p25__smtp__starttls__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.validity.end"])["min"]
	event["p25__smtp__starttls__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.validity.end"])["sec"]
	event["p25__smtp__starttls__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.validity.end"])["yday"]
	event["p25__smtp__starttls__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.validity.end"])["wday"]
	event["p25__smtp__starttls__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.validity.end"])["isdst"]
	if event["p25__smtp__starttls__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p25__smtp__starttls__tls__certificate__parsed__validity__end_yweek"] = (event["p25__smtp__starttls__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p25__smtp__starttls__tls__certificate__parsed__validity__end_yquarter"] = (event["p25__smtp__starttls__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p25__smtp__starttls__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p25__smtp__starttls__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p25__smtp__starttls__tls__certificate__parsed__validity__end_wday"])
	  event["p25__smtp__starttls__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p25__smtp__starttls__tls__certificate__parsed__validity__end_wday"])
	end
	event["p25__smtp__starttls__tls__certificate__parsed__validity__end"] = event["p25.smtp.starttls.tls.certificate.parsed.validity.end"]
	event["25__smtp__starttls__tls__certificate__parsed__validity__end"] = event["25.smtp.starttls.tls.certificate.parsed.validity.end"]
	event["25__smtp__starttls__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.validity.end"])["year"]
	event["25__smtp__starttls__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.validity.end"])["month"]
	event["25__smtp__starttls__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.validity.end"])["day"]
	event["25__smtp__starttls__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.validity.end"])["hour"]
	event["25__smtp__starttls__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.validity.end"])["min"]
	event["25__smtp__starttls__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.validity.end"])["sec"]
	event["25__smtp__starttls__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.validity.end"])["yday"]
	event["25__smtp__starttls__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.validity.end"])["wday"]
	event["25__smtp__starttls__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.validity.end"])["isdst"]
	if event["25__smtp__starttls__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["25__smtp__starttls__tls__certificate__parsed__validity__end_yweek"] = (event["25__smtp__starttls__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["25__smtp__starttls__tls__certificate__parsed__validity__end_yquarter"] = (event["25__smtp__starttls__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["25__smtp__starttls__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["25__smtp__starttls__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["25__smtp__starttls__tls__certificate__parsed__validity__end_wday"])
	  event["25__smtp__starttls__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["25__smtp__starttls__tls__certificate__parsed__validity__end_wday"])
	end
	event["25__smtp__starttls__tls__certificate__parsed__validity__end"] = event["25.smtp.starttls.tls.certificate.parsed.validity.end"]
	event["p25__smtp__starttls__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.validity.start"])["year"]
	event["p25__smtp__starttls__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.validity.start"])["month"]
	event["p25__smtp__starttls__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.validity.start"])["day"]
	event["p25__smtp__starttls__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.validity.start"])["hour"]
	event["p25__smtp__starttls__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.validity.start"])["min"]
	event["p25__smtp__starttls__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.validity.start"])["sec"]
	event["p25__smtp__starttls__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.validity.start"])["yday"]
	event["p25__smtp__starttls__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.validity.start"])["wday"]
	event["p25__smtp__starttls__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.validity.start"])["isdst"]
	if event["p25__smtp__starttls__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["p25__smtp__starttls__tls__chain__parsed__validity__start_yweek"] = (event["p25__smtp__starttls__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["p25__smtp__starttls__tls__chain__parsed__validity__start_yquarter"] = (event["p25__smtp__starttls__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p25__smtp__starttls__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["p25__smtp__starttls__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p25__smtp__starttls__tls__chain__parsed__validity__start_wday"])
	  event["p25__smtp__starttls__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p25__smtp__starttls__tls__chain__parsed__validity__start_wday"])
	end
	event["p25__smtp__starttls__tls__chain__parsed__validity__start"] = event["p25.smtp.starttls.tls.chain.parsed.validity.start"]
	event["25__smtp__starttls__tls__chain__parsed__validity__start"] = event["25.smtp.starttls.tls.chain.parsed.validity.start"]
	event["25__smtp__starttls__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.validity.start"])["year"]
	event["25__smtp__starttls__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.validity.start"])["month"]
	event["25__smtp__starttls__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.validity.start"])["day"]
	event["25__smtp__starttls__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.validity.start"])["hour"]
	event["25__smtp__starttls__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.validity.start"])["min"]
	event["25__smtp__starttls__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.validity.start"])["sec"]
	event["25__smtp__starttls__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.validity.start"])["yday"]
	event["25__smtp__starttls__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.validity.start"])["wday"]
	event["25__smtp__starttls__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.validity.start"])["isdst"]
	if event["25__smtp__starttls__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["25__smtp__starttls__tls__chain__parsed__validity__start_yweek"] = (event["25__smtp__starttls__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["25__smtp__starttls__tls__chain__parsed__validity__start_yquarter"] = (event["25__smtp__starttls__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["25__smtp__starttls__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["25__smtp__starttls__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["25__smtp__starttls__tls__chain__parsed__validity__start_wday"])
	  event["25__smtp__starttls__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["25__smtp__starttls__tls__chain__parsed__validity__start_wday"])
	end
	event["25__smtp__starttls__tls__chain__parsed__validity__start"] = event["25.smtp.starttls.tls.chain.parsed.validity.start"]
	event["p25__smtp__starttls__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.validity.end"])["year"]
	event["p25__smtp__starttls__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.validity.end"])["month"]
	event["p25__smtp__starttls__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.validity.end"])["day"]
	event["p25__smtp__starttls__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.validity.end"])["hour"]
	event["p25__smtp__starttls__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.validity.end"])["min"]
	event["p25__smtp__starttls__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.validity.end"])["sec"]
	event["p25__smtp__starttls__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.validity.end"])["yday"]
	event["p25__smtp__starttls__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.validity.end"])["wday"]
	event["p25__smtp__starttls__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.validity.end"])["isdst"]
	if event["p25__smtp__starttls__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["p25__smtp__starttls__tls__chain__parsed__validity__end_yweek"] = (event["p25__smtp__starttls__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["p25__smtp__starttls__tls__chain__parsed__validity__end_yquarter"] = (event["p25__smtp__starttls__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p25__smtp__starttls__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["p25__smtp__starttls__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p25__smtp__starttls__tls__chain__parsed__validity__end_wday"])
	  event["p25__smtp__starttls__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p25__smtp__starttls__tls__chain__parsed__validity__end_wday"])
	end
	event["p25__smtp__starttls__tls__chain__parsed__validity__end"] = event["p25.smtp.starttls.tls.chain.parsed.validity.end"]
	event["25__smtp__starttls__tls__chain__parsed__validity__end"] = event["25.smtp.starttls.tls.chain.parsed.validity.end"]
	event["25__smtp__starttls__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.validity.end"])["year"]
	event["25__smtp__starttls__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.validity.end"])["month"]
	event["25__smtp__starttls__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.validity.end"])["day"]
	event["25__smtp__starttls__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.validity.end"])["hour"]
	event["25__smtp__starttls__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.validity.end"])["min"]
	event["25__smtp__starttls__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.validity.end"])["sec"]
	event["25__smtp__starttls__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.validity.end"])["yday"]
	event["25__smtp__starttls__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.validity.end"])["wday"]
	event["25__smtp__starttls__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.validity.end"])["isdst"]
	if event["25__smtp__starttls__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["25__smtp__starttls__tls__chain__parsed__validity__end_yweek"] = (event["25__smtp__starttls__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["25__smtp__starttls__tls__chain__parsed__validity__end_yquarter"] = (event["25__smtp__starttls__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["25__smtp__starttls__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["25__smtp__starttls__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["25__smtp__starttls__tls__chain__parsed__validity__end_wday"])
	  event["25__smtp__starttls__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["25__smtp__starttls__tls__chain__parsed__validity__end_wday"])
	end
	event["25__smtp__starttls__tls__chain__parsed__validity__end"] = event["25.smtp.starttls.tls.chain.parsed.validity.end"]
	event["p995__pop3s__tls__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.validity.start"])["year"]
	event["p995__pop3s__tls__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.validity.start"])["month"]
	event["p995__pop3s__tls__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.validity.start"])["day"]
	event["p995__pop3s__tls__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.validity.start"])["hour"]
	event["p995__pop3s__tls__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.validity.start"])["min"]
	event["p995__pop3s__tls__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.validity.start"])["sec"]
	event["p995__pop3s__tls__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.validity.start"])["yday"]
	event["p995__pop3s__tls__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.validity.start"])["wday"]
	event["p995__pop3s__tls__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.validity.start"])["isdst"]
	if event["p995__pop3s__tls__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p995__pop3s__tls__tls__certificate__parsed__validity__start_yweek"] = (event["p995__pop3s__tls__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p995__pop3s__tls__tls__certificate__parsed__validity__start_yquarter"] = (event["p995__pop3s__tls__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p995__pop3s__tls__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p995__pop3s__tls__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p995__pop3s__tls__tls__certificate__parsed__validity__start_wday"])
	  event["p995__pop3s__tls__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p995__pop3s__tls__tls__certificate__parsed__validity__start_wday"])
	end
	event["p995__pop3s__tls__tls__certificate__parsed__validity__start"] = event["p995.pop3s.tls.tls.certificate.parsed.validity.start"]
	event["995__pop3s__tls__tls__certificate__parsed__validity__start"] = event["995.pop3s.tls.tls.certificate.parsed.validity.start"]
	event["995__pop3s__tls__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.validity.start"])["year"]
	event["995__pop3s__tls__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.validity.start"])["month"]
	event["995__pop3s__tls__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.validity.start"])["day"]
	event["995__pop3s__tls__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.validity.start"])["hour"]
	event["995__pop3s__tls__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.validity.start"])["min"]
	event["995__pop3s__tls__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.validity.start"])["sec"]
	event["995__pop3s__tls__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.validity.start"])["yday"]
	event["995__pop3s__tls__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.validity.start"])["wday"]
	event["995__pop3s__tls__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.validity.start"])["isdst"]
	if event["995__pop3s__tls__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["995__pop3s__tls__tls__certificate__parsed__validity__start_yweek"] = (event["995__pop3s__tls__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["995__pop3s__tls__tls__certificate__parsed__validity__start_yquarter"] = (event["995__pop3s__tls__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["995__pop3s__tls__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["995__pop3s__tls__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["995__pop3s__tls__tls__certificate__parsed__validity__start_wday"])
	  event["995__pop3s__tls__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["995__pop3s__tls__tls__certificate__parsed__validity__start_wday"])
	end
	event["995__pop3s__tls__tls__certificate__parsed__validity__start"] = event["995.pop3s.tls.tls.certificate.parsed.validity.start"]
	event["p995__pop3s__tls__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.validity.end"])["year"]
	event["p995__pop3s__tls__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.validity.end"])["month"]
	event["p995__pop3s__tls__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.validity.end"])["day"]
	event["p995__pop3s__tls__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.validity.end"])["hour"]
	event["p995__pop3s__tls__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.validity.end"])["min"]
	event["p995__pop3s__tls__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.validity.end"])["sec"]
	event["p995__pop3s__tls__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.validity.end"])["yday"]
	event["p995__pop3s__tls__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.validity.end"])["wday"]
	event["p995__pop3s__tls__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.validity.end"])["isdst"]
	if event["p995__pop3s__tls__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p995__pop3s__tls__tls__certificate__parsed__validity__end_yweek"] = (event["p995__pop3s__tls__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p995__pop3s__tls__tls__certificate__parsed__validity__end_yquarter"] = (event["p995__pop3s__tls__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p995__pop3s__tls__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p995__pop3s__tls__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p995__pop3s__tls__tls__certificate__parsed__validity__end_wday"])
	  event["p995__pop3s__tls__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p995__pop3s__tls__tls__certificate__parsed__validity__end_wday"])
	end
	event["p995__pop3s__tls__tls__certificate__parsed__validity__end"] = event["p995.pop3s.tls.tls.certificate.parsed.validity.end"]
	event["995__pop3s__tls__tls__certificate__parsed__validity__end"] = event["995.pop3s.tls.tls.certificate.parsed.validity.end"]
	event["995__pop3s__tls__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.validity.end"])["year"]
	event["995__pop3s__tls__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.validity.end"])["month"]
	event["995__pop3s__tls__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.validity.end"])["day"]
	event["995__pop3s__tls__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.validity.end"])["hour"]
	event["995__pop3s__tls__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.validity.end"])["min"]
	event["995__pop3s__tls__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.validity.end"])["sec"]
	event["995__pop3s__tls__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.validity.end"])["yday"]
	event["995__pop3s__tls__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.validity.end"])["wday"]
	event["995__pop3s__tls__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.validity.end"])["isdst"]
	if event["995__pop3s__tls__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["995__pop3s__tls__tls__certificate__parsed__validity__end_yweek"] = (event["995__pop3s__tls__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["995__pop3s__tls__tls__certificate__parsed__validity__end_yquarter"] = (event["995__pop3s__tls__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["995__pop3s__tls__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["995__pop3s__tls__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["995__pop3s__tls__tls__certificate__parsed__validity__end_wday"])
	  event["995__pop3s__tls__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["995__pop3s__tls__tls__certificate__parsed__validity__end_wday"])
	end
	event["995__pop3s__tls__tls__certificate__parsed__validity__end"] = event["995.pop3s.tls.tls.certificate.parsed.validity.end"]
	event["p995__pop3s__tls__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.validity.start"])["year"]
	event["p995__pop3s__tls__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.validity.start"])["month"]
	event["p995__pop3s__tls__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.validity.start"])["day"]
	event["p995__pop3s__tls__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.validity.start"])["hour"]
	event["p995__pop3s__tls__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.validity.start"])["min"]
	event["p995__pop3s__tls__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.validity.start"])["sec"]
	event["p995__pop3s__tls__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.validity.start"])["yday"]
	event["p995__pop3s__tls__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.validity.start"])["wday"]
	event["p995__pop3s__tls__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.validity.start"])["isdst"]
	if event["p995__pop3s__tls__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["p995__pop3s__tls__tls__chain__parsed__validity__start_yweek"] = (event["p995__pop3s__tls__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["p995__pop3s__tls__tls__chain__parsed__validity__start_yquarter"] = (event["p995__pop3s__tls__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p995__pop3s__tls__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["p995__pop3s__tls__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p995__pop3s__tls__tls__chain__parsed__validity__start_wday"])
	  event["p995__pop3s__tls__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p995__pop3s__tls__tls__chain__parsed__validity__start_wday"])
	end
	event["p995__pop3s__tls__tls__chain__parsed__validity__start"] = event["p995.pop3s.tls.tls.chain.parsed.validity.start"]
	event["995__pop3s__tls__tls__chain__parsed__validity__start"] = event["995.pop3s.tls.tls.chain.parsed.validity.start"]
	event["995__pop3s__tls__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.validity.start"])["year"]
	event["995__pop3s__tls__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.validity.start"])["month"]
	event["995__pop3s__tls__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.validity.start"])["day"]
	event["995__pop3s__tls__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.validity.start"])["hour"]
	event["995__pop3s__tls__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.validity.start"])["min"]
	event["995__pop3s__tls__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.validity.start"])["sec"]
	event["995__pop3s__tls__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.validity.start"])["yday"]
	event["995__pop3s__tls__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.validity.start"])["wday"]
	event["995__pop3s__tls__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.validity.start"])["isdst"]
	if event["995__pop3s__tls__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["995__pop3s__tls__tls__chain__parsed__validity__start_yweek"] = (event["995__pop3s__tls__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["995__pop3s__tls__tls__chain__parsed__validity__start_yquarter"] = (event["995__pop3s__tls__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["995__pop3s__tls__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["995__pop3s__tls__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["995__pop3s__tls__tls__chain__parsed__validity__start_wday"])
	  event["995__pop3s__tls__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["995__pop3s__tls__tls__chain__parsed__validity__start_wday"])
	end
	event["995__pop3s__tls__tls__chain__parsed__validity__start"] = event["995.pop3s.tls.tls.chain.parsed.validity.start"]
	event["p995__pop3s__tls__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.validity.end"])["year"]
	event["p995__pop3s__tls__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.validity.end"])["month"]
	event["p995__pop3s__tls__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.validity.end"])["day"]
	event["p995__pop3s__tls__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.validity.end"])["hour"]
	event["p995__pop3s__tls__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.validity.end"])["min"]
	event["p995__pop3s__tls__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.validity.end"])["sec"]
	event["p995__pop3s__tls__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.validity.end"])["yday"]
	event["p995__pop3s__tls__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.validity.end"])["wday"]
	event["p995__pop3s__tls__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.validity.end"])["isdst"]
	if event["p995__pop3s__tls__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["p995__pop3s__tls__tls__chain__parsed__validity__end_yweek"] = (event["p995__pop3s__tls__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["p995__pop3s__tls__tls__chain__parsed__validity__end_yquarter"] = (event["p995__pop3s__tls__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p995__pop3s__tls__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["p995__pop3s__tls__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p995__pop3s__tls__tls__chain__parsed__validity__end_wday"])
	  event["p995__pop3s__tls__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p995__pop3s__tls__tls__chain__parsed__validity__end_wday"])
	end
	event["p995__pop3s__tls__tls__chain__parsed__validity__end"] = event["p995.pop3s.tls.tls.chain.parsed.validity.end"]
	event["995__pop3s__tls__tls__chain__parsed__validity__end"] = event["995.pop3s.tls.tls.chain.parsed.validity.end"]
	event["995__pop3s__tls__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.validity.end"])["year"]
	event["995__pop3s__tls__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.validity.end"])["month"]
	event["995__pop3s__tls__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.validity.end"])["day"]
	event["995__pop3s__tls__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.validity.end"])["hour"]
	event["995__pop3s__tls__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.validity.end"])["min"]
	event["995__pop3s__tls__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.validity.end"])["sec"]
	event["995__pop3s__tls__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.validity.end"])["yday"]
	event["995__pop3s__tls__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.validity.end"])["wday"]
	event["995__pop3s__tls__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.validity.end"])["isdst"]
	if event["995__pop3s__tls__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["995__pop3s__tls__tls__chain__parsed__validity__end_yweek"] = (event["995__pop3s__tls__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["995__pop3s__tls__tls__chain__parsed__validity__end_yquarter"] = (event["995__pop3s__tls__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["995__pop3s__tls__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["995__pop3s__tls__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["995__pop3s__tls__tls__chain__parsed__validity__end_wday"])
	  event["995__pop3s__tls__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["995__pop3s__tls__tls__chain__parsed__validity__end_wday"])
	end
	event["995__pop3s__tls__tls__chain__parsed__validity__end"] = event["995.pop3s.tls.tls.chain.parsed.validity.end"]
	event["p143__imap__starttls__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.validity.start"])["year"]
	event["p143__imap__starttls__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.validity.start"])["month"]
	event["p143__imap__starttls__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.validity.start"])["day"]
	event["p143__imap__starttls__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.validity.start"])["hour"]
	event["p143__imap__starttls__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.validity.start"])["min"]
	event["p143__imap__starttls__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.validity.start"])["sec"]
	event["p143__imap__starttls__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.validity.start"])["yday"]
	event["p143__imap__starttls__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.validity.start"])["wday"]
	event["p143__imap__starttls__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.validity.start"])["isdst"]
	if event["p143__imap__starttls__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p143__imap__starttls__tls__certificate__parsed__validity__start_yweek"] = (event["p143__imap__starttls__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p143__imap__starttls__tls__certificate__parsed__validity__start_yquarter"] = (event["p143__imap__starttls__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p143__imap__starttls__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p143__imap__starttls__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p143__imap__starttls__tls__certificate__parsed__validity__start_wday"])
	  event["p143__imap__starttls__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p143__imap__starttls__tls__certificate__parsed__validity__start_wday"])
	end
	event["p143__imap__starttls__tls__certificate__parsed__validity__start"] = event["p143.imap.starttls.tls.certificate.parsed.validity.start"]
	event["143__imap__starttls__tls__certificate__parsed__validity__start"] = event["143.imap.starttls.tls.certificate.parsed.validity.start"]
	event["143__imap__starttls__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.validity.start"])["year"]
	event["143__imap__starttls__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.validity.start"])["month"]
	event["143__imap__starttls__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.validity.start"])["day"]
	event["143__imap__starttls__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.validity.start"])["hour"]
	event["143__imap__starttls__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.validity.start"])["min"]
	event["143__imap__starttls__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.validity.start"])["sec"]
	event["143__imap__starttls__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.validity.start"])["yday"]
	event["143__imap__starttls__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.validity.start"])["wday"]
	event["143__imap__starttls__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.validity.start"])["isdst"]
	if event["143__imap__starttls__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["143__imap__starttls__tls__certificate__parsed__validity__start_yweek"] = (event["143__imap__starttls__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["143__imap__starttls__tls__certificate__parsed__validity__start_yquarter"] = (event["143__imap__starttls__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["143__imap__starttls__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["143__imap__starttls__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["143__imap__starttls__tls__certificate__parsed__validity__start_wday"])
	  event["143__imap__starttls__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["143__imap__starttls__tls__certificate__parsed__validity__start_wday"])
	end
	event["143__imap__starttls__tls__certificate__parsed__validity__start"] = event["143.imap.starttls.tls.certificate.parsed.validity.start"]
	event["p143__imap__starttls__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.validity.end"])["year"]
	event["p143__imap__starttls__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.validity.end"])["month"]
	event["p143__imap__starttls__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.validity.end"])["day"]
	event["p143__imap__starttls__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.validity.end"])["hour"]
	event["p143__imap__starttls__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.validity.end"])["min"]
	event["p143__imap__starttls__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.validity.end"])["sec"]
	event["p143__imap__starttls__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.validity.end"])["yday"]
	event["p143__imap__starttls__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.validity.end"])["wday"]
	event["p143__imap__starttls__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.validity.end"])["isdst"]
	if event["p143__imap__starttls__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p143__imap__starttls__tls__certificate__parsed__validity__end_yweek"] = (event["p143__imap__starttls__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p143__imap__starttls__tls__certificate__parsed__validity__end_yquarter"] = (event["p143__imap__starttls__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p143__imap__starttls__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p143__imap__starttls__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p143__imap__starttls__tls__certificate__parsed__validity__end_wday"])
	  event["p143__imap__starttls__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p143__imap__starttls__tls__certificate__parsed__validity__end_wday"])
	end
	event["p143__imap__starttls__tls__certificate__parsed__validity__end"] = event["p143.imap.starttls.tls.certificate.parsed.validity.end"]
	event["143__imap__starttls__tls__certificate__parsed__validity__end"] = event["143.imap.starttls.tls.certificate.parsed.validity.end"]
	event["143__imap__starttls__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.validity.end"])["year"]
	event["143__imap__starttls__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.validity.end"])["month"]
	event["143__imap__starttls__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.validity.end"])["day"]
	event["143__imap__starttls__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.validity.end"])["hour"]
	event["143__imap__starttls__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.validity.end"])["min"]
	event["143__imap__starttls__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.validity.end"])["sec"]
	event["143__imap__starttls__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.validity.end"])["yday"]
	event["143__imap__starttls__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.validity.end"])["wday"]
	event["143__imap__starttls__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.validity.end"])["isdst"]
	if event["143__imap__starttls__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["143__imap__starttls__tls__certificate__parsed__validity__end_yweek"] = (event["143__imap__starttls__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["143__imap__starttls__tls__certificate__parsed__validity__end_yquarter"] = (event["143__imap__starttls__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["143__imap__starttls__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["143__imap__starttls__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["143__imap__starttls__tls__certificate__parsed__validity__end_wday"])
	  event["143__imap__starttls__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["143__imap__starttls__tls__certificate__parsed__validity__end_wday"])
	end
	event["143__imap__starttls__tls__certificate__parsed__validity__end"] = event["143.imap.starttls.tls.certificate.parsed.validity.end"]
	event["p143__imap__starttls__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.validity.start"])["year"]
	event["p143__imap__starttls__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.validity.start"])["month"]
	event["p143__imap__starttls__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.validity.start"])["day"]
	event["p143__imap__starttls__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.validity.start"])["hour"]
	event["p143__imap__starttls__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.validity.start"])["min"]
	event["p143__imap__starttls__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.validity.start"])["sec"]
	event["p143__imap__starttls__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.validity.start"])["yday"]
	event["p143__imap__starttls__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.validity.start"])["wday"]
	event["p143__imap__starttls__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.validity.start"])["isdst"]
	if event["p143__imap__starttls__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["p143__imap__starttls__tls__chain__parsed__validity__start_yweek"] = (event["p143__imap__starttls__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["p143__imap__starttls__tls__chain__parsed__validity__start_yquarter"] = (event["p143__imap__starttls__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p143__imap__starttls__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["p143__imap__starttls__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p143__imap__starttls__tls__chain__parsed__validity__start_wday"])
	  event["p143__imap__starttls__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p143__imap__starttls__tls__chain__parsed__validity__start_wday"])
	end
	event["p143__imap__starttls__tls__chain__parsed__validity__start"] = event["p143.imap.starttls.tls.chain.parsed.validity.start"]
	event["143__imap__starttls__tls__chain__parsed__validity__start"] = event["143.imap.starttls.tls.chain.parsed.validity.start"]
	event["143__imap__starttls__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.validity.start"])["year"]
	event["143__imap__starttls__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.validity.start"])["month"]
	event["143__imap__starttls__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.validity.start"])["day"]
	event["143__imap__starttls__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.validity.start"])["hour"]
	event["143__imap__starttls__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.validity.start"])["min"]
	event["143__imap__starttls__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.validity.start"])["sec"]
	event["143__imap__starttls__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.validity.start"])["yday"]
	event["143__imap__starttls__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.validity.start"])["wday"]
	event["143__imap__starttls__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.validity.start"])["isdst"]
	if event["143__imap__starttls__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["143__imap__starttls__tls__chain__parsed__validity__start_yweek"] = (event["143__imap__starttls__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["143__imap__starttls__tls__chain__parsed__validity__start_yquarter"] = (event["143__imap__starttls__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["143__imap__starttls__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["143__imap__starttls__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["143__imap__starttls__tls__chain__parsed__validity__start_wday"])
	  event["143__imap__starttls__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["143__imap__starttls__tls__chain__parsed__validity__start_wday"])
	end
	event["143__imap__starttls__tls__chain__parsed__validity__start"] = event["143.imap.starttls.tls.chain.parsed.validity.start"]
	event["p143__imap__starttls__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.validity.end"])["year"]
	event["p143__imap__starttls__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.validity.end"])["month"]
	event["p143__imap__starttls__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.validity.end"])["day"]
	event["p143__imap__starttls__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.validity.end"])["hour"]
	event["p143__imap__starttls__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.validity.end"])["min"]
	event["p143__imap__starttls__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.validity.end"])["sec"]
	event["p143__imap__starttls__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.validity.end"])["yday"]
	event["p143__imap__starttls__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.validity.end"])["wday"]
	event["p143__imap__starttls__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.validity.end"])["isdst"]
	if event["p143__imap__starttls__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["p143__imap__starttls__tls__chain__parsed__validity__end_yweek"] = (event["p143__imap__starttls__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["p143__imap__starttls__tls__chain__parsed__validity__end_yquarter"] = (event["p143__imap__starttls__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p143__imap__starttls__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["p143__imap__starttls__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p143__imap__starttls__tls__chain__parsed__validity__end_wday"])
	  event["p143__imap__starttls__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p143__imap__starttls__tls__chain__parsed__validity__end_wday"])
	end
	event["p143__imap__starttls__tls__chain__parsed__validity__end"] = event["p143.imap.starttls.tls.chain.parsed.validity.end"]
	event["143__imap__starttls__tls__chain__parsed__validity__end"] = event["143.imap.starttls.tls.chain.parsed.validity.end"]
	event["143__imap__starttls__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.validity.end"])["year"]
	event["143__imap__starttls__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.validity.end"])["month"]
	event["143__imap__starttls__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.validity.end"])["day"]
	event["143__imap__starttls__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.validity.end"])["hour"]
	event["143__imap__starttls__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.validity.end"])["min"]
	event["143__imap__starttls__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.validity.end"])["sec"]
	event["143__imap__starttls__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.validity.end"])["yday"]
	event["143__imap__starttls__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.validity.end"])["wday"]
	event["143__imap__starttls__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.validity.end"])["isdst"]
	if event["143__imap__starttls__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["143__imap__starttls__tls__chain__parsed__validity__end_yweek"] = (event["143__imap__starttls__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["143__imap__starttls__tls__chain__parsed__validity__end_yquarter"] = (event["143__imap__starttls__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["143__imap__starttls__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["143__imap__starttls__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["143__imap__starttls__tls__chain__parsed__validity__end_wday"])
	  event["143__imap__starttls__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["143__imap__starttls__tls__chain__parsed__validity__end_wday"])
	end
	event["143__imap__starttls__tls__chain__parsed__validity__end"] = event["143.imap.starttls.tls.chain.parsed.validity.end"]
	event["p993__imaps__tls__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.validity.start"])["year"]
	event["p993__imaps__tls__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.validity.start"])["month"]
	event["p993__imaps__tls__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.validity.start"])["day"]
	event["p993__imaps__tls__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.validity.start"])["hour"]
	event["p993__imaps__tls__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.validity.start"])["min"]
	event["p993__imaps__tls__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.validity.start"])["sec"]
	event["p993__imaps__tls__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.validity.start"])["yday"]
	event["p993__imaps__tls__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.validity.start"])["wday"]
	event["p993__imaps__tls__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.validity.start"])["isdst"]
	if event["p993__imaps__tls__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p993__imaps__tls__tls__certificate__parsed__validity__start_yweek"] = (event["p993__imaps__tls__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p993__imaps__tls__tls__certificate__parsed__validity__start_yquarter"] = (event["p993__imaps__tls__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p993__imaps__tls__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p993__imaps__tls__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p993__imaps__tls__tls__certificate__parsed__validity__start_wday"])
	  event["p993__imaps__tls__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p993__imaps__tls__tls__certificate__parsed__validity__start_wday"])
	end
	event["p993__imaps__tls__tls__certificate__parsed__validity__start"] = event["p993.imaps.tls.tls.certificate.parsed.validity.start"]
	event["993__imaps__tls__tls__certificate__parsed__validity__start"] = event["993.imaps.tls.tls.certificate.parsed.validity.start"]
	event["993__imaps__tls__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.validity.start"])["year"]
	event["993__imaps__tls__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.validity.start"])["month"]
	event["993__imaps__tls__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.validity.start"])["day"]
	event["993__imaps__tls__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.validity.start"])["hour"]
	event["993__imaps__tls__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.validity.start"])["min"]
	event["993__imaps__tls__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.validity.start"])["sec"]
	event["993__imaps__tls__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.validity.start"])["yday"]
	event["993__imaps__tls__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.validity.start"])["wday"]
	event["993__imaps__tls__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.validity.start"])["isdst"]
	if event["993__imaps__tls__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["993__imaps__tls__tls__certificate__parsed__validity__start_yweek"] = (event["993__imaps__tls__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["993__imaps__tls__tls__certificate__parsed__validity__start_yquarter"] = (event["993__imaps__tls__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["993__imaps__tls__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["993__imaps__tls__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["993__imaps__tls__tls__certificate__parsed__validity__start_wday"])
	  event["993__imaps__tls__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["993__imaps__tls__tls__certificate__parsed__validity__start_wday"])
	end
	event["993__imaps__tls__tls__certificate__parsed__validity__start"] = event["993.imaps.tls.tls.certificate.parsed.validity.start"]
	event["p993__imaps__tls__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.validity.end"])["year"]
	event["p993__imaps__tls__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.validity.end"])["month"]
	event["p993__imaps__tls__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.validity.end"])["day"]
	event["p993__imaps__tls__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.validity.end"])["hour"]
	event["p993__imaps__tls__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.validity.end"])["min"]
	event["p993__imaps__tls__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.validity.end"])["sec"]
	event["p993__imaps__tls__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.validity.end"])["yday"]
	event["p993__imaps__tls__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.validity.end"])["wday"]
	event["p993__imaps__tls__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.validity.end"])["isdst"]
	if event["p993__imaps__tls__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p993__imaps__tls__tls__certificate__parsed__validity__end_yweek"] = (event["p993__imaps__tls__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p993__imaps__tls__tls__certificate__parsed__validity__end_yquarter"] = (event["p993__imaps__tls__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p993__imaps__tls__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p993__imaps__tls__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p993__imaps__tls__tls__certificate__parsed__validity__end_wday"])
	  event["p993__imaps__tls__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p993__imaps__tls__tls__certificate__parsed__validity__end_wday"])
	end
	event["p993__imaps__tls__tls__certificate__parsed__validity__end"] = event["p993.imaps.tls.tls.certificate.parsed.validity.end"]
	event["993__imaps__tls__tls__certificate__parsed__validity__end"] = event["993.imaps.tls.tls.certificate.parsed.validity.end"]
	event["993__imaps__tls__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.validity.end"])["year"]
	event["993__imaps__tls__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.validity.end"])["month"]
	event["993__imaps__tls__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.validity.end"])["day"]
	event["993__imaps__tls__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.validity.end"])["hour"]
	event["993__imaps__tls__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.validity.end"])["min"]
	event["993__imaps__tls__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.validity.end"])["sec"]
	event["993__imaps__tls__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.validity.end"])["yday"]
	event["993__imaps__tls__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.validity.end"])["wday"]
	event["993__imaps__tls__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.validity.end"])["isdst"]
	if event["993__imaps__tls__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["993__imaps__tls__tls__certificate__parsed__validity__end_yweek"] = (event["993__imaps__tls__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["993__imaps__tls__tls__certificate__parsed__validity__end_yquarter"] = (event["993__imaps__tls__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["993__imaps__tls__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["993__imaps__tls__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["993__imaps__tls__tls__certificate__parsed__validity__end_wday"])
	  event["993__imaps__tls__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["993__imaps__tls__tls__certificate__parsed__validity__end_wday"])
	end
	event["993__imaps__tls__tls__certificate__parsed__validity__end"] = event["993.imaps.tls.tls.certificate.parsed.validity.end"]
	event["p993__imaps__tls__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.validity.start"])["year"]
	event["p993__imaps__tls__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.validity.start"])["month"]
	event["p993__imaps__tls__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.validity.start"])["day"]
	event["p993__imaps__tls__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.validity.start"])["hour"]
	event["p993__imaps__tls__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.validity.start"])["min"]
	event["p993__imaps__tls__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.validity.start"])["sec"]
	event["p993__imaps__tls__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.validity.start"])["yday"]
	event["p993__imaps__tls__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.validity.start"])["wday"]
	event["p993__imaps__tls__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.validity.start"])["isdst"]
	if event["p993__imaps__tls__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["p993__imaps__tls__tls__chain__parsed__validity__start_yweek"] = (event["p993__imaps__tls__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["p993__imaps__tls__tls__chain__parsed__validity__start_yquarter"] = (event["p993__imaps__tls__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p993__imaps__tls__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["p993__imaps__tls__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p993__imaps__tls__tls__chain__parsed__validity__start_wday"])
	  event["p993__imaps__tls__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p993__imaps__tls__tls__chain__parsed__validity__start_wday"])
	end
	event["p993__imaps__tls__tls__chain__parsed__validity__start"] = event["p993.imaps.tls.tls.chain.parsed.validity.start"]
	event["993__imaps__tls__tls__chain__parsed__validity__start"] = event["993.imaps.tls.tls.chain.parsed.validity.start"]
	event["993__imaps__tls__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.validity.start"])["year"]
	event["993__imaps__tls__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.validity.start"])["month"]
	event["993__imaps__tls__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.validity.start"])["day"]
	event["993__imaps__tls__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.validity.start"])["hour"]
	event["993__imaps__tls__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.validity.start"])["min"]
	event["993__imaps__tls__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.validity.start"])["sec"]
	event["993__imaps__tls__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.validity.start"])["yday"]
	event["993__imaps__tls__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.validity.start"])["wday"]
	event["993__imaps__tls__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.validity.start"])["isdst"]
	if event["993__imaps__tls__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["993__imaps__tls__tls__chain__parsed__validity__start_yweek"] = (event["993__imaps__tls__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["993__imaps__tls__tls__chain__parsed__validity__start_yquarter"] = (event["993__imaps__tls__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["993__imaps__tls__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["993__imaps__tls__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["993__imaps__tls__tls__chain__parsed__validity__start_wday"])
	  event["993__imaps__tls__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["993__imaps__tls__tls__chain__parsed__validity__start_wday"])
	end
	event["993__imaps__tls__tls__chain__parsed__validity__start"] = event["993.imaps.tls.tls.chain.parsed.validity.start"]
	event["p993__imaps__tls__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.validity.end"])["year"]
	event["p993__imaps__tls__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.validity.end"])["month"]
	event["p993__imaps__tls__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.validity.end"])["day"]
	event["p993__imaps__tls__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.validity.end"])["hour"]
	event["p993__imaps__tls__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.validity.end"])["min"]
	event["p993__imaps__tls__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.validity.end"])["sec"]
	event["p993__imaps__tls__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.validity.end"])["yday"]
	event["p993__imaps__tls__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.validity.end"])["wday"]
	event["p993__imaps__tls__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.validity.end"])["isdst"]
	if event["p993__imaps__tls__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["p993__imaps__tls__tls__chain__parsed__validity__end_yweek"] = (event["p993__imaps__tls__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["p993__imaps__tls__tls__chain__parsed__validity__end_yquarter"] = (event["p993__imaps__tls__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p993__imaps__tls__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["p993__imaps__tls__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p993__imaps__tls__tls__chain__parsed__validity__end_wday"])
	  event["p993__imaps__tls__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p993__imaps__tls__tls__chain__parsed__validity__end_wday"])
	end
	event["p993__imaps__tls__tls__chain__parsed__validity__end"] = event["p993.imaps.tls.tls.chain.parsed.validity.end"]
	event["993__imaps__tls__tls__chain__parsed__validity__end"] = event["993.imaps.tls.tls.chain.parsed.validity.end"]
	event["993__imaps__tls__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.validity.end"])["year"]
	event["993__imaps__tls__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.validity.end"])["month"]
	event["993__imaps__tls__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.validity.end"])["day"]
	event["993__imaps__tls__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.validity.end"])["hour"]
	event["993__imaps__tls__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.validity.end"])["min"]
	event["993__imaps__tls__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.validity.end"])["sec"]
	event["993__imaps__tls__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.validity.end"])["yday"]
	event["993__imaps__tls__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.validity.end"])["wday"]
	event["993__imaps__tls__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.validity.end"])["isdst"]
	if event["993__imaps__tls__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["993__imaps__tls__tls__chain__parsed__validity__end_yweek"] = (event["993__imaps__tls__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["993__imaps__tls__tls__chain__parsed__validity__end_yquarter"] = (event["993__imaps__tls__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["993__imaps__tls__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["993__imaps__tls__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["993__imaps__tls__tls__chain__parsed__validity__end_wday"])
	  event["993__imaps__tls__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["993__imaps__tls__tls__chain__parsed__validity__end_wday"])
	end
	event["993__imaps__tls__tls__chain__parsed__validity__end"] = event["993.imaps.tls.tls.chain.parsed.validity.end"]
	event["p443__https__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["p443.https.tls.certificate.parsed.validity.start"])["year"]
	event["p443__https__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["p443.https.tls.certificate.parsed.validity.start"])["month"]
	event["p443__https__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["p443.https.tls.certificate.parsed.validity.start"])["day"]
	event["p443__https__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p443.https.tls.certificate.parsed.validity.start"])["hour"]
	event["p443__https__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["p443.https.tls.certificate.parsed.validity.start"])["min"]
	event["p443__https__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p443.https.tls.certificate.parsed.validity.start"])["sec"]
	event["p443__https__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p443.https.tls.certificate.parsed.validity.start"])["yday"]
	event["p443__https__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p443.https.tls.certificate.parsed.validity.start"])["wday"]
	event["p443__https__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p443.https.tls.certificate.parsed.validity.start"])["isdst"]
	if event["p443__https__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p443__https__tls__certificate__parsed__validity__start_yweek"] = (event["p443__https__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p443__https__tls__certificate__parsed__validity__start_yquarter"] = (event["p443__https__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p443__https__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p443__https__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p443__https__tls__certificate__parsed__validity__start_wday"])
	  event["p443__https__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p443__https__tls__certificate__parsed__validity__start_wday"])
	end
	event["p443__https__tls__certificate__parsed__validity__start"] = event["p443.https.tls.certificate.parsed.validity.start"]
	event["443__https__tls__certificate__parsed__validity__start"] = event["443.https.tls.certificate.parsed.validity.start"]
	event["443__https__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["443.https.tls.certificate.parsed.validity.start"])["year"]
	event["443__https__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["443.https.tls.certificate.parsed.validity.start"])["month"]
	event["443__https__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["443.https.tls.certificate.parsed.validity.start"])["day"]
	event["443__https__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["443.https.tls.certificate.parsed.validity.start"])["hour"]
	event["443__https__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["443.https.tls.certificate.parsed.validity.start"])["min"]
	event["443__https__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["443.https.tls.certificate.parsed.validity.start"])["sec"]
	event["443__https__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["443.https.tls.certificate.parsed.validity.start"])["yday"]
	event["443__https__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["443.https.tls.certificate.parsed.validity.start"])["wday"]
	event["443__https__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["443.https.tls.certificate.parsed.validity.start"])["isdst"]
	if event["443__https__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["443__https__tls__certificate__parsed__validity__start_yweek"] = (event["443__https__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["443__https__tls__certificate__parsed__validity__start_yquarter"] = (event["443__https__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["443__https__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["443__https__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["443__https__tls__certificate__parsed__validity__start_wday"])
	  event["443__https__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["443__https__tls__certificate__parsed__validity__start_wday"])
	end
	event["443__https__tls__certificate__parsed__validity__start"] = event["443.https.tls.certificate.parsed.validity.start"]
	event["p443__https__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["p443.https.tls.certificate.parsed.validity.end"])["year"]
	event["p443__https__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["p443.https.tls.certificate.parsed.validity.end"])["month"]
	event["p443__https__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["p443.https.tls.certificate.parsed.validity.end"])["day"]
	event["p443__https__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p443.https.tls.certificate.parsed.validity.end"])["hour"]
	event["p443__https__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["p443.https.tls.certificate.parsed.validity.end"])["min"]
	event["p443__https__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p443.https.tls.certificate.parsed.validity.end"])["sec"]
	event["p443__https__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p443.https.tls.certificate.parsed.validity.end"])["yday"]
	event["p443__https__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p443.https.tls.certificate.parsed.validity.end"])["wday"]
	event["p443__https__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p443.https.tls.certificate.parsed.validity.end"])["isdst"]
	if event["p443__https__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p443__https__tls__certificate__parsed__validity__end_yweek"] = (event["p443__https__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p443__https__tls__certificate__parsed__validity__end_yquarter"] = (event["p443__https__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p443__https__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p443__https__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p443__https__tls__certificate__parsed__validity__end_wday"])
	  event["p443__https__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p443__https__tls__certificate__parsed__validity__end_wday"])
	end
	event["p443__https__tls__certificate__parsed__validity__end"] = event["p443.https.tls.certificate.parsed.validity.end"]
	event["443__https__tls__certificate__parsed__validity__end"] = event["443.https.tls.certificate.parsed.validity.end"]
	event["443__https__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["443.https.tls.certificate.parsed.validity.end"])["year"]
	event["443__https__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["443.https.tls.certificate.parsed.validity.end"])["month"]
	event["443__https__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["443.https.tls.certificate.parsed.validity.end"])["day"]
	event["443__https__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["443.https.tls.certificate.parsed.validity.end"])["hour"]
	event["443__https__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["443.https.tls.certificate.parsed.validity.end"])["min"]
	event["443__https__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["443.https.tls.certificate.parsed.validity.end"])["sec"]
	event["443__https__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["443.https.tls.certificate.parsed.validity.end"])["yday"]
	event["443__https__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["443.https.tls.certificate.parsed.validity.end"])["wday"]
	event["443__https__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["443.https.tls.certificate.parsed.validity.end"])["isdst"]
	if event["443__https__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["443__https__tls__certificate__parsed__validity__end_yweek"] = (event["443__https__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["443__https__tls__certificate__parsed__validity__end_yquarter"] = (event["443__https__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["443__https__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["443__https__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["443__https__tls__certificate__parsed__validity__end_wday"])
	  event["443__https__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["443__https__tls__certificate__parsed__validity__end_wday"])
	end
	event["443__https__tls__certificate__parsed__validity__end"] = event["443.https.tls.certificate.parsed.validity.end"]
	event["p443__https__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["p443.https.tls.chain.parsed.validity.start"])["year"]
	event["p443__https__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["p443.https.tls.chain.parsed.validity.start"])["month"]
	event["p443__https__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["p443.https.tls.chain.parsed.validity.start"])["day"]
	event["p443__https__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["p443.https.tls.chain.parsed.validity.start"])["hour"]
	event["p443__https__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["p443.https.tls.chain.parsed.validity.start"])["min"]
	event["p443__https__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["p443.https.tls.chain.parsed.validity.start"])["sec"]
	event["p443__https__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["p443.https.tls.chain.parsed.validity.start"])["yday"]
	event["p443__https__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["p443.https.tls.chain.parsed.validity.start"])["wday"]
	event["p443__https__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["p443.https.tls.chain.parsed.validity.start"])["isdst"]
	if event["p443__https__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["p443__https__tls__chain__parsed__validity__start_yweek"] = (event["p443__https__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["p443__https__tls__chain__parsed__validity__start_yquarter"] = (event["p443__https__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p443__https__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["p443__https__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p443__https__tls__chain__parsed__validity__start_wday"])
	  event["p443__https__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p443__https__tls__chain__parsed__validity__start_wday"])
	end
	event["p443__https__tls__chain__parsed__validity__start"] = event["p443.https.tls.chain.parsed.validity.start"]
	event["443__https__tls__chain__parsed__validity__start"] = event["443.https.tls.chain.parsed.validity.start"]
	event["443__https__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["443.https.tls.chain.parsed.validity.start"])["year"]
	event["443__https__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["443.https.tls.chain.parsed.validity.start"])["month"]
	event["443__https__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["443.https.tls.chain.parsed.validity.start"])["day"]
	event["443__https__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["443.https.tls.chain.parsed.validity.start"])["hour"]
	event["443__https__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["443.https.tls.chain.parsed.validity.start"])["min"]
	event["443__https__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["443.https.tls.chain.parsed.validity.start"])["sec"]
	event["443__https__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["443.https.tls.chain.parsed.validity.start"])["yday"]
	event["443__https__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["443.https.tls.chain.parsed.validity.start"])["wday"]
	event["443__https__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["443.https.tls.chain.parsed.validity.start"])["isdst"]
	if event["443__https__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["443__https__tls__chain__parsed__validity__start_yweek"] = (event["443__https__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["443__https__tls__chain__parsed__validity__start_yquarter"] = (event["443__https__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["443__https__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["443__https__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["443__https__tls__chain__parsed__validity__start_wday"])
	  event["443__https__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["443__https__tls__chain__parsed__validity__start_wday"])
	end
	event["443__https__tls__chain__parsed__validity__start"] = event["443.https.tls.chain.parsed.validity.start"]
	event["p443__https__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["p443.https.tls.chain.parsed.validity.end"])["year"]
	event["p443__https__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["p443.https.tls.chain.parsed.validity.end"])["month"]
	event["p443__https__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["p443.https.tls.chain.parsed.validity.end"])["day"]
	event["p443__https__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["p443.https.tls.chain.parsed.validity.end"])["hour"]
	event["p443__https__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["p443.https.tls.chain.parsed.validity.end"])["min"]
	event["p443__https__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["p443.https.tls.chain.parsed.validity.end"])["sec"]
	event["p443__https__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["p443.https.tls.chain.parsed.validity.end"])["yday"]
	event["p443__https__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["p443.https.tls.chain.parsed.validity.end"])["wday"]
	event["p443__https__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["p443.https.tls.chain.parsed.validity.end"])["isdst"]
	if event["p443__https__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["p443__https__tls__chain__parsed__validity__end_yweek"] = (event["p443__https__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["p443__https__tls__chain__parsed__validity__end_yquarter"] = (event["p443__https__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p443__https__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["p443__https__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p443__https__tls__chain__parsed__validity__end_wday"])
	  event["p443__https__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p443__https__tls__chain__parsed__validity__end_wday"])
	end
	event["p443__https__tls__chain__parsed__validity__end"] = event["p443.https.tls.chain.parsed.validity.end"]
	event["443__https__tls__chain__parsed__validity__end"] = event["443.https.tls.chain.parsed.validity.end"]
	event["443__https__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["443.https.tls.chain.parsed.validity.end"])["year"]
	event["443__https__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["443.https.tls.chain.parsed.validity.end"])["month"]
	event["443__https__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["443.https.tls.chain.parsed.validity.end"])["day"]
	event["443__https__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["443.https.tls.chain.parsed.validity.end"])["hour"]
	event["443__https__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["443.https.tls.chain.parsed.validity.end"])["min"]
	event["443__https__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["443.https.tls.chain.parsed.validity.end"])["sec"]
	event["443__https__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["443.https.tls.chain.parsed.validity.end"])["yday"]
	event["443__https__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["443.https.tls.chain.parsed.validity.end"])["wday"]
	event["443__https__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["443.https.tls.chain.parsed.validity.end"])["isdst"]
	if event["443__https__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["443__https__tls__chain__parsed__validity__end_yweek"] = (event["443__https__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["443__https__tls__chain__parsed__validity__end_yquarter"] = (event["443__https__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["443__https__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["443__https__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["443__https__tls__chain__parsed__validity__end_wday"])
	  event["443__https__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["443__https__tls__chain__parsed__validity__end_wday"])
	end
	event["443__https__tls__chain__parsed__validity__end"] = event["443.https.tls.chain.parsed.validity.end"]
	event["p110__pop3__ssl_2__certificate__parsed__validity__start_year"] = parse_timestamp(event["p110.pop3.ssl_2.certificate.parsed.validity.start"])["year"]
	event["p110__pop3__ssl_2__certificate__parsed__validity__start_month"] = parse_timestamp(event["p110.pop3.ssl_2.certificate.parsed.validity.start"])["month"]
	event["p110__pop3__ssl_2__certificate__parsed__validity__start_day"] = parse_timestamp(event["p110.pop3.ssl_2.certificate.parsed.validity.start"])["day"]
	event["p110__pop3__ssl_2__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p110.pop3.ssl_2.certificate.parsed.validity.start"])["hour"]
	event["p110__pop3__ssl_2__certificate__parsed__validity__start_min"] = parse_timestamp(event["p110.pop3.ssl_2.certificate.parsed.validity.start"])["min"]
	event["p110__pop3__ssl_2__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p110.pop3.ssl_2.certificate.parsed.validity.start"])["sec"]
	event["p110__pop3__ssl_2__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p110.pop3.ssl_2.certificate.parsed.validity.start"])["yday"]
	event["p110__pop3__ssl_2__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p110.pop3.ssl_2.certificate.parsed.validity.start"])["wday"]
	event["p110__pop3__ssl_2__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p110.pop3.ssl_2.certificate.parsed.validity.start"])["isdst"]
	if event["p110__pop3__ssl_2__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p110__pop3__ssl_2__certificate__parsed__validity__start_yweek"] = (event["p110__pop3__ssl_2__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p110__pop3__ssl_2__certificate__parsed__validity__start_yquarter"] = (event["p110__pop3__ssl_2__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p110__pop3__ssl_2__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p110__pop3__ssl_2__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p110__pop3__ssl_2__certificate__parsed__validity__start_wday"])
	  event["p110__pop3__ssl_2__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p110__pop3__ssl_2__certificate__parsed__validity__start_wday"])
	end
	event["p110__pop3__ssl_2__certificate__parsed__validity__start"] = event["p110.pop3.ssl_2.certificate.parsed.validity.start"]
	event["110__pop3__ssl_2__certificate__parsed__validity__start"] = event["110.pop3.ssl_2.certificate.parsed.validity.start"]
	event["110__pop3__ssl_2__certificate__parsed__validity__start_year"] = parse_timestamp(event["110.pop3.ssl_2.certificate.parsed.validity.start"])["year"]
	event["110__pop3__ssl_2__certificate__parsed__validity__start_month"] = parse_timestamp(event["110.pop3.ssl_2.certificate.parsed.validity.start"])["month"]
	event["110__pop3__ssl_2__certificate__parsed__validity__start_day"] = parse_timestamp(event["110.pop3.ssl_2.certificate.parsed.validity.start"])["day"]
	event["110__pop3__ssl_2__certificate__parsed__validity__start_hour"] = parse_timestamp(event["110.pop3.ssl_2.certificate.parsed.validity.start"])["hour"]
	event["110__pop3__ssl_2__certificate__parsed__validity__start_min"] = parse_timestamp(event["110.pop3.ssl_2.certificate.parsed.validity.start"])["min"]
	event["110__pop3__ssl_2__certificate__parsed__validity__start_sec"] = parse_timestamp(event["110.pop3.ssl_2.certificate.parsed.validity.start"])["sec"]
	event["110__pop3__ssl_2__certificate__parsed__validity__start_yday"] = parse_timestamp(event["110.pop3.ssl_2.certificate.parsed.validity.start"])["yday"]
	event["110__pop3__ssl_2__certificate__parsed__validity__start_wday"] = parse_timestamp(event["110.pop3.ssl_2.certificate.parsed.validity.start"])["wday"]
	event["110__pop3__ssl_2__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["110.pop3.ssl_2.certificate.parsed.validity.start"])["isdst"]
	if event["110__pop3__ssl_2__certificate__parsed__validity__start_yday"] ~= nil then
	  event["110__pop3__ssl_2__certificate__parsed__validity__start_yweek"] = (event["110__pop3__ssl_2__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["110__pop3__ssl_2__certificate__parsed__validity__start_yquarter"] = (event["110__pop3__ssl_2__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["110__pop3__ssl_2__certificate__parsed__validity__start_wday"] ~= nil then
	  event["110__pop3__ssl_2__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["110__pop3__ssl_2__certificate__parsed__validity__start_wday"])
	  event["110__pop3__ssl_2__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["110__pop3__ssl_2__certificate__parsed__validity__start_wday"])
	end
	event["110__pop3__ssl_2__certificate__parsed__validity__start"] = event["110.pop3.ssl_2.certificate.parsed.validity.start"]
	event["p110__pop3__ssl_2__certificate__parsed__validity__end_year"] = parse_timestamp(event["p110.pop3.ssl_2.certificate.parsed.validity.end"])["year"]
	event["p110__pop3__ssl_2__certificate__parsed__validity__end_month"] = parse_timestamp(event["p110.pop3.ssl_2.certificate.parsed.validity.end"])["month"]
	event["p110__pop3__ssl_2__certificate__parsed__validity__end_day"] = parse_timestamp(event["p110.pop3.ssl_2.certificate.parsed.validity.end"])["day"]
	event["p110__pop3__ssl_2__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p110.pop3.ssl_2.certificate.parsed.validity.end"])["hour"]
	event["p110__pop3__ssl_2__certificate__parsed__validity__end_min"] = parse_timestamp(event["p110.pop3.ssl_2.certificate.parsed.validity.end"])["min"]
	event["p110__pop3__ssl_2__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p110.pop3.ssl_2.certificate.parsed.validity.end"])["sec"]
	event["p110__pop3__ssl_2__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p110.pop3.ssl_2.certificate.parsed.validity.end"])["yday"]
	event["p110__pop3__ssl_2__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p110.pop3.ssl_2.certificate.parsed.validity.end"])["wday"]
	event["p110__pop3__ssl_2__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p110.pop3.ssl_2.certificate.parsed.validity.end"])["isdst"]
	if event["p110__pop3__ssl_2__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p110__pop3__ssl_2__certificate__parsed__validity__end_yweek"] = (event["p110__pop3__ssl_2__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p110__pop3__ssl_2__certificate__parsed__validity__end_yquarter"] = (event["p110__pop3__ssl_2__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p110__pop3__ssl_2__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p110__pop3__ssl_2__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p110__pop3__ssl_2__certificate__parsed__validity__end_wday"])
	  event["p110__pop3__ssl_2__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p110__pop3__ssl_2__certificate__parsed__validity__end_wday"])
	end
	event["p110__pop3__ssl_2__certificate__parsed__validity__end"] = event["p110.pop3.ssl_2.certificate.parsed.validity.end"]
	event["110__pop3__ssl_2__certificate__parsed__validity__end"] = event["110.pop3.ssl_2.certificate.parsed.validity.end"]
	event["110__pop3__ssl_2__certificate__parsed__validity__end_year"] = parse_timestamp(event["110.pop3.ssl_2.certificate.parsed.validity.end"])["year"]
	event["110__pop3__ssl_2__certificate__parsed__validity__end_month"] = parse_timestamp(event["110.pop3.ssl_2.certificate.parsed.validity.end"])["month"]
	event["110__pop3__ssl_2__certificate__parsed__validity__end_day"] = parse_timestamp(event["110.pop3.ssl_2.certificate.parsed.validity.end"])["day"]
	event["110__pop3__ssl_2__certificate__parsed__validity__end_hour"] = parse_timestamp(event["110.pop3.ssl_2.certificate.parsed.validity.end"])["hour"]
	event["110__pop3__ssl_2__certificate__parsed__validity__end_min"] = parse_timestamp(event["110.pop3.ssl_2.certificate.parsed.validity.end"])["min"]
	event["110__pop3__ssl_2__certificate__parsed__validity__end_sec"] = parse_timestamp(event["110.pop3.ssl_2.certificate.parsed.validity.end"])["sec"]
	event["110__pop3__ssl_2__certificate__parsed__validity__end_yday"] = parse_timestamp(event["110.pop3.ssl_2.certificate.parsed.validity.end"])["yday"]
	event["110__pop3__ssl_2__certificate__parsed__validity__end_wday"] = parse_timestamp(event["110.pop3.ssl_2.certificate.parsed.validity.end"])["wday"]
	event["110__pop3__ssl_2__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["110.pop3.ssl_2.certificate.parsed.validity.end"])["isdst"]
	if event["110__pop3__ssl_2__certificate__parsed__validity__end_yday"] ~= nil then
	  event["110__pop3__ssl_2__certificate__parsed__validity__end_yweek"] = (event["110__pop3__ssl_2__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["110__pop3__ssl_2__certificate__parsed__validity__end_yquarter"] = (event["110__pop3__ssl_2__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["110__pop3__ssl_2__certificate__parsed__validity__end_wday"] ~= nil then
	  event["110__pop3__ssl_2__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["110__pop3__ssl_2__certificate__parsed__validity__end_wday"])
	  event["110__pop3__ssl_2__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["110__pop3__ssl_2__certificate__parsed__validity__end_wday"])
	end
	event["110__pop3__ssl_2__certificate__parsed__validity__end"] = event["110.pop3.ssl_2.certificate.parsed.validity.end"]
	event["p25__smtp__ssl_2__certificate__parsed__validity__start_year"] = parse_timestamp(event["p25.smtp.ssl_2.certificate.parsed.validity.start"])["year"]
	event["p25__smtp__ssl_2__certificate__parsed__validity__start_month"] = parse_timestamp(event["p25.smtp.ssl_2.certificate.parsed.validity.start"])["month"]
	event["p25__smtp__ssl_2__certificate__parsed__validity__start_day"] = parse_timestamp(event["p25.smtp.ssl_2.certificate.parsed.validity.start"])["day"]
	event["p25__smtp__ssl_2__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p25.smtp.ssl_2.certificate.parsed.validity.start"])["hour"]
	event["p25__smtp__ssl_2__certificate__parsed__validity__start_min"] = parse_timestamp(event["p25.smtp.ssl_2.certificate.parsed.validity.start"])["min"]
	event["p25__smtp__ssl_2__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p25.smtp.ssl_2.certificate.parsed.validity.start"])["sec"]
	event["p25__smtp__ssl_2__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p25.smtp.ssl_2.certificate.parsed.validity.start"])["yday"]
	event["p25__smtp__ssl_2__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p25.smtp.ssl_2.certificate.parsed.validity.start"])["wday"]
	event["p25__smtp__ssl_2__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p25.smtp.ssl_2.certificate.parsed.validity.start"])["isdst"]
	if event["p25__smtp__ssl_2__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p25__smtp__ssl_2__certificate__parsed__validity__start_yweek"] = (event["p25__smtp__ssl_2__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p25__smtp__ssl_2__certificate__parsed__validity__start_yquarter"] = (event["p25__smtp__ssl_2__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p25__smtp__ssl_2__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p25__smtp__ssl_2__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p25__smtp__ssl_2__certificate__parsed__validity__start_wday"])
	  event["p25__smtp__ssl_2__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p25__smtp__ssl_2__certificate__parsed__validity__start_wday"])
	end
	event["p25__smtp__ssl_2__certificate__parsed__validity__start"] = event["p25.smtp.ssl_2.certificate.parsed.validity.start"]
	event["25__smtp__ssl_2__certificate__parsed__validity__start"] = event["25.smtp.ssl_2.certificate.parsed.validity.start"]
	event["25__smtp__ssl_2__certificate__parsed__validity__start_year"] = parse_timestamp(event["25.smtp.ssl_2.certificate.parsed.validity.start"])["year"]
	event["25__smtp__ssl_2__certificate__parsed__validity__start_month"] = parse_timestamp(event["25.smtp.ssl_2.certificate.parsed.validity.start"])["month"]
	event["25__smtp__ssl_2__certificate__parsed__validity__start_day"] = parse_timestamp(event["25.smtp.ssl_2.certificate.parsed.validity.start"])["day"]
	event["25__smtp__ssl_2__certificate__parsed__validity__start_hour"] = parse_timestamp(event["25.smtp.ssl_2.certificate.parsed.validity.start"])["hour"]
	event["25__smtp__ssl_2__certificate__parsed__validity__start_min"] = parse_timestamp(event["25.smtp.ssl_2.certificate.parsed.validity.start"])["min"]
	event["25__smtp__ssl_2__certificate__parsed__validity__start_sec"] = parse_timestamp(event["25.smtp.ssl_2.certificate.parsed.validity.start"])["sec"]
	event["25__smtp__ssl_2__certificate__parsed__validity__start_yday"] = parse_timestamp(event["25.smtp.ssl_2.certificate.parsed.validity.start"])["yday"]
	event["25__smtp__ssl_2__certificate__parsed__validity__start_wday"] = parse_timestamp(event["25.smtp.ssl_2.certificate.parsed.validity.start"])["wday"]
	event["25__smtp__ssl_2__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["25.smtp.ssl_2.certificate.parsed.validity.start"])["isdst"]
	if event["25__smtp__ssl_2__certificate__parsed__validity__start_yday"] ~= nil then
	  event["25__smtp__ssl_2__certificate__parsed__validity__start_yweek"] = (event["25__smtp__ssl_2__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["25__smtp__ssl_2__certificate__parsed__validity__start_yquarter"] = (event["25__smtp__ssl_2__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["25__smtp__ssl_2__certificate__parsed__validity__start_wday"] ~= nil then
	  event["25__smtp__ssl_2__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["25__smtp__ssl_2__certificate__parsed__validity__start_wday"])
	  event["25__smtp__ssl_2__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["25__smtp__ssl_2__certificate__parsed__validity__start_wday"])
	end
	event["25__smtp__ssl_2__certificate__parsed__validity__start"] = event["25.smtp.ssl_2.certificate.parsed.validity.start"]
	event["p25__smtp__ssl_2__certificate__parsed__validity__end_year"] = parse_timestamp(event["p25.smtp.ssl_2.certificate.parsed.validity.end"])["year"]
	event["p25__smtp__ssl_2__certificate__parsed__validity__end_month"] = parse_timestamp(event["p25.smtp.ssl_2.certificate.parsed.validity.end"])["month"]
	event["p25__smtp__ssl_2__certificate__parsed__validity__end_day"] = parse_timestamp(event["p25.smtp.ssl_2.certificate.parsed.validity.end"])["day"]
	event["p25__smtp__ssl_2__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p25.smtp.ssl_2.certificate.parsed.validity.end"])["hour"]
	event["p25__smtp__ssl_2__certificate__parsed__validity__end_min"] = parse_timestamp(event["p25.smtp.ssl_2.certificate.parsed.validity.end"])["min"]
	event["p25__smtp__ssl_2__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p25.smtp.ssl_2.certificate.parsed.validity.end"])["sec"]
	event["p25__smtp__ssl_2__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p25.smtp.ssl_2.certificate.parsed.validity.end"])["yday"]
	event["p25__smtp__ssl_2__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p25.smtp.ssl_2.certificate.parsed.validity.end"])["wday"]
	event["p25__smtp__ssl_2__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p25.smtp.ssl_2.certificate.parsed.validity.end"])["isdst"]
	if event["p25__smtp__ssl_2__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p25__smtp__ssl_2__certificate__parsed__validity__end_yweek"] = (event["p25__smtp__ssl_2__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p25__smtp__ssl_2__certificate__parsed__validity__end_yquarter"] = (event["p25__smtp__ssl_2__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p25__smtp__ssl_2__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p25__smtp__ssl_2__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p25__smtp__ssl_2__certificate__parsed__validity__end_wday"])
	  event["p25__smtp__ssl_2__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p25__smtp__ssl_2__certificate__parsed__validity__end_wday"])
	end
	event["p25__smtp__ssl_2__certificate__parsed__validity__end"] = event["p25.smtp.ssl_2.certificate.parsed.validity.end"]
	event["25__smtp__ssl_2__certificate__parsed__validity__end"] = event["25.smtp.ssl_2.certificate.parsed.validity.end"]
	event["25__smtp__ssl_2__certificate__parsed__validity__end_year"] = parse_timestamp(event["25.smtp.ssl_2.certificate.parsed.validity.end"])["year"]
	event["25__smtp__ssl_2__certificate__parsed__validity__end_month"] = parse_timestamp(event["25.smtp.ssl_2.certificate.parsed.validity.end"])["month"]
	event["25__smtp__ssl_2__certificate__parsed__validity__end_day"] = parse_timestamp(event["25.smtp.ssl_2.certificate.parsed.validity.end"])["day"]
	event["25__smtp__ssl_2__certificate__parsed__validity__end_hour"] = parse_timestamp(event["25.smtp.ssl_2.certificate.parsed.validity.end"])["hour"]
	event["25__smtp__ssl_2__certificate__parsed__validity__end_min"] = parse_timestamp(event["25.smtp.ssl_2.certificate.parsed.validity.end"])["min"]
	event["25__smtp__ssl_2__certificate__parsed__validity__end_sec"] = parse_timestamp(event["25.smtp.ssl_2.certificate.parsed.validity.end"])["sec"]
	event["25__smtp__ssl_2__certificate__parsed__validity__end_yday"] = parse_timestamp(event["25.smtp.ssl_2.certificate.parsed.validity.end"])["yday"]
	event["25__smtp__ssl_2__certificate__parsed__validity__end_wday"] = parse_timestamp(event["25.smtp.ssl_2.certificate.parsed.validity.end"])["wday"]
	event["25__smtp__ssl_2__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["25.smtp.ssl_2.certificate.parsed.validity.end"])["isdst"]
	if event["25__smtp__ssl_2__certificate__parsed__validity__end_yday"] ~= nil then
	  event["25__smtp__ssl_2__certificate__parsed__validity__end_yweek"] = (event["25__smtp__ssl_2__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["25__smtp__ssl_2__certificate__parsed__validity__end_yquarter"] = (event["25__smtp__ssl_2__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["25__smtp__ssl_2__certificate__parsed__validity__end_wday"] ~= nil then
	  event["25__smtp__ssl_2__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["25__smtp__ssl_2__certificate__parsed__validity__end_wday"])
	  event["25__smtp__ssl_2__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["25__smtp__ssl_2__certificate__parsed__validity__end_wday"])
	end
	event["25__smtp__ssl_2__certificate__parsed__validity__end"] = event["25.smtp.ssl_2.certificate.parsed.validity.end"]
	event["p995__pop3s__ssl_2__certificate__parsed__validity__start_year"] = parse_timestamp(event["p995.pop3s.ssl_2.certificate.parsed.validity.start"])["year"]
	event["p995__pop3s__ssl_2__certificate__parsed__validity__start_month"] = parse_timestamp(event["p995.pop3s.ssl_2.certificate.parsed.validity.start"])["month"]
	event["p995__pop3s__ssl_2__certificate__parsed__validity__start_day"] = parse_timestamp(event["p995.pop3s.ssl_2.certificate.parsed.validity.start"])["day"]
	event["p995__pop3s__ssl_2__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p995.pop3s.ssl_2.certificate.parsed.validity.start"])["hour"]
	event["p995__pop3s__ssl_2__certificate__parsed__validity__start_min"] = parse_timestamp(event["p995.pop3s.ssl_2.certificate.parsed.validity.start"])["min"]
	event["p995__pop3s__ssl_2__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p995.pop3s.ssl_2.certificate.parsed.validity.start"])["sec"]
	event["p995__pop3s__ssl_2__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p995.pop3s.ssl_2.certificate.parsed.validity.start"])["yday"]
	event["p995__pop3s__ssl_2__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p995.pop3s.ssl_2.certificate.parsed.validity.start"])["wday"]
	event["p995__pop3s__ssl_2__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p995.pop3s.ssl_2.certificate.parsed.validity.start"])["isdst"]
	if event["p995__pop3s__ssl_2__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p995__pop3s__ssl_2__certificate__parsed__validity__start_yweek"] = (event["p995__pop3s__ssl_2__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p995__pop3s__ssl_2__certificate__parsed__validity__start_yquarter"] = (event["p995__pop3s__ssl_2__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p995__pop3s__ssl_2__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p995__pop3s__ssl_2__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p995__pop3s__ssl_2__certificate__parsed__validity__start_wday"])
	  event["p995__pop3s__ssl_2__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p995__pop3s__ssl_2__certificate__parsed__validity__start_wday"])
	end
	event["p995__pop3s__ssl_2__certificate__parsed__validity__start"] = event["p995.pop3s.ssl_2.certificate.parsed.validity.start"]
	event["995__pop3s__ssl_2__certificate__parsed__validity__start"] = event["995.pop3s.ssl_2.certificate.parsed.validity.start"]
	event["995__pop3s__ssl_2__certificate__parsed__validity__start_year"] = parse_timestamp(event["995.pop3s.ssl_2.certificate.parsed.validity.start"])["year"]
	event["995__pop3s__ssl_2__certificate__parsed__validity__start_month"] = parse_timestamp(event["995.pop3s.ssl_2.certificate.parsed.validity.start"])["month"]
	event["995__pop3s__ssl_2__certificate__parsed__validity__start_day"] = parse_timestamp(event["995.pop3s.ssl_2.certificate.parsed.validity.start"])["day"]
	event["995__pop3s__ssl_2__certificate__parsed__validity__start_hour"] = parse_timestamp(event["995.pop3s.ssl_2.certificate.parsed.validity.start"])["hour"]
	event["995__pop3s__ssl_2__certificate__parsed__validity__start_min"] = parse_timestamp(event["995.pop3s.ssl_2.certificate.parsed.validity.start"])["min"]
	event["995__pop3s__ssl_2__certificate__parsed__validity__start_sec"] = parse_timestamp(event["995.pop3s.ssl_2.certificate.parsed.validity.start"])["sec"]
	event["995__pop3s__ssl_2__certificate__parsed__validity__start_yday"] = parse_timestamp(event["995.pop3s.ssl_2.certificate.parsed.validity.start"])["yday"]
	event["995__pop3s__ssl_2__certificate__parsed__validity__start_wday"] = parse_timestamp(event["995.pop3s.ssl_2.certificate.parsed.validity.start"])["wday"]
	event["995__pop3s__ssl_2__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["995.pop3s.ssl_2.certificate.parsed.validity.start"])["isdst"]
	if event["995__pop3s__ssl_2__certificate__parsed__validity__start_yday"] ~= nil then
	  event["995__pop3s__ssl_2__certificate__parsed__validity__start_yweek"] = (event["995__pop3s__ssl_2__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["995__pop3s__ssl_2__certificate__parsed__validity__start_yquarter"] = (event["995__pop3s__ssl_2__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["995__pop3s__ssl_2__certificate__parsed__validity__start_wday"] ~= nil then
	  event["995__pop3s__ssl_2__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["995__pop3s__ssl_2__certificate__parsed__validity__start_wday"])
	  event["995__pop3s__ssl_2__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["995__pop3s__ssl_2__certificate__parsed__validity__start_wday"])
	end
	event["995__pop3s__ssl_2__certificate__parsed__validity__start"] = event["995.pop3s.ssl_2.certificate.parsed.validity.start"]
	event["p995__pop3s__ssl_2__certificate__parsed__validity__end_year"] = parse_timestamp(event["p995.pop3s.ssl_2.certificate.parsed.validity.end"])["year"]
	event["p995__pop3s__ssl_2__certificate__parsed__validity__end_month"] = parse_timestamp(event["p995.pop3s.ssl_2.certificate.parsed.validity.end"])["month"]
	event["p995__pop3s__ssl_2__certificate__parsed__validity__end_day"] = parse_timestamp(event["p995.pop3s.ssl_2.certificate.parsed.validity.end"])["day"]
	event["p995__pop3s__ssl_2__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p995.pop3s.ssl_2.certificate.parsed.validity.end"])["hour"]
	event["p995__pop3s__ssl_2__certificate__parsed__validity__end_min"] = parse_timestamp(event["p995.pop3s.ssl_2.certificate.parsed.validity.end"])["min"]
	event["p995__pop3s__ssl_2__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p995.pop3s.ssl_2.certificate.parsed.validity.end"])["sec"]
	event["p995__pop3s__ssl_2__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p995.pop3s.ssl_2.certificate.parsed.validity.end"])["yday"]
	event["p995__pop3s__ssl_2__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p995.pop3s.ssl_2.certificate.parsed.validity.end"])["wday"]
	event["p995__pop3s__ssl_2__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p995.pop3s.ssl_2.certificate.parsed.validity.end"])["isdst"]
	if event["p995__pop3s__ssl_2__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p995__pop3s__ssl_2__certificate__parsed__validity__end_yweek"] = (event["p995__pop3s__ssl_2__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p995__pop3s__ssl_2__certificate__parsed__validity__end_yquarter"] = (event["p995__pop3s__ssl_2__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p995__pop3s__ssl_2__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p995__pop3s__ssl_2__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p995__pop3s__ssl_2__certificate__parsed__validity__end_wday"])
	  event["p995__pop3s__ssl_2__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p995__pop3s__ssl_2__certificate__parsed__validity__end_wday"])
	end
	event["p995__pop3s__ssl_2__certificate__parsed__validity__end"] = event["p995.pop3s.ssl_2.certificate.parsed.validity.end"]
	event["995__pop3s__ssl_2__certificate__parsed__validity__end"] = event["995.pop3s.ssl_2.certificate.parsed.validity.end"]
	event["995__pop3s__ssl_2__certificate__parsed__validity__end_year"] = parse_timestamp(event["995.pop3s.ssl_2.certificate.parsed.validity.end"])["year"]
	event["995__pop3s__ssl_2__certificate__parsed__validity__end_month"] = parse_timestamp(event["995.pop3s.ssl_2.certificate.parsed.validity.end"])["month"]
	event["995__pop3s__ssl_2__certificate__parsed__validity__end_day"] = parse_timestamp(event["995.pop3s.ssl_2.certificate.parsed.validity.end"])["day"]
	event["995__pop3s__ssl_2__certificate__parsed__validity__end_hour"] = parse_timestamp(event["995.pop3s.ssl_2.certificate.parsed.validity.end"])["hour"]
	event["995__pop3s__ssl_2__certificate__parsed__validity__end_min"] = parse_timestamp(event["995.pop3s.ssl_2.certificate.parsed.validity.end"])["min"]
	event["995__pop3s__ssl_2__certificate__parsed__validity__end_sec"] = parse_timestamp(event["995.pop3s.ssl_2.certificate.parsed.validity.end"])["sec"]
	event["995__pop3s__ssl_2__certificate__parsed__validity__end_yday"] = parse_timestamp(event["995.pop3s.ssl_2.certificate.parsed.validity.end"])["yday"]
	event["995__pop3s__ssl_2__certificate__parsed__validity__end_wday"] = parse_timestamp(event["995.pop3s.ssl_2.certificate.parsed.validity.end"])["wday"]
	event["995__pop3s__ssl_2__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["995.pop3s.ssl_2.certificate.parsed.validity.end"])["isdst"]
	if event["995__pop3s__ssl_2__certificate__parsed__validity__end_yday"] ~= nil then
	  event["995__pop3s__ssl_2__certificate__parsed__validity__end_yweek"] = (event["995__pop3s__ssl_2__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["995__pop3s__ssl_2__certificate__parsed__validity__end_yquarter"] = (event["995__pop3s__ssl_2__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["995__pop3s__ssl_2__certificate__parsed__validity__end_wday"] ~= nil then
	  event["995__pop3s__ssl_2__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["995__pop3s__ssl_2__certificate__parsed__validity__end_wday"])
	  event["995__pop3s__ssl_2__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["995__pop3s__ssl_2__certificate__parsed__validity__end_wday"])
	end
	event["995__pop3s__ssl_2__certificate__parsed__validity__end"] = event["995.pop3s.ssl_2.certificate.parsed.validity.end"]
	event["p587__smtp__ssl_2__certificate__parsed__validity__start_year"] = parse_timestamp(event["p587.smtp.ssl_2.certificate.parsed.validity.start"])["year"]
	event["p587__smtp__ssl_2__certificate__parsed__validity__start_month"] = parse_timestamp(event["p587.smtp.ssl_2.certificate.parsed.validity.start"])["month"]
	event["p587__smtp__ssl_2__certificate__parsed__validity__start_day"] = parse_timestamp(event["p587.smtp.ssl_2.certificate.parsed.validity.start"])["day"]
	event["p587__smtp__ssl_2__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p587.smtp.ssl_2.certificate.parsed.validity.start"])["hour"]
	event["p587__smtp__ssl_2__certificate__parsed__validity__start_min"] = parse_timestamp(event["p587.smtp.ssl_2.certificate.parsed.validity.start"])["min"]
	event["p587__smtp__ssl_2__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p587.smtp.ssl_2.certificate.parsed.validity.start"])["sec"]
	event["p587__smtp__ssl_2__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p587.smtp.ssl_2.certificate.parsed.validity.start"])["yday"]
	event["p587__smtp__ssl_2__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p587.smtp.ssl_2.certificate.parsed.validity.start"])["wday"]
	event["p587__smtp__ssl_2__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p587.smtp.ssl_2.certificate.parsed.validity.start"])["isdst"]
	if event["p587__smtp__ssl_2__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p587__smtp__ssl_2__certificate__parsed__validity__start_yweek"] = (event["p587__smtp__ssl_2__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p587__smtp__ssl_2__certificate__parsed__validity__start_yquarter"] = (event["p587__smtp__ssl_2__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p587__smtp__ssl_2__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p587__smtp__ssl_2__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p587__smtp__ssl_2__certificate__parsed__validity__start_wday"])
	  event["p587__smtp__ssl_2__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p587__smtp__ssl_2__certificate__parsed__validity__start_wday"])
	end
	event["p587__smtp__ssl_2__certificate__parsed__validity__start"] = event["p587.smtp.ssl_2.certificate.parsed.validity.start"]
	event["587__smtp__ssl_2__certificate__parsed__validity__start"] = event["587.smtp.ssl_2.certificate.parsed.validity.start"]
	event["587__smtp__ssl_2__certificate__parsed__validity__start_year"] = parse_timestamp(event["587.smtp.ssl_2.certificate.parsed.validity.start"])["year"]
	event["587__smtp__ssl_2__certificate__parsed__validity__start_month"] = parse_timestamp(event["587.smtp.ssl_2.certificate.parsed.validity.start"])["month"]
	event["587__smtp__ssl_2__certificate__parsed__validity__start_day"] = parse_timestamp(event["587.smtp.ssl_2.certificate.parsed.validity.start"])["day"]
	event["587__smtp__ssl_2__certificate__parsed__validity__start_hour"] = parse_timestamp(event["587.smtp.ssl_2.certificate.parsed.validity.start"])["hour"]
	event["587__smtp__ssl_2__certificate__parsed__validity__start_min"] = parse_timestamp(event["587.smtp.ssl_2.certificate.parsed.validity.start"])["min"]
	event["587__smtp__ssl_2__certificate__parsed__validity__start_sec"] = parse_timestamp(event["587.smtp.ssl_2.certificate.parsed.validity.start"])["sec"]
	event["587__smtp__ssl_2__certificate__parsed__validity__start_yday"] = parse_timestamp(event["587.smtp.ssl_2.certificate.parsed.validity.start"])["yday"]
	event["587__smtp__ssl_2__certificate__parsed__validity__start_wday"] = parse_timestamp(event["587.smtp.ssl_2.certificate.parsed.validity.start"])["wday"]
	event["587__smtp__ssl_2__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["587.smtp.ssl_2.certificate.parsed.validity.start"])["isdst"]
	if event["587__smtp__ssl_2__certificate__parsed__validity__start_yday"] ~= nil then
	  event["587__smtp__ssl_2__certificate__parsed__validity__start_yweek"] = (event["587__smtp__ssl_2__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["587__smtp__ssl_2__certificate__parsed__validity__start_yquarter"] = (event["587__smtp__ssl_2__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["587__smtp__ssl_2__certificate__parsed__validity__start_wday"] ~= nil then
	  event["587__smtp__ssl_2__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["587__smtp__ssl_2__certificate__parsed__validity__start_wday"])
	  event["587__smtp__ssl_2__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["587__smtp__ssl_2__certificate__parsed__validity__start_wday"])
	end
	event["587__smtp__ssl_2__certificate__parsed__validity__start"] = event["587.smtp.ssl_2.certificate.parsed.validity.start"]
	event["p587__smtp__ssl_2__certificate__parsed__validity__end_year"] = parse_timestamp(event["p587.smtp.ssl_2.certificate.parsed.validity.end"])["year"]
	event["p587__smtp__ssl_2__certificate__parsed__validity__end_month"] = parse_timestamp(event["p587.smtp.ssl_2.certificate.parsed.validity.end"])["month"]
	event["p587__smtp__ssl_2__certificate__parsed__validity__end_day"] = parse_timestamp(event["p587.smtp.ssl_2.certificate.parsed.validity.end"])["day"]
	event["p587__smtp__ssl_2__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p587.smtp.ssl_2.certificate.parsed.validity.end"])["hour"]
	event["p587__smtp__ssl_2__certificate__parsed__validity__end_min"] = parse_timestamp(event["p587.smtp.ssl_2.certificate.parsed.validity.end"])["min"]
	event["p587__smtp__ssl_2__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p587.smtp.ssl_2.certificate.parsed.validity.end"])["sec"]
	event["p587__smtp__ssl_2__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p587.smtp.ssl_2.certificate.parsed.validity.end"])["yday"]
	event["p587__smtp__ssl_2__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p587.smtp.ssl_2.certificate.parsed.validity.end"])["wday"]
	event["p587__smtp__ssl_2__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p587.smtp.ssl_2.certificate.parsed.validity.end"])["isdst"]
	if event["p587__smtp__ssl_2__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p587__smtp__ssl_2__certificate__parsed__validity__end_yweek"] = (event["p587__smtp__ssl_2__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p587__smtp__ssl_2__certificate__parsed__validity__end_yquarter"] = (event["p587__smtp__ssl_2__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p587__smtp__ssl_2__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p587__smtp__ssl_2__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p587__smtp__ssl_2__certificate__parsed__validity__end_wday"])
	  event["p587__smtp__ssl_2__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p587__smtp__ssl_2__certificate__parsed__validity__end_wday"])
	end
	event["p587__smtp__ssl_2__certificate__parsed__validity__end"] = event["p587.smtp.ssl_2.certificate.parsed.validity.end"]
	event["587__smtp__ssl_2__certificate__parsed__validity__end"] = event["587.smtp.ssl_2.certificate.parsed.validity.end"]
	event["587__smtp__ssl_2__certificate__parsed__validity__end_year"] = parse_timestamp(event["587.smtp.ssl_2.certificate.parsed.validity.end"])["year"]
	event["587__smtp__ssl_2__certificate__parsed__validity__end_month"] = parse_timestamp(event["587.smtp.ssl_2.certificate.parsed.validity.end"])["month"]
	event["587__smtp__ssl_2__certificate__parsed__validity__end_day"] = parse_timestamp(event["587.smtp.ssl_2.certificate.parsed.validity.end"])["day"]
	event["587__smtp__ssl_2__certificate__parsed__validity__end_hour"] = parse_timestamp(event["587.smtp.ssl_2.certificate.parsed.validity.end"])["hour"]
	event["587__smtp__ssl_2__certificate__parsed__validity__end_min"] = parse_timestamp(event["587.smtp.ssl_2.certificate.parsed.validity.end"])["min"]
	event["587__smtp__ssl_2__certificate__parsed__validity__end_sec"] = parse_timestamp(event["587.smtp.ssl_2.certificate.parsed.validity.end"])["sec"]
	event["587__smtp__ssl_2__certificate__parsed__validity__end_yday"] = parse_timestamp(event["587.smtp.ssl_2.certificate.parsed.validity.end"])["yday"]
	event["587__smtp__ssl_2__certificate__parsed__validity__end_wday"] = parse_timestamp(event["587.smtp.ssl_2.certificate.parsed.validity.end"])["wday"]
	event["587__smtp__ssl_2__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["587.smtp.ssl_2.certificate.parsed.validity.end"])["isdst"]
	if event["587__smtp__ssl_2__certificate__parsed__validity__end_yday"] ~= nil then
	  event["587__smtp__ssl_2__certificate__parsed__validity__end_yweek"] = (event["587__smtp__ssl_2__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["587__smtp__ssl_2__certificate__parsed__validity__end_yquarter"] = (event["587__smtp__ssl_2__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["587__smtp__ssl_2__certificate__parsed__validity__end_wday"] ~= nil then
	  event["587__smtp__ssl_2__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["587__smtp__ssl_2__certificate__parsed__validity__end_wday"])
	  event["587__smtp__ssl_2__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["587__smtp__ssl_2__certificate__parsed__validity__end_wday"])
	end
	event["587__smtp__ssl_2__certificate__parsed__validity__end"] = event["587.smtp.ssl_2.certificate.parsed.validity.end"]
	event["p587__smtp__starttls__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.validity.start"])["year"]
	event["p587__smtp__starttls__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.validity.start"])["month"]
	event["p587__smtp__starttls__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.validity.start"])["day"]
	event["p587__smtp__starttls__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.validity.start"])["hour"]
	event["p587__smtp__starttls__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.validity.start"])["min"]
	event["p587__smtp__starttls__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.validity.start"])["sec"]
	event["p587__smtp__starttls__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.validity.start"])["yday"]
	event["p587__smtp__starttls__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.validity.start"])["wday"]
	event["p587__smtp__starttls__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.validity.start"])["isdst"]
	if event["p587__smtp__starttls__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p587__smtp__starttls__tls__certificate__parsed__validity__start_yweek"] = (event["p587__smtp__starttls__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p587__smtp__starttls__tls__certificate__parsed__validity__start_yquarter"] = (event["p587__smtp__starttls__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p587__smtp__starttls__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p587__smtp__starttls__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p587__smtp__starttls__tls__certificate__parsed__validity__start_wday"])
	  event["p587__smtp__starttls__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p587__smtp__starttls__tls__certificate__parsed__validity__start_wday"])
	end
	event["p587__smtp__starttls__tls__certificate__parsed__validity__start"] = event["p587.smtp.starttls.tls.certificate.parsed.validity.start"]
	event["587__smtp__starttls__tls__certificate__parsed__validity__start"] = event["587.smtp.starttls.tls.certificate.parsed.validity.start"]
	event["587__smtp__starttls__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.validity.start"])["year"]
	event["587__smtp__starttls__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.validity.start"])["month"]
	event["587__smtp__starttls__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.validity.start"])["day"]
	event["587__smtp__starttls__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.validity.start"])["hour"]
	event["587__smtp__starttls__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.validity.start"])["min"]
	event["587__smtp__starttls__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.validity.start"])["sec"]
	event["587__smtp__starttls__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.validity.start"])["yday"]
	event["587__smtp__starttls__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.validity.start"])["wday"]
	event["587__smtp__starttls__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.validity.start"])["isdst"]
	if event["587__smtp__starttls__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["587__smtp__starttls__tls__certificate__parsed__validity__start_yweek"] = (event["587__smtp__starttls__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["587__smtp__starttls__tls__certificate__parsed__validity__start_yquarter"] = (event["587__smtp__starttls__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["587__smtp__starttls__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["587__smtp__starttls__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["587__smtp__starttls__tls__certificate__parsed__validity__start_wday"])
	  event["587__smtp__starttls__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["587__smtp__starttls__tls__certificate__parsed__validity__start_wday"])
	end
	event["587__smtp__starttls__tls__certificate__parsed__validity__start"] = event["587.smtp.starttls.tls.certificate.parsed.validity.start"]
	event["p587__smtp__starttls__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.validity.end"])["year"]
	event["p587__smtp__starttls__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.validity.end"])["month"]
	event["p587__smtp__starttls__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.validity.end"])["day"]
	event["p587__smtp__starttls__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.validity.end"])["hour"]
	event["p587__smtp__starttls__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.validity.end"])["min"]
	event["p587__smtp__starttls__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.validity.end"])["sec"]
	event["p587__smtp__starttls__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.validity.end"])["yday"]
	event["p587__smtp__starttls__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.validity.end"])["wday"]
	event["p587__smtp__starttls__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.validity.end"])["isdst"]
	if event["p587__smtp__starttls__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p587__smtp__starttls__tls__certificate__parsed__validity__end_yweek"] = (event["p587__smtp__starttls__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p587__smtp__starttls__tls__certificate__parsed__validity__end_yquarter"] = (event["p587__smtp__starttls__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p587__smtp__starttls__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p587__smtp__starttls__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p587__smtp__starttls__tls__certificate__parsed__validity__end_wday"])
	  event["p587__smtp__starttls__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p587__smtp__starttls__tls__certificate__parsed__validity__end_wday"])
	end
	event["p587__smtp__starttls__tls__certificate__parsed__validity__end"] = event["p587.smtp.starttls.tls.certificate.parsed.validity.end"]
	event["587__smtp__starttls__tls__certificate__parsed__validity__end"] = event["587.smtp.starttls.tls.certificate.parsed.validity.end"]
	event["587__smtp__starttls__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.validity.end"])["year"]
	event["587__smtp__starttls__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.validity.end"])["month"]
	event["587__smtp__starttls__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.validity.end"])["day"]
	event["587__smtp__starttls__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.validity.end"])["hour"]
	event["587__smtp__starttls__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.validity.end"])["min"]
	event["587__smtp__starttls__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.validity.end"])["sec"]
	event["587__smtp__starttls__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.validity.end"])["yday"]
	event["587__smtp__starttls__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.validity.end"])["wday"]
	event["587__smtp__starttls__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.validity.end"])["isdst"]
	if event["587__smtp__starttls__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["587__smtp__starttls__tls__certificate__parsed__validity__end_yweek"] = (event["587__smtp__starttls__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["587__smtp__starttls__tls__certificate__parsed__validity__end_yquarter"] = (event["587__smtp__starttls__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["587__smtp__starttls__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["587__smtp__starttls__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["587__smtp__starttls__tls__certificate__parsed__validity__end_wday"])
	  event["587__smtp__starttls__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["587__smtp__starttls__tls__certificate__parsed__validity__end_wday"])
	end
	event["587__smtp__starttls__tls__certificate__parsed__validity__end"] = event["587.smtp.starttls.tls.certificate.parsed.validity.end"]
	event["p587__smtp__starttls__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.validity.start"])["year"]
	event["p587__smtp__starttls__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.validity.start"])["month"]
	event["p587__smtp__starttls__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.validity.start"])["day"]
	event["p587__smtp__starttls__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.validity.start"])["hour"]
	event["p587__smtp__starttls__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.validity.start"])["min"]
	event["p587__smtp__starttls__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.validity.start"])["sec"]
	event["p587__smtp__starttls__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.validity.start"])["yday"]
	event["p587__smtp__starttls__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.validity.start"])["wday"]
	event["p587__smtp__starttls__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.validity.start"])["isdst"]
	if event["p587__smtp__starttls__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["p587__smtp__starttls__tls__chain__parsed__validity__start_yweek"] = (event["p587__smtp__starttls__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["p587__smtp__starttls__tls__chain__parsed__validity__start_yquarter"] = (event["p587__smtp__starttls__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p587__smtp__starttls__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["p587__smtp__starttls__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p587__smtp__starttls__tls__chain__parsed__validity__start_wday"])
	  event["p587__smtp__starttls__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p587__smtp__starttls__tls__chain__parsed__validity__start_wday"])
	end
	event["p587__smtp__starttls__tls__chain__parsed__validity__start"] = event["p587.smtp.starttls.tls.chain.parsed.validity.start"]
	event["587__smtp__starttls__tls__chain__parsed__validity__start"] = event["587.smtp.starttls.tls.chain.parsed.validity.start"]
	event["587__smtp__starttls__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.validity.start"])["year"]
	event["587__smtp__starttls__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.validity.start"])["month"]
	event["587__smtp__starttls__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.validity.start"])["day"]
	event["587__smtp__starttls__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.validity.start"])["hour"]
	event["587__smtp__starttls__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.validity.start"])["min"]
	event["587__smtp__starttls__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.validity.start"])["sec"]
	event["587__smtp__starttls__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.validity.start"])["yday"]
	event["587__smtp__starttls__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.validity.start"])["wday"]
	event["587__smtp__starttls__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.validity.start"])["isdst"]
	if event["587__smtp__starttls__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["587__smtp__starttls__tls__chain__parsed__validity__start_yweek"] = (event["587__smtp__starttls__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["587__smtp__starttls__tls__chain__parsed__validity__start_yquarter"] = (event["587__smtp__starttls__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["587__smtp__starttls__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["587__smtp__starttls__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["587__smtp__starttls__tls__chain__parsed__validity__start_wday"])
	  event["587__smtp__starttls__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["587__smtp__starttls__tls__chain__parsed__validity__start_wday"])
	end
	event["587__smtp__starttls__tls__chain__parsed__validity__start"] = event["587.smtp.starttls.tls.chain.parsed.validity.start"]
	event["p587__smtp__starttls__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.validity.end"])["year"]
	event["p587__smtp__starttls__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.validity.end"])["month"]
	event["p587__smtp__starttls__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.validity.end"])["day"]
	event["p587__smtp__starttls__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.validity.end"])["hour"]
	event["p587__smtp__starttls__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.validity.end"])["min"]
	event["p587__smtp__starttls__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.validity.end"])["sec"]
	event["p587__smtp__starttls__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.validity.end"])["yday"]
	event["p587__smtp__starttls__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.validity.end"])["wday"]
	event["p587__smtp__starttls__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.validity.end"])["isdst"]
	if event["p587__smtp__starttls__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["p587__smtp__starttls__tls__chain__parsed__validity__end_yweek"] = (event["p587__smtp__starttls__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["p587__smtp__starttls__tls__chain__parsed__validity__end_yquarter"] = (event["p587__smtp__starttls__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p587__smtp__starttls__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["p587__smtp__starttls__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p587__smtp__starttls__tls__chain__parsed__validity__end_wday"])
	  event["p587__smtp__starttls__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p587__smtp__starttls__tls__chain__parsed__validity__end_wday"])
	end
	event["p587__smtp__starttls__tls__chain__parsed__validity__end"] = event["p587.smtp.starttls.tls.chain.parsed.validity.end"]
	event["587__smtp__starttls__tls__chain__parsed__validity__end"] = event["587.smtp.starttls.tls.chain.parsed.validity.end"]
	event["587__smtp__starttls__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.validity.end"])["year"]
	event["587__smtp__starttls__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.validity.end"])["month"]
	event["587__smtp__starttls__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.validity.end"])["day"]
	event["587__smtp__starttls__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.validity.end"])["hour"]
	event["587__smtp__starttls__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.validity.end"])["min"]
	event["587__smtp__starttls__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.validity.end"])["sec"]
	event["587__smtp__starttls__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.validity.end"])["yday"]
	event["587__smtp__starttls__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.validity.end"])["wday"]
	event["587__smtp__starttls__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.validity.end"])["isdst"]
	if event["587__smtp__starttls__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["587__smtp__starttls__tls__chain__parsed__validity__end_yweek"] = (event["587__smtp__starttls__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["587__smtp__starttls__tls__chain__parsed__validity__end_yquarter"] = (event["587__smtp__starttls__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["587__smtp__starttls__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["587__smtp__starttls__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["587__smtp__starttls__tls__chain__parsed__validity__end_wday"])
	  event["587__smtp__starttls__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["587__smtp__starttls__tls__chain__parsed__validity__end_wday"])
	end
	event["587__smtp__starttls__tls__chain__parsed__validity__end"] = event["587.smtp.starttls.tls.chain.parsed.validity.end"]
	event["p143__imap__ssl_2__certificate__parsed__validity__start_year"] = parse_timestamp(event["p143.imap.ssl_2.certificate.parsed.validity.start"])["year"]
	event["p143__imap__ssl_2__certificate__parsed__validity__start_month"] = parse_timestamp(event["p143.imap.ssl_2.certificate.parsed.validity.start"])["month"]
	event["p143__imap__ssl_2__certificate__parsed__validity__start_day"] = parse_timestamp(event["p143.imap.ssl_2.certificate.parsed.validity.start"])["day"]
	event["p143__imap__ssl_2__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p143.imap.ssl_2.certificate.parsed.validity.start"])["hour"]
	event["p143__imap__ssl_2__certificate__parsed__validity__start_min"] = parse_timestamp(event["p143.imap.ssl_2.certificate.parsed.validity.start"])["min"]
	event["p143__imap__ssl_2__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p143.imap.ssl_2.certificate.parsed.validity.start"])["sec"]
	event["p143__imap__ssl_2__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p143.imap.ssl_2.certificate.parsed.validity.start"])["yday"]
	event["p143__imap__ssl_2__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p143.imap.ssl_2.certificate.parsed.validity.start"])["wday"]
	event["p143__imap__ssl_2__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p143.imap.ssl_2.certificate.parsed.validity.start"])["isdst"]
	if event["p143__imap__ssl_2__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p143__imap__ssl_2__certificate__parsed__validity__start_yweek"] = (event["p143__imap__ssl_2__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p143__imap__ssl_2__certificate__parsed__validity__start_yquarter"] = (event["p143__imap__ssl_2__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p143__imap__ssl_2__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p143__imap__ssl_2__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p143__imap__ssl_2__certificate__parsed__validity__start_wday"])
	  event["p143__imap__ssl_2__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p143__imap__ssl_2__certificate__parsed__validity__start_wday"])
	end
	event["p143__imap__ssl_2__certificate__parsed__validity__start"] = event["p143.imap.ssl_2.certificate.parsed.validity.start"]
	event["143__imap__ssl_2__certificate__parsed__validity__start"] = event["143.imap.ssl_2.certificate.parsed.validity.start"]
	event["143__imap__ssl_2__certificate__parsed__validity__start_year"] = parse_timestamp(event["143.imap.ssl_2.certificate.parsed.validity.start"])["year"]
	event["143__imap__ssl_2__certificate__parsed__validity__start_month"] = parse_timestamp(event["143.imap.ssl_2.certificate.parsed.validity.start"])["month"]
	event["143__imap__ssl_2__certificate__parsed__validity__start_day"] = parse_timestamp(event["143.imap.ssl_2.certificate.parsed.validity.start"])["day"]
	event["143__imap__ssl_2__certificate__parsed__validity__start_hour"] = parse_timestamp(event["143.imap.ssl_2.certificate.parsed.validity.start"])["hour"]
	event["143__imap__ssl_2__certificate__parsed__validity__start_min"] = parse_timestamp(event["143.imap.ssl_2.certificate.parsed.validity.start"])["min"]
	event["143__imap__ssl_2__certificate__parsed__validity__start_sec"] = parse_timestamp(event["143.imap.ssl_2.certificate.parsed.validity.start"])["sec"]
	event["143__imap__ssl_2__certificate__parsed__validity__start_yday"] = parse_timestamp(event["143.imap.ssl_2.certificate.parsed.validity.start"])["yday"]
	event["143__imap__ssl_2__certificate__parsed__validity__start_wday"] = parse_timestamp(event["143.imap.ssl_2.certificate.parsed.validity.start"])["wday"]
	event["143__imap__ssl_2__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["143.imap.ssl_2.certificate.parsed.validity.start"])["isdst"]
	if event["143__imap__ssl_2__certificate__parsed__validity__start_yday"] ~= nil then
	  event["143__imap__ssl_2__certificate__parsed__validity__start_yweek"] = (event["143__imap__ssl_2__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["143__imap__ssl_2__certificate__parsed__validity__start_yquarter"] = (event["143__imap__ssl_2__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["143__imap__ssl_2__certificate__parsed__validity__start_wday"] ~= nil then
	  event["143__imap__ssl_2__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["143__imap__ssl_2__certificate__parsed__validity__start_wday"])
	  event["143__imap__ssl_2__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["143__imap__ssl_2__certificate__parsed__validity__start_wday"])
	end
	event["143__imap__ssl_2__certificate__parsed__validity__start"] = event["143.imap.ssl_2.certificate.parsed.validity.start"]
	event["p143__imap__ssl_2__certificate__parsed__validity__end_year"] = parse_timestamp(event["p143.imap.ssl_2.certificate.parsed.validity.end"])["year"]
	event["p143__imap__ssl_2__certificate__parsed__validity__end_month"] = parse_timestamp(event["p143.imap.ssl_2.certificate.parsed.validity.end"])["month"]
	event["p143__imap__ssl_2__certificate__parsed__validity__end_day"] = parse_timestamp(event["p143.imap.ssl_2.certificate.parsed.validity.end"])["day"]
	event["p143__imap__ssl_2__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p143.imap.ssl_2.certificate.parsed.validity.end"])["hour"]
	event["p143__imap__ssl_2__certificate__parsed__validity__end_min"] = parse_timestamp(event["p143.imap.ssl_2.certificate.parsed.validity.end"])["min"]
	event["p143__imap__ssl_2__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p143.imap.ssl_2.certificate.parsed.validity.end"])["sec"]
	event["p143__imap__ssl_2__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p143.imap.ssl_2.certificate.parsed.validity.end"])["yday"]
	event["p143__imap__ssl_2__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p143.imap.ssl_2.certificate.parsed.validity.end"])["wday"]
	event["p143__imap__ssl_2__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p143.imap.ssl_2.certificate.parsed.validity.end"])["isdst"]
	if event["p143__imap__ssl_2__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p143__imap__ssl_2__certificate__parsed__validity__end_yweek"] = (event["p143__imap__ssl_2__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p143__imap__ssl_2__certificate__parsed__validity__end_yquarter"] = (event["p143__imap__ssl_2__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p143__imap__ssl_2__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p143__imap__ssl_2__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p143__imap__ssl_2__certificate__parsed__validity__end_wday"])
	  event["p143__imap__ssl_2__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p143__imap__ssl_2__certificate__parsed__validity__end_wday"])
	end
	event["p143__imap__ssl_2__certificate__parsed__validity__end"] = event["p143.imap.ssl_2.certificate.parsed.validity.end"]
	event["143__imap__ssl_2__certificate__parsed__validity__end"] = event["143.imap.ssl_2.certificate.parsed.validity.end"]
	event["143__imap__ssl_2__certificate__parsed__validity__end_year"] = parse_timestamp(event["143.imap.ssl_2.certificate.parsed.validity.end"])["year"]
	event["143__imap__ssl_2__certificate__parsed__validity__end_month"] = parse_timestamp(event["143.imap.ssl_2.certificate.parsed.validity.end"])["month"]
	event["143__imap__ssl_2__certificate__parsed__validity__end_day"] = parse_timestamp(event["143.imap.ssl_2.certificate.parsed.validity.end"])["day"]
	event["143__imap__ssl_2__certificate__parsed__validity__end_hour"] = parse_timestamp(event["143.imap.ssl_2.certificate.parsed.validity.end"])["hour"]
	event["143__imap__ssl_2__certificate__parsed__validity__end_min"] = parse_timestamp(event["143.imap.ssl_2.certificate.parsed.validity.end"])["min"]
	event["143__imap__ssl_2__certificate__parsed__validity__end_sec"] = parse_timestamp(event["143.imap.ssl_2.certificate.parsed.validity.end"])["sec"]
	event["143__imap__ssl_2__certificate__parsed__validity__end_yday"] = parse_timestamp(event["143.imap.ssl_2.certificate.parsed.validity.end"])["yday"]
	event["143__imap__ssl_2__certificate__parsed__validity__end_wday"] = parse_timestamp(event["143.imap.ssl_2.certificate.parsed.validity.end"])["wday"]
	event["143__imap__ssl_2__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["143.imap.ssl_2.certificate.parsed.validity.end"])["isdst"]
	if event["143__imap__ssl_2__certificate__parsed__validity__end_yday"] ~= nil then
	  event["143__imap__ssl_2__certificate__parsed__validity__end_yweek"] = (event["143__imap__ssl_2__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["143__imap__ssl_2__certificate__parsed__validity__end_yquarter"] = (event["143__imap__ssl_2__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["143__imap__ssl_2__certificate__parsed__validity__end_wday"] ~= nil then
	  event["143__imap__ssl_2__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["143__imap__ssl_2__certificate__parsed__validity__end_wday"])
	  event["143__imap__ssl_2__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["143__imap__ssl_2__certificate__parsed__validity__end_wday"])
	end
	event["143__imap__ssl_2__certificate__parsed__validity__end"] = event["143.imap.ssl_2.certificate.parsed.validity.end"]
	event["p993__imaps__ssl_2__certificate__parsed__validity__start_year"] = parse_timestamp(event["p993.imaps.ssl_2.certificate.parsed.validity.start"])["year"]
	event["p993__imaps__ssl_2__certificate__parsed__validity__start_month"] = parse_timestamp(event["p993.imaps.ssl_2.certificate.parsed.validity.start"])["month"]
	event["p993__imaps__ssl_2__certificate__parsed__validity__start_day"] = parse_timestamp(event["p993.imaps.ssl_2.certificate.parsed.validity.start"])["day"]
	event["p993__imaps__ssl_2__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p993.imaps.ssl_2.certificate.parsed.validity.start"])["hour"]
	event["p993__imaps__ssl_2__certificate__parsed__validity__start_min"] = parse_timestamp(event["p993.imaps.ssl_2.certificate.parsed.validity.start"])["min"]
	event["p993__imaps__ssl_2__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p993.imaps.ssl_2.certificate.parsed.validity.start"])["sec"]
	event["p993__imaps__ssl_2__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p993.imaps.ssl_2.certificate.parsed.validity.start"])["yday"]
	event["p993__imaps__ssl_2__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p993.imaps.ssl_2.certificate.parsed.validity.start"])["wday"]
	event["p993__imaps__ssl_2__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p993.imaps.ssl_2.certificate.parsed.validity.start"])["isdst"]
	if event["p993__imaps__ssl_2__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p993__imaps__ssl_2__certificate__parsed__validity__start_yweek"] = (event["p993__imaps__ssl_2__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p993__imaps__ssl_2__certificate__parsed__validity__start_yquarter"] = (event["p993__imaps__ssl_2__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p993__imaps__ssl_2__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p993__imaps__ssl_2__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p993__imaps__ssl_2__certificate__parsed__validity__start_wday"])
	  event["p993__imaps__ssl_2__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p993__imaps__ssl_2__certificate__parsed__validity__start_wday"])
	end
	event["p993__imaps__ssl_2__certificate__parsed__validity__start"] = event["p993.imaps.ssl_2.certificate.parsed.validity.start"]
	event["993__imaps__ssl_2__certificate__parsed__validity__start"] = event["993.imaps.ssl_2.certificate.parsed.validity.start"]
	event["993__imaps__ssl_2__certificate__parsed__validity__start_year"] = parse_timestamp(event["993.imaps.ssl_2.certificate.parsed.validity.start"])["year"]
	event["993__imaps__ssl_2__certificate__parsed__validity__start_month"] = parse_timestamp(event["993.imaps.ssl_2.certificate.parsed.validity.start"])["month"]
	event["993__imaps__ssl_2__certificate__parsed__validity__start_day"] = parse_timestamp(event["993.imaps.ssl_2.certificate.parsed.validity.start"])["day"]
	event["993__imaps__ssl_2__certificate__parsed__validity__start_hour"] = parse_timestamp(event["993.imaps.ssl_2.certificate.parsed.validity.start"])["hour"]
	event["993__imaps__ssl_2__certificate__parsed__validity__start_min"] = parse_timestamp(event["993.imaps.ssl_2.certificate.parsed.validity.start"])["min"]
	event["993__imaps__ssl_2__certificate__parsed__validity__start_sec"] = parse_timestamp(event["993.imaps.ssl_2.certificate.parsed.validity.start"])["sec"]
	event["993__imaps__ssl_2__certificate__parsed__validity__start_yday"] = parse_timestamp(event["993.imaps.ssl_2.certificate.parsed.validity.start"])["yday"]
	event["993__imaps__ssl_2__certificate__parsed__validity__start_wday"] = parse_timestamp(event["993.imaps.ssl_2.certificate.parsed.validity.start"])["wday"]
	event["993__imaps__ssl_2__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["993.imaps.ssl_2.certificate.parsed.validity.start"])["isdst"]
	if event["993__imaps__ssl_2__certificate__parsed__validity__start_yday"] ~= nil then
	  event["993__imaps__ssl_2__certificate__parsed__validity__start_yweek"] = (event["993__imaps__ssl_2__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["993__imaps__ssl_2__certificate__parsed__validity__start_yquarter"] = (event["993__imaps__ssl_2__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["993__imaps__ssl_2__certificate__parsed__validity__start_wday"] ~= nil then
	  event["993__imaps__ssl_2__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["993__imaps__ssl_2__certificate__parsed__validity__start_wday"])
	  event["993__imaps__ssl_2__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["993__imaps__ssl_2__certificate__parsed__validity__start_wday"])
	end
	event["993__imaps__ssl_2__certificate__parsed__validity__start"] = event["993.imaps.ssl_2.certificate.parsed.validity.start"]
	event["p993__imaps__ssl_2__certificate__parsed__validity__end_year"] = parse_timestamp(event["p993.imaps.ssl_2.certificate.parsed.validity.end"])["year"]
	event["p993__imaps__ssl_2__certificate__parsed__validity__end_month"] = parse_timestamp(event["p993.imaps.ssl_2.certificate.parsed.validity.end"])["month"]
	event["p993__imaps__ssl_2__certificate__parsed__validity__end_day"] = parse_timestamp(event["p993.imaps.ssl_2.certificate.parsed.validity.end"])["day"]
	event["p993__imaps__ssl_2__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p993.imaps.ssl_2.certificate.parsed.validity.end"])["hour"]
	event["p993__imaps__ssl_2__certificate__parsed__validity__end_min"] = parse_timestamp(event["p993.imaps.ssl_2.certificate.parsed.validity.end"])["min"]
	event["p993__imaps__ssl_2__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p993.imaps.ssl_2.certificate.parsed.validity.end"])["sec"]
	event["p993__imaps__ssl_2__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p993.imaps.ssl_2.certificate.parsed.validity.end"])["yday"]
	event["p993__imaps__ssl_2__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p993.imaps.ssl_2.certificate.parsed.validity.end"])["wday"]
	event["p993__imaps__ssl_2__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p993.imaps.ssl_2.certificate.parsed.validity.end"])["isdst"]
	if event["p993__imaps__ssl_2__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p993__imaps__ssl_2__certificate__parsed__validity__end_yweek"] = (event["p993__imaps__ssl_2__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p993__imaps__ssl_2__certificate__parsed__validity__end_yquarter"] = (event["p993__imaps__ssl_2__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p993__imaps__ssl_2__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p993__imaps__ssl_2__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p993__imaps__ssl_2__certificate__parsed__validity__end_wday"])
	  event["p993__imaps__ssl_2__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p993__imaps__ssl_2__certificate__parsed__validity__end_wday"])
	end
	event["p993__imaps__ssl_2__certificate__parsed__validity__end"] = event["p993.imaps.ssl_2.certificate.parsed.validity.end"]
	event["993__imaps__ssl_2__certificate__parsed__validity__end"] = event["993.imaps.ssl_2.certificate.parsed.validity.end"]
	event["993__imaps__ssl_2__certificate__parsed__validity__end_year"] = parse_timestamp(event["993.imaps.ssl_2.certificate.parsed.validity.end"])["year"]
	event["993__imaps__ssl_2__certificate__parsed__validity__end_month"] = parse_timestamp(event["993.imaps.ssl_2.certificate.parsed.validity.end"])["month"]
	event["993__imaps__ssl_2__certificate__parsed__validity__end_day"] = parse_timestamp(event["993.imaps.ssl_2.certificate.parsed.validity.end"])["day"]
	event["993__imaps__ssl_2__certificate__parsed__validity__end_hour"] = parse_timestamp(event["993.imaps.ssl_2.certificate.parsed.validity.end"])["hour"]
	event["993__imaps__ssl_2__certificate__parsed__validity__end_min"] = parse_timestamp(event["993.imaps.ssl_2.certificate.parsed.validity.end"])["min"]
	event["993__imaps__ssl_2__certificate__parsed__validity__end_sec"] = parse_timestamp(event["993.imaps.ssl_2.certificate.parsed.validity.end"])["sec"]
	event["993__imaps__ssl_2__certificate__parsed__validity__end_yday"] = parse_timestamp(event["993.imaps.ssl_2.certificate.parsed.validity.end"])["yday"]
	event["993__imaps__ssl_2__certificate__parsed__validity__end_wday"] = parse_timestamp(event["993.imaps.ssl_2.certificate.parsed.validity.end"])["wday"]
	event["993__imaps__ssl_2__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["993.imaps.ssl_2.certificate.parsed.validity.end"])["isdst"]
	if event["993__imaps__ssl_2__certificate__parsed__validity__end_yday"] ~= nil then
	  event["993__imaps__ssl_2__certificate__parsed__validity__end_yweek"] = (event["993__imaps__ssl_2__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["993__imaps__ssl_2__certificate__parsed__validity__end_yquarter"] = (event["993__imaps__ssl_2__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["993__imaps__ssl_2__certificate__parsed__validity__end_wday"] ~= nil then
	  event["993__imaps__ssl_2__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["993__imaps__ssl_2__certificate__parsed__validity__end_wday"])
	  event["993__imaps__ssl_2__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["993__imaps__ssl_2__certificate__parsed__validity__end_wday"])
	end
	event["993__imaps__ssl_2__certificate__parsed__validity__end"] = event["993.imaps.ssl_2.certificate.parsed.validity.end"]
	event["p443__https__ssl_2__certificate__parsed__validity__start_year"] = parse_timestamp(event["p443.https.ssl_2.certificate.parsed.validity.start"])["year"]
	event["p443__https__ssl_2__certificate__parsed__validity__start_month"] = parse_timestamp(event["p443.https.ssl_2.certificate.parsed.validity.start"])["month"]
	event["p443__https__ssl_2__certificate__parsed__validity__start_day"] = parse_timestamp(event["p443.https.ssl_2.certificate.parsed.validity.start"])["day"]
	event["p443__https__ssl_2__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p443.https.ssl_2.certificate.parsed.validity.start"])["hour"]
	event["p443__https__ssl_2__certificate__parsed__validity__start_min"] = parse_timestamp(event["p443.https.ssl_2.certificate.parsed.validity.start"])["min"]
	event["p443__https__ssl_2__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p443.https.ssl_2.certificate.parsed.validity.start"])["sec"]
	event["p443__https__ssl_2__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p443.https.ssl_2.certificate.parsed.validity.start"])["yday"]
	event["p443__https__ssl_2__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p443.https.ssl_2.certificate.parsed.validity.start"])["wday"]
	event["p443__https__ssl_2__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p443.https.ssl_2.certificate.parsed.validity.start"])["isdst"]
	if event["p443__https__ssl_2__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p443__https__ssl_2__certificate__parsed__validity__start_yweek"] = (event["p443__https__ssl_2__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p443__https__ssl_2__certificate__parsed__validity__start_yquarter"] = (event["p443__https__ssl_2__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p443__https__ssl_2__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p443__https__ssl_2__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p443__https__ssl_2__certificate__parsed__validity__start_wday"])
	  event["p443__https__ssl_2__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p443__https__ssl_2__certificate__parsed__validity__start_wday"])
	end
	event["p443__https__ssl_2__certificate__parsed__validity__start"] = event["p443.https.ssl_2.certificate.parsed.validity.start"]
	event["443__https__ssl_2__certificate__parsed__validity__start"] = event["443.https.ssl_2.certificate.parsed.validity.start"]
	event["443__https__ssl_2__certificate__parsed__validity__start_year"] = parse_timestamp(event["443.https.ssl_2.certificate.parsed.validity.start"])["year"]
	event["443__https__ssl_2__certificate__parsed__validity__start_month"] = parse_timestamp(event["443.https.ssl_2.certificate.parsed.validity.start"])["month"]
	event["443__https__ssl_2__certificate__parsed__validity__start_day"] = parse_timestamp(event["443.https.ssl_2.certificate.parsed.validity.start"])["day"]
	event["443__https__ssl_2__certificate__parsed__validity__start_hour"] = parse_timestamp(event["443.https.ssl_2.certificate.parsed.validity.start"])["hour"]
	event["443__https__ssl_2__certificate__parsed__validity__start_min"] = parse_timestamp(event["443.https.ssl_2.certificate.parsed.validity.start"])["min"]
	event["443__https__ssl_2__certificate__parsed__validity__start_sec"] = parse_timestamp(event["443.https.ssl_2.certificate.parsed.validity.start"])["sec"]
	event["443__https__ssl_2__certificate__parsed__validity__start_yday"] = parse_timestamp(event["443.https.ssl_2.certificate.parsed.validity.start"])["yday"]
	event["443__https__ssl_2__certificate__parsed__validity__start_wday"] = parse_timestamp(event["443.https.ssl_2.certificate.parsed.validity.start"])["wday"]
	event["443__https__ssl_2__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["443.https.ssl_2.certificate.parsed.validity.start"])["isdst"]
	if event["443__https__ssl_2__certificate__parsed__validity__start_yday"] ~= nil then
	  event["443__https__ssl_2__certificate__parsed__validity__start_yweek"] = (event["443__https__ssl_2__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["443__https__ssl_2__certificate__parsed__validity__start_yquarter"] = (event["443__https__ssl_2__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["443__https__ssl_2__certificate__parsed__validity__start_wday"] ~= nil then
	  event["443__https__ssl_2__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["443__https__ssl_2__certificate__parsed__validity__start_wday"])
	  event["443__https__ssl_2__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["443__https__ssl_2__certificate__parsed__validity__start_wday"])
	end
	event["443__https__ssl_2__certificate__parsed__validity__start"] = event["443.https.ssl_2.certificate.parsed.validity.start"]
	event["p443__https__ssl_2__certificate__parsed__validity__end_year"] = parse_timestamp(event["p443.https.ssl_2.certificate.parsed.validity.end"])["year"]
	event["p443__https__ssl_2__certificate__parsed__validity__end_month"] = parse_timestamp(event["p443.https.ssl_2.certificate.parsed.validity.end"])["month"]
	event["p443__https__ssl_2__certificate__parsed__validity__end_day"] = parse_timestamp(event["p443.https.ssl_2.certificate.parsed.validity.end"])["day"]
	event["p443__https__ssl_2__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p443.https.ssl_2.certificate.parsed.validity.end"])["hour"]
	event["p443__https__ssl_2__certificate__parsed__validity__end_min"] = parse_timestamp(event["p443.https.ssl_2.certificate.parsed.validity.end"])["min"]
	event["p443__https__ssl_2__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p443.https.ssl_2.certificate.parsed.validity.end"])["sec"]
	event["p443__https__ssl_2__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p443.https.ssl_2.certificate.parsed.validity.end"])["yday"]
	event["p443__https__ssl_2__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p443.https.ssl_2.certificate.parsed.validity.end"])["wday"]
	event["p443__https__ssl_2__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p443.https.ssl_2.certificate.parsed.validity.end"])["isdst"]
	if event["p443__https__ssl_2__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p443__https__ssl_2__certificate__parsed__validity__end_yweek"] = (event["p443__https__ssl_2__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p443__https__ssl_2__certificate__parsed__validity__end_yquarter"] = (event["p443__https__ssl_2__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p443__https__ssl_2__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p443__https__ssl_2__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p443__https__ssl_2__certificate__parsed__validity__end_wday"])
	  event["p443__https__ssl_2__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p443__https__ssl_2__certificate__parsed__validity__end_wday"])
	end
	event["p443__https__ssl_2__certificate__parsed__validity__end"] = event["p443.https.ssl_2.certificate.parsed.validity.end"]
	event["443__https__ssl_2__certificate__parsed__validity__end"] = event["443.https.ssl_2.certificate.parsed.validity.end"]
	event["443__https__ssl_2__certificate__parsed__validity__end_year"] = parse_timestamp(event["443.https.ssl_2.certificate.parsed.validity.end"])["year"]
	event["443__https__ssl_2__certificate__parsed__validity__end_month"] = parse_timestamp(event["443.https.ssl_2.certificate.parsed.validity.end"])["month"]
	event["443__https__ssl_2__certificate__parsed__validity__end_day"] = parse_timestamp(event["443.https.ssl_2.certificate.parsed.validity.end"])["day"]
	event["443__https__ssl_2__certificate__parsed__validity__end_hour"] = parse_timestamp(event["443.https.ssl_2.certificate.parsed.validity.end"])["hour"]
	event["443__https__ssl_2__certificate__parsed__validity__end_min"] = parse_timestamp(event["443.https.ssl_2.certificate.parsed.validity.end"])["min"]
	event["443__https__ssl_2__certificate__parsed__validity__end_sec"] = parse_timestamp(event["443.https.ssl_2.certificate.parsed.validity.end"])["sec"]
	event["443__https__ssl_2__certificate__parsed__validity__end_yday"] = parse_timestamp(event["443.https.ssl_2.certificate.parsed.validity.end"])["yday"]
	event["443__https__ssl_2__certificate__parsed__validity__end_wday"] = parse_timestamp(event["443.https.ssl_2.certificate.parsed.validity.end"])["wday"]
	event["443__https__ssl_2__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["443.https.ssl_2.certificate.parsed.validity.end"])["isdst"]
	if event["443__https__ssl_2__certificate__parsed__validity__end_yday"] ~= nil then
	  event["443__https__ssl_2__certificate__parsed__validity__end_yweek"] = (event["443__https__ssl_2__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["443__https__ssl_2__certificate__parsed__validity__end_yquarter"] = (event["443__https__ssl_2__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["443__https__ssl_2__certificate__parsed__validity__end_wday"] ~= nil then
	  event["443__https__ssl_2__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["443__https__ssl_2__certificate__parsed__validity__end_wday"])
	  event["443__https__ssl_2__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["443__https__ssl_2__certificate__parsed__validity__end_wday"])
	end
	event["443__https__ssl_2__certificate__parsed__validity__end"] = event["443.https.ssl_2.certificate.parsed.validity.end"]
	event["p102__s7__szl__timestamp_year"] = parse_timestamp(event["p102.s7.szl.timestamp"])["year"]
	event["p102__s7__szl__timestamp_month"] = parse_timestamp(event["p102.s7.szl.timestamp"])["month"]
	event["p102__s7__szl__timestamp_day"] = parse_timestamp(event["p102.s7.szl.timestamp"])["day"]
	event["p102__s7__szl__timestamp_hour"] = parse_timestamp(event["p102.s7.szl.timestamp"])["hour"]
	event["p102__s7__szl__timestamp_min"] = parse_timestamp(event["p102.s7.szl.timestamp"])["min"]
	event["p102__s7__szl__timestamp_sec"] = parse_timestamp(event["p102.s7.szl.timestamp"])["sec"]
	event["p102__s7__szl__timestamp_yday"] = parse_timestamp(event["p102.s7.szl.timestamp"])["yday"]
	event["p102__s7__szl__timestamp_wday"] = parse_timestamp(event["p102.s7.szl.timestamp"])["wday"]
	event["p102__s7__szl__timestamp_isdst"] = parse_timestamp(event["p102.s7.szl.timestamp"])["isdst"]
	if event["p102__s7__szl__timestamp_yday"] ~= nil then
	  event["p102__s7__szl__timestamp_yweek"] = (event["p102__s7__szl__timestamp_yday"] // 7) + 1
	  event["p102__s7__szl__timestamp_yquarter"] = (event["p102__s7__szl__timestamp_yday"] // 91) + 1
	end
	if event["p102__s7__szl__timestamp_wday"] ~= nil then
	  event["p102__s7__szl__timestamp_is_weekend"] = arr_has_value(weekends, event["p102__s7__szl__timestamp_wday"])
	  event["p102__s7__szl__timestamp_is_weekday"] = arr_has_value(weekdays, event["p102__s7__szl__timestamp_wday"])
	end
	event["p102__s7__szl__timestamp"] = event["p102.s7.szl.timestamp"]
	event["102__s7__szl__timestamp"] = event["102.s7.szl.timestamp"]
	event["102__s7__szl__timestamp_year"] = parse_timestamp(event["102.s7.szl.timestamp"])["year"]
	event["102__s7__szl__timestamp_month"] = parse_timestamp(event["102.s7.szl.timestamp"])["month"]
	event["102__s7__szl__timestamp_day"] = parse_timestamp(event["102.s7.szl.timestamp"])["day"]
	event["102__s7__szl__timestamp_hour"] = parse_timestamp(event["102.s7.szl.timestamp"])["hour"]
	event["102__s7__szl__timestamp_min"] = parse_timestamp(event["102.s7.szl.timestamp"])["min"]
	event["102__s7__szl__timestamp_sec"] = parse_timestamp(event["102.s7.szl.timestamp"])["sec"]
	event["102__s7__szl__timestamp_yday"] = parse_timestamp(event["102.s7.szl.timestamp"])["yday"]
	event["102__s7__szl__timestamp_wday"] = parse_timestamp(event["102.s7.szl.timestamp"])["wday"]
	event["102__s7__szl__timestamp_isdst"] = parse_timestamp(event["102.s7.szl.timestamp"])["isdst"]
	if event["102__s7__szl__timestamp_yday"] ~= nil then
	  event["102__s7__szl__timestamp_yweek"] = (event["102__s7__szl__timestamp_yday"] // 7) + 1
	  event["102__s7__szl__timestamp_yquarter"] = (event["102__s7__szl__timestamp_yday"] // 91) + 1
	end
	if event["102__s7__szl__timestamp_wday"] ~= nil then
	  event["102__s7__szl__timestamp_is_weekend"] = arr_has_value(weekends, event["102__s7__szl__timestamp_wday"])
	  event["102__s7__szl__timestamp_is_weekday"] = arr_has_value(weekdays, event["102__s7__szl__timestamp_wday"])
	end
	event["102__s7__szl__timestamp"] = event["102.s7.szl.timestamp"]
	event["p110__pop3__ssl_2__timestamp_year"] = parse_timestamp(event["p110.pop3.ssl_2.timestamp"])["year"]
	event["p110__pop3__ssl_2__timestamp_month"] = parse_timestamp(event["p110.pop3.ssl_2.timestamp"])["month"]
	event["p110__pop3__ssl_2__timestamp_day"] = parse_timestamp(event["p110.pop3.ssl_2.timestamp"])["day"]
	event["p110__pop3__ssl_2__timestamp_hour"] = parse_timestamp(event["p110.pop3.ssl_2.timestamp"])["hour"]
	event["p110__pop3__ssl_2__timestamp_min"] = parse_timestamp(event["p110.pop3.ssl_2.timestamp"])["min"]
	event["p110__pop3__ssl_2__timestamp_sec"] = parse_timestamp(event["p110.pop3.ssl_2.timestamp"])["sec"]
	event["p110__pop3__ssl_2__timestamp_yday"] = parse_timestamp(event["p110.pop3.ssl_2.timestamp"])["yday"]
	event["p110__pop3__ssl_2__timestamp_wday"] = parse_timestamp(event["p110.pop3.ssl_2.timestamp"])["wday"]
	event["p110__pop3__ssl_2__timestamp_isdst"] = parse_timestamp(event["p110.pop3.ssl_2.timestamp"])["isdst"]
	if event["p110__pop3__ssl_2__timestamp_yday"] ~= nil then
	  event["p110__pop3__ssl_2__timestamp_yweek"] = (event["p110__pop3__ssl_2__timestamp_yday"] // 7) + 1
	  event["p110__pop3__ssl_2__timestamp_yquarter"] = (event["p110__pop3__ssl_2__timestamp_yday"] // 91) + 1
	end
	if event["p110__pop3__ssl_2__timestamp_wday"] ~= nil then
	  event["p110__pop3__ssl_2__timestamp_is_weekend"] = arr_has_value(weekends, event["p110__pop3__ssl_2__timestamp_wday"])
	  event["p110__pop3__ssl_2__timestamp_is_weekday"] = arr_has_value(weekdays, event["p110__pop3__ssl_2__timestamp_wday"])
	end
	event["p110__pop3__ssl_2__timestamp"] = event["p110.pop3.ssl_2.timestamp"]
	event["110__pop3__ssl_2__timestamp"] = event["110.pop3.ssl_2.timestamp"]
	event["110__pop3__ssl_2__timestamp_year"] = parse_timestamp(event["110.pop3.ssl_2.timestamp"])["year"]
	event["110__pop3__ssl_2__timestamp_month"] = parse_timestamp(event["110.pop3.ssl_2.timestamp"])["month"]
	event["110__pop3__ssl_2__timestamp_day"] = parse_timestamp(event["110.pop3.ssl_2.timestamp"])["day"]
	event["110__pop3__ssl_2__timestamp_hour"] = parse_timestamp(event["110.pop3.ssl_2.timestamp"])["hour"]
	event["110__pop3__ssl_2__timestamp_min"] = parse_timestamp(event["110.pop3.ssl_2.timestamp"])["min"]
	event["110__pop3__ssl_2__timestamp_sec"] = parse_timestamp(event["110.pop3.ssl_2.timestamp"])["sec"]
	event["110__pop3__ssl_2__timestamp_yday"] = parse_timestamp(event["110.pop3.ssl_2.timestamp"])["yday"]
	event["110__pop3__ssl_2__timestamp_wday"] = parse_timestamp(event["110.pop3.ssl_2.timestamp"])["wday"]
	event["110__pop3__ssl_2__timestamp_isdst"] = parse_timestamp(event["110.pop3.ssl_2.timestamp"])["isdst"]
	if event["110__pop3__ssl_2__timestamp_yday"] ~= nil then
	  event["110__pop3__ssl_2__timestamp_yweek"] = (event["110__pop3__ssl_2__timestamp_yday"] // 7) + 1
	  event["110__pop3__ssl_2__timestamp_yquarter"] = (event["110__pop3__ssl_2__timestamp_yday"] // 91) + 1
	end
	if event["110__pop3__ssl_2__timestamp_wday"] ~= nil then
	  event["110__pop3__ssl_2__timestamp_is_weekend"] = arr_has_value(weekends, event["110__pop3__ssl_2__timestamp_wday"])
	  event["110__pop3__ssl_2__timestamp_is_weekday"] = arr_has_value(weekdays, event["110__pop3__ssl_2__timestamp_wday"])
	end
	event["110__pop3__ssl_2__timestamp"] = event["110.pop3.ssl_2.timestamp"]
	event["p110__pop3__starttls__tls__timestamp_year"] = parse_timestamp(event["p110.pop3.starttls.tls.timestamp"])["year"]
	event["p110__pop3__starttls__tls__timestamp_month"] = parse_timestamp(event["p110.pop3.starttls.tls.timestamp"])["month"]
	event["p110__pop3__starttls__tls__timestamp_day"] = parse_timestamp(event["p110.pop3.starttls.tls.timestamp"])["day"]
	event["p110__pop3__starttls__tls__timestamp_hour"] = parse_timestamp(event["p110.pop3.starttls.tls.timestamp"])["hour"]
	event["p110__pop3__starttls__tls__timestamp_min"] = parse_timestamp(event["p110.pop3.starttls.tls.timestamp"])["min"]
	event["p110__pop3__starttls__tls__timestamp_sec"] = parse_timestamp(event["p110.pop3.starttls.tls.timestamp"])["sec"]
	event["p110__pop3__starttls__tls__timestamp_yday"] = parse_timestamp(event["p110.pop3.starttls.tls.timestamp"])["yday"]
	event["p110__pop3__starttls__tls__timestamp_wday"] = parse_timestamp(event["p110.pop3.starttls.tls.timestamp"])["wday"]
	event["p110__pop3__starttls__tls__timestamp_isdst"] = parse_timestamp(event["p110.pop3.starttls.tls.timestamp"])["isdst"]
	if event["p110__pop3__starttls__tls__timestamp_yday"] ~= nil then
	  event["p110__pop3__starttls__tls__timestamp_yweek"] = (event["p110__pop3__starttls__tls__timestamp_yday"] // 7) + 1
	  event["p110__pop3__starttls__tls__timestamp_yquarter"] = (event["p110__pop3__starttls__tls__timestamp_yday"] // 91) + 1
	end
	if event["p110__pop3__starttls__tls__timestamp_wday"] ~= nil then
	  event["p110__pop3__starttls__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p110__pop3__starttls__tls__timestamp_wday"])
	  event["p110__pop3__starttls__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p110__pop3__starttls__tls__timestamp_wday"])
	end
	event["p110__pop3__starttls__tls__timestamp"] = event["p110.pop3.starttls.tls.timestamp"]
	event["110__pop3__starttls__tls__timestamp"] = event["110.pop3.starttls.tls.timestamp"]
	event["110__pop3__starttls__tls__timestamp_year"] = parse_timestamp(event["110.pop3.starttls.tls.timestamp"])["year"]
	event["110__pop3__starttls__tls__timestamp_month"] = parse_timestamp(event["110.pop3.starttls.tls.timestamp"])["month"]
	event["110__pop3__starttls__tls__timestamp_day"] = parse_timestamp(event["110.pop3.starttls.tls.timestamp"])["day"]
	event["110__pop3__starttls__tls__timestamp_hour"] = parse_timestamp(event["110.pop3.starttls.tls.timestamp"])["hour"]
	event["110__pop3__starttls__tls__timestamp_min"] = parse_timestamp(event["110.pop3.starttls.tls.timestamp"])["min"]
	event["110__pop3__starttls__tls__timestamp_sec"] = parse_timestamp(event["110.pop3.starttls.tls.timestamp"])["sec"]
	event["110__pop3__starttls__tls__timestamp_yday"] = parse_timestamp(event["110.pop3.starttls.tls.timestamp"])["yday"]
	event["110__pop3__starttls__tls__timestamp_wday"] = parse_timestamp(event["110.pop3.starttls.tls.timestamp"])["wday"]
	event["110__pop3__starttls__tls__timestamp_isdst"] = parse_timestamp(event["110.pop3.starttls.tls.timestamp"])["isdst"]
	if event["110__pop3__starttls__tls__timestamp_yday"] ~= nil then
	  event["110__pop3__starttls__tls__timestamp_yweek"] = (event["110__pop3__starttls__tls__timestamp_yday"] // 7) + 1
	  event["110__pop3__starttls__tls__timestamp_yquarter"] = (event["110__pop3__starttls__tls__timestamp_yday"] // 91) + 1
	end
	if event["110__pop3__starttls__tls__timestamp_wday"] ~= nil then
	  event["110__pop3__starttls__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["110__pop3__starttls__tls__timestamp_wday"])
	  event["110__pop3__starttls__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["110__pop3__starttls__tls__timestamp_wday"])
	end
	event["110__pop3__starttls__tls__timestamp"] = event["110.pop3.starttls.tls.timestamp"]
	event["p110__pop3__starttls__timestamp_year"] = parse_timestamp(event["p110.pop3.starttls.timestamp"])["year"]
	event["p110__pop3__starttls__timestamp_month"] = parse_timestamp(event["p110.pop3.starttls.timestamp"])["month"]
	event["p110__pop3__starttls__timestamp_day"] = parse_timestamp(event["p110.pop3.starttls.timestamp"])["day"]
	event["p110__pop3__starttls__timestamp_hour"] = parse_timestamp(event["p110.pop3.starttls.timestamp"])["hour"]
	event["p110__pop3__starttls__timestamp_min"] = parse_timestamp(event["p110.pop3.starttls.timestamp"])["min"]
	event["p110__pop3__starttls__timestamp_sec"] = parse_timestamp(event["p110.pop3.starttls.timestamp"])["sec"]
	event["p110__pop3__starttls__timestamp_yday"] = parse_timestamp(event["p110.pop3.starttls.timestamp"])["yday"]
	event["p110__pop3__starttls__timestamp_wday"] = parse_timestamp(event["p110.pop3.starttls.timestamp"])["wday"]
	event["p110__pop3__starttls__timestamp_isdst"] = parse_timestamp(event["p110.pop3.starttls.timestamp"])["isdst"]
	if event["p110__pop3__starttls__timestamp_yday"] ~= nil then
	  event["p110__pop3__starttls__timestamp_yweek"] = (event["p110__pop3__starttls__timestamp_yday"] // 7) + 1
	  event["p110__pop3__starttls__timestamp_yquarter"] = (event["p110__pop3__starttls__timestamp_yday"] // 91) + 1
	end
	if event["p110__pop3__starttls__timestamp_wday"] ~= nil then
	  event["p110__pop3__starttls__timestamp_is_weekend"] = arr_has_value(weekends, event["p110__pop3__starttls__timestamp_wday"])
	  event["p110__pop3__starttls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p110__pop3__starttls__timestamp_wday"])
	end
	event["p110__pop3__starttls__timestamp"] = event["p110.pop3.starttls.timestamp"]
	event["110__pop3__starttls__timestamp"] = event["110.pop3.starttls.timestamp"]
	event["110__pop3__starttls__timestamp_year"] = parse_timestamp(event["110.pop3.starttls.timestamp"])["year"]
	event["110__pop3__starttls__timestamp_month"] = parse_timestamp(event["110.pop3.starttls.timestamp"])["month"]
	event["110__pop3__starttls__timestamp_day"] = parse_timestamp(event["110.pop3.starttls.timestamp"])["day"]
	event["110__pop3__starttls__timestamp_hour"] = parse_timestamp(event["110.pop3.starttls.timestamp"])["hour"]
	event["110__pop3__starttls__timestamp_min"] = parse_timestamp(event["110.pop3.starttls.timestamp"])["min"]
	event["110__pop3__starttls__timestamp_sec"] = parse_timestamp(event["110.pop3.starttls.timestamp"])["sec"]
	event["110__pop3__starttls__timestamp_yday"] = parse_timestamp(event["110.pop3.starttls.timestamp"])["yday"]
	event["110__pop3__starttls__timestamp_wday"] = parse_timestamp(event["110.pop3.starttls.timestamp"])["wday"]
	event["110__pop3__starttls__timestamp_isdst"] = parse_timestamp(event["110.pop3.starttls.timestamp"])["isdst"]
	if event["110__pop3__starttls__timestamp_yday"] ~= nil then
	  event["110__pop3__starttls__timestamp_yweek"] = (event["110__pop3__starttls__timestamp_yday"] // 7) + 1
	  event["110__pop3__starttls__timestamp_yquarter"] = (event["110__pop3__starttls__timestamp_yday"] // 91) + 1
	end
	if event["110__pop3__starttls__timestamp_wday"] ~= nil then
	  event["110__pop3__starttls__timestamp_is_weekend"] = arr_has_value(weekends, event["110__pop3__starttls__timestamp_wday"])
	  event["110__pop3__starttls__timestamp_is_weekday"] = arr_has_value(weekdays, event["110__pop3__starttls__timestamp_wday"])
	end
	event["110__pop3__starttls__timestamp"] = event["110.pop3.starttls.timestamp"]
	event["p80__http__get__timestamp_year"] = parse_timestamp(event["p80.http.get.timestamp"])["year"]
	event["p80__http__get__timestamp_month"] = parse_timestamp(event["p80.http.get.timestamp"])["month"]
	event["p80__http__get__timestamp_day"] = parse_timestamp(event["p80.http.get.timestamp"])["day"]
	event["p80__http__get__timestamp_hour"] = parse_timestamp(event["p80.http.get.timestamp"])["hour"]
	event["p80__http__get__timestamp_min"] = parse_timestamp(event["p80.http.get.timestamp"])["min"]
	event["p80__http__get__timestamp_sec"] = parse_timestamp(event["p80.http.get.timestamp"])["sec"]
	event["p80__http__get__timestamp_yday"] = parse_timestamp(event["p80.http.get.timestamp"])["yday"]
	event["p80__http__get__timestamp_wday"] = parse_timestamp(event["p80.http.get.timestamp"])["wday"]
	event["p80__http__get__timestamp_isdst"] = parse_timestamp(event["p80.http.get.timestamp"])["isdst"]
	if event["p80__http__get__timestamp_yday"] ~= nil then
	  event["p80__http__get__timestamp_yweek"] = (event["p80__http__get__timestamp_yday"] // 7) + 1
	  event["p80__http__get__timestamp_yquarter"] = (event["p80__http__get__timestamp_yday"] // 91) + 1
	end
	if event["p80__http__get__timestamp_wday"] ~= nil then
	  event["p80__http__get__timestamp_is_weekend"] = arr_has_value(weekends, event["p80__http__get__timestamp_wday"])
	  event["p80__http__get__timestamp_is_weekday"] = arr_has_value(weekdays, event["p80__http__get__timestamp_wday"])
	end
	event["p80__http__get__timestamp"] = event["p80.http.get.timestamp"]
	event["80__http__get__timestamp"] = event["80.http.get.timestamp"]
	event["80__http__get__timestamp_year"] = parse_timestamp(event["80.http.get.timestamp"])["year"]
	event["80__http__get__timestamp_month"] = parse_timestamp(event["80.http.get.timestamp"])["month"]
	event["80__http__get__timestamp_day"] = parse_timestamp(event["80.http.get.timestamp"])["day"]
	event["80__http__get__timestamp_hour"] = parse_timestamp(event["80.http.get.timestamp"])["hour"]
	event["80__http__get__timestamp_min"] = parse_timestamp(event["80.http.get.timestamp"])["min"]
	event["80__http__get__timestamp_sec"] = parse_timestamp(event["80.http.get.timestamp"])["sec"]
	event["80__http__get__timestamp_yday"] = parse_timestamp(event["80.http.get.timestamp"])["yday"]
	event["80__http__get__timestamp_wday"] = parse_timestamp(event["80.http.get.timestamp"])["wday"]
	event["80__http__get__timestamp_isdst"] = parse_timestamp(event["80.http.get.timestamp"])["isdst"]
	if event["80__http__get__timestamp_yday"] ~= nil then
	  event["80__http__get__timestamp_yweek"] = (event["80__http__get__timestamp_yday"] // 7) + 1
	  event["80__http__get__timestamp_yquarter"] = (event["80__http__get__timestamp_yday"] // 91) + 1
	end
	if event["80__http__get__timestamp_wday"] ~= nil then
	  event["80__http__get__timestamp_is_weekend"] = arr_has_value(weekends, event["80__http__get__timestamp_wday"])
	  event["80__http__get__timestamp_is_weekday"] = arr_has_value(weekdays, event["80__http__get__timestamp_wday"])
	end
	event["80__http__get__timestamp"] = event["80.http.get.timestamp"]
	event["p25__smtp__ssl_2__timestamp_year"] = parse_timestamp(event["p25.smtp.ssl_2.timestamp"])["year"]
	event["p25__smtp__ssl_2__timestamp_month"] = parse_timestamp(event["p25.smtp.ssl_2.timestamp"])["month"]
	event["p25__smtp__ssl_2__timestamp_day"] = parse_timestamp(event["p25.smtp.ssl_2.timestamp"])["day"]
	event["p25__smtp__ssl_2__timestamp_hour"] = parse_timestamp(event["p25.smtp.ssl_2.timestamp"])["hour"]
	event["p25__smtp__ssl_2__timestamp_min"] = parse_timestamp(event["p25.smtp.ssl_2.timestamp"])["min"]
	event["p25__smtp__ssl_2__timestamp_sec"] = parse_timestamp(event["p25.smtp.ssl_2.timestamp"])["sec"]
	event["p25__smtp__ssl_2__timestamp_yday"] = parse_timestamp(event["p25.smtp.ssl_2.timestamp"])["yday"]
	event["p25__smtp__ssl_2__timestamp_wday"] = parse_timestamp(event["p25.smtp.ssl_2.timestamp"])["wday"]
	event["p25__smtp__ssl_2__timestamp_isdst"] = parse_timestamp(event["p25.smtp.ssl_2.timestamp"])["isdst"]
	if event["p25__smtp__ssl_2__timestamp_yday"] ~= nil then
	  event["p25__smtp__ssl_2__timestamp_yweek"] = (event["p25__smtp__ssl_2__timestamp_yday"] // 7) + 1
	  event["p25__smtp__ssl_2__timestamp_yquarter"] = (event["p25__smtp__ssl_2__timestamp_yday"] // 91) + 1
	end
	if event["p25__smtp__ssl_2__timestamp_wday"] ~= nil then
	  event["p25__smtp__ssl_2__timestamp_is_weekend"] = arr_has_value(weekends, event["p25__smtp__ssl_2__timestamp_wday"])
	  event["p25__smtp__ssl_2__timestamp_is_weekday"] = arr_has_value(weekdays, event["p25__smtp__ssl_2__timestamp_wday"])
	end
	event["p25__smtp__ssl_2__timestamp"] = event["p25.smtp.ssl_2.timestamp"]
	event["25__smtp__ssl_2__timestamp"] = event["25.smtp.ssl_2.timestamp"]
	event["25__smtp__ssl_2__timestamp_year"] = parse_timestamp(event["25.smtp.ssl_2.timestamp"])["year"]
	event["25__smtp__ssl_2__timestamp_month"] = parse_timestamp(event["25.smtp.ssl_2.timestamp"])["month"]
	event["25__smtp__ssl_2__timestamp_day"] = parse_timestamp(event["25.smtp.ssl_2.timestamp"])["day"]
	event["25__smtp__ssl_2__timestamp_hour"] = parse_timestamp(event["25.smtp.ssl_2.timestamp"])["hour"]
	event["25__smtp__ssl_2__timestamp_min"] = parse_timestamp(event["25.smtp.ssl_2.timestamp"])["min"]
	event["25__smtp__ssl_2__timestamp_sec"] = parse_timestamp(event["25.smtp.ssl_2.timestamp"])["sec"]
	event["25__smtp__ssl_2__timestamp_yday"] = parse_timestamp(event["25.smtp.ssl_2.timestamp"])["yday"]
	event["25__smtp__ssl_2__timestamp_wday"] = parse_timestamp(event["25.smtp.ssl_2.timestamp"])["wday"]
	event["25__smtp__ssl_2__timestamp_isdst"] = parse_timestamp(event["25.smtp.ssl_2.timestamp"])["isdst"]
	if event["25__smtp__ssl_2__timestamp_yday"] ~= nil then
	  event["25__smtp__ssl_2__timestamp_yweek"] = (event["25__smtp__ssl_2__timestamp_yday"] // 7) + 1
	  event["25__smtp__ssl_2__timestamp_yquarter"] = (event["25__smtp__ssl_2__timestamp_yday"] // 91) + 1
	end
	if event["25__smtp__ssl_2__timestamp_wday"] ~= nil then
	  event["25__smtp__ssl_2__timestamp_is_weekend"] = arr_has_value(weekends, event["25__smtp__ssl_2__timestamp_wday"])
	  event["25__smtp__ssl_2__timestamp_is_weekday"] = arr_has_value(weekdays, event["25__smtp__ssl_2__timestamp_wday"])
	end
	event["25__smtp__ssl_2__timestamp"] = event["25.smtp.ssl_2.timestamp"]
	event["p25__smtp__starttls__tls__timestamp_year"] = parse_timestamp(event["p25.smtp.starttls.tls.timestamp"])["year"]
	event["p25__smtp__starttls__tls__timestamp_month"] = parse_timestamp(event["p25.smtp.starttls.tls.timestamp"])["month"]
	event["p25__smtp__starttls__tls__timestamp_day"] = parse_timestamp(event["p25.smtp.starttls.tls.timestamp"])["day"]
	event["p25__smtp__starttls__tls__timestamp_hour"] = parse_timestamp(event["p25.smtp.starttls.tls.timestamp"])["hour"]
	event["p25__smtp__starttls__tls__timestamp_min"] = parse_timestamp(event["p25.smtp.starttls.tls.timestamp"])["min"]
	event["p25__smtp__starttls__tls__timestamp_sec"] = parse_timestamp(event["p25.smtp.starttls.tls.timestamp"])["sec"]
	event["p25__smtp__starttls__tls__timestamp_yday"] = parse_timestamp(event["p25.smtp.starttls.tls.timestamp"])["yday"]
	event["p25__smtp__starttls__tls__timestamp_wday"] = parse_timestamp(event["p25.smtp.starttls.tls.timestamp"])["wday"]
	event["p25__smtp__starttls__tls__timestamp_isdst"] = parse_timestamp(event["p25.smtp.starttls.tls.timestamp"])["isdst"]
	if event["p25__smtp__starttls__tls__timestamp_yday"] ~= nil then
	  event["p25__smtp__starttls__tls__timestamp_yweek"] = (event["p25__smtp__starttls__tls__timestamp_yday"] // 7) + 1
	  event["p25__smtp__starttls__tls__timestamp_yquarter"] = (event["p25__smtp__starttls__tls__timestamp_yday"] // 91) + 1
	end
	if event["p25__smtp__starttls__tls__timestamp_wday"] ~= nil then
	  event["p25__smtp__starttls__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p25__smtp__starttls__tls__timestamp_wday"])
	  event["p25__smtp__starttls__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p25__smtp__starttls__tls__timestamp_wday"])
	end
	event["p25__smtp__starttls__tls__timestamp"] = event["p25.smtp.starttls.tls.timestamp"]
	event["25__smtp__starttls__tls__timestamp"] = event["25.smtp.starttls.tls.timestamp"]
	event["25__smtp__starttls__tls__timestamp_year"] = parse_timestamp(event["25.smtp.starttls.tls.timestamp"])["year"]
	event["25__smtp__starttls__tls__timestamp_month"] = parse_timestamp(event["25.smtp.starttls.tls.timestamp"])["month"]
	event["25__smtp__starttls__tls__timestamp_day"] = parse_timestamp(event["25.smtp.starttls.tls.timestamp"])["day"]
	event["25__smtp__starttls__tls__timestamp_hour"] = parse_timestamp(event["25.smtp.starttls.tls.timestamp"])["hour"]
	event["25__smtp__starttls__tls__timestamp_min"] = parse_timestamp(event["25.smtp.starttls.tls.timestamp"])["min"]
	event["25__smtp__starttls__tls__timestamp_sec"] = parse_timestamp(event["25.smtp.starttls.tls.timestamp"])["sec"]
	event["25__smtp__starttls__tls__timestamp_yday"] = parse_timestamp(event["25.smtp.starttls.tls.timestamp"])["yday"]
	event["25__smtp__starttls__tls__timestamp_wday"] = parse_timestamp(event["25.smtp.starttls.tls.timestamp"])["wday"]
	event["25__smtp__starttls__tls__timestamp_isdst"] = parse_timestamp(event["25.smtp.starttls.tls.timestamp"])["isdst"]
	if event["25__smtp__starttls__tls__timestamp_yday"] ~= nil then
	  event["25__smtp__starttls__tls__timestamp_yweek"] = (event["25__smtp__starttls__tls__timestamp_yday"] // 7) + 1
	  event["25__smtp__starttls__tls__timestamp_yquarter"] = (event["25__smtp__starttls__tls__timestamp_yday"] // 91) + 1
	end
	if event["25__smtp__starttls__tls__timestamp_wday"] ~= nil then
	  event["25__smtp__starttls__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["25__smtp__starttls__tls__timestamp_wday"])
	  event["25__smtp__starttls__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["25__smtp__starttls__tls__timestamp_wday"])
	end
	event["25__smtp__starttls__tls__timestamp"] = event["25.smtp.starttls.tls.timestamp"]
	event["p25__smtp__starttls__timestamp_year"] = parse_timestamp(event["p25.smtp.starttls.timestamp"])["year"]
	event["p25__smtp__starttls__timestamp_month"] = parse_timestamp(event["p25.smtp.starttls.timestamp"])["month"]
	event["p25__smtp__starttls__timestamp_day"] = parse_timestamp(event["p25.smtp.starttls.timestamp"])["day"]
	event["p25__smtp__starttls__timestamp_hour"] = parse_timestamp(event["p25.smtp.starttls.timestamp"])["hour"]
	event["p25__smtp__starttls__timestamp_min"] = parse_timestamp(event["p25.smtp.starttls.timestamp"])["min"]
	event["p25__smtp__starttls__timestamp_sec"] = parse_timestamp(event["p25.smtp.starttls.timestamp"])["sec"]
	event["p25__smtp__starttls__timestamp_yday"] = parse_timestamp(event["p25.smtp.starttls.timestamp"])["yday"]
	event["p25__smtp__starttls__timestamp_wday"] = parse_timestamp(event["p25.smtp.starttls.timestamp"])["wday"]
	event["p25__smtp__starttls__timestamp_isdst"] = parse_timestamp(event["p25.smtp.starttls.timestamp"])["isdst"]
	if event["p25__smtp__starttls__timestamp_yday"] ~= nil then
	  event["p25__smtp__starttls__timestamp_yweek"] = (event["p25__smtp__starttls__timestamp_yday"] // 7) + 1
	  event["p25__smtp__starttls__timestamp_yquarter"] = (event["p25__smtp__starttls__timestamp_yday"] // 91) + 1
	end
	if event["p25__smtp__starttls__timestamp_wday"] ~= nil then
	  event["p25__smtp__starttls__timestamp_is_weekend"] = arr_has_value(weekends, event["p25__smtp__starttls__timestamp_wday"])
	  event["p25__smtp__starttls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p25__smtp__starttls__timestamp_wday"])
	end
	event["p25__smtp__starttls__timestamp"] = event["p25.smtp.starttls.timestamp"]
	event["25__smtp__starttls__timestamp"] = event["25.smtp.starttls.timestamp"]
	event["25__smtp__starttls__timestamp_year"] = parse_timestamp(event["25.smtp.starttls.timestamp"])["year"]
	event["25__smtp__starttls__timestamp_month"] = parse_timestamp(event["25.smtp.starttls.timestamp"])["month"]
	event["25__smtp__starttls__timestamp_day"] = parse_timestamp(event["25.smtp.starttls.timestamp"])["day"]
	event["25__smtp__starttls__timestamp_hour"] = parse_timestamp(event["25.smtp.starttls.timestamp"])["hour"]
	event["25__smtp__starttls__timestamp_min"] = parse_timestamp(event["25.smtp.starttls.timestamp"])["min"]
	event["25__smtp__starttls__timestamp_sec"] = parse_timestamp(event["25.smtp.starttls.timestamp"])["sec"]
	event["25__smtp__starttls__timestamp_yday"] = parse_timestamp(event["25.smtp.starttls.timestamp"])["yday"]
	event["25__smtp__starttls__timestamp_wday"] = parse_timestamp(event["25.smtp.starttls.timestamp"])["wday"]
	event["25__smtp__starttls__timestamp_isdst"] = parse_timestamp(event["25.smtp.starttls.timestamp"])["isdst"]
	if event["25__smtp__starttls__timestamp_yday"] ~= nil then
	  event["25__smtp__starttls__timestamp_yweek"] = (event["25__smtp__starttls__timestamp_yday"] // 7) + 1
	  event["25__smtp__starttls__timestamp_yquarter"] = (event["25__smtp__starttls__timestamp_yday"] // 91) + 1
	end
	if event["25__smtp__starttls__timestamp_wday"] ~= nil then
	  event["25__smtp__starttls__timestamp_is_weekend"] = arr_has_value(weekends, event["25__smtp__starttls__timestamp_wday"])
	  event["25__smtp__starttls__timestamp_is_weekday"] = arr_has_value(weekdays, event["25__smtp__starttls__timestamp_wday"])
	end
	event["25__smtp__starttls__timestamp"] = event["25.smtp.starttls.timestamp"]
	event["p21__ftp__banner__timestamp_year"] = parse_timestamp(event["p21.ftp.banner.timestamp"])["year"]
	event["p21__ftp__banner__timestamp_month"] = parse_timestamp(event["p21.ftp.banner.timestamp"])["month"]
	event["p21__ftp__banner__timestamp_day"] = parse_timestamp(event["p21.ftp.banner.timestamp"])["day"]
	event["p21__ftp__banner__timestamp_hour"] = parse_timestamp(event["p21.ftp.banner.timestamp"])["hour"]
	event["p21__ftp__banner__timestamp_min"] = parse_timestamp(event["p21.ftp.banner.timestamp"])["min"]
	event["p21__ftp__banner__timestamp_sec"] = parse_timestamp(event["p21.ftp.banner.timestamp"])["sec"]
	event["p21__ftp__banner__timestamp_yday"] = parse_timestamp(event["p21.ftp.banner.timestamp"])["yday"]
	event["p21__ftp__banner__timestamp_wday"] = parse_timestamp(event["p21.ftp.banner.timestamp"])["wday"]
	event["p21__ftp__banner__timestamp_isdst"] = parse_timestamp(event["p21.ftp.banner.timestamp"])["isdst"]
	if event["p21__ftp__banner__timestamp_yday"] ~= nil then
	  event["p21__ftp__banner__timestamp_yweek"] = (event["p21__ftp__banner__timestamp_yday"] // 7) + 1
	  event["p21__ftp__banner__timestamp_yquarter"] = (event["p21__ftp__banner__timestamp_yday"] // 91) + 1
	end
	if event["p21__ftp__banner__timestamp_wday"] ~= nil then
	  event["p21__ftp__banner__timestamp_is_weekend"] = arr_has_value(weekends, event["p21__ftp__banner__timestamp_wday"])
	  event["p21__ftp__banner__timestamp_is_weekday"] = arr_has_value(weekdays, event["p21__ftp__banner__timestamp_wday"])
	end
	event["p21__ftp__banner__timestamp"] = event["p21.ftp.banner.timestamp"]
	event["21__ftp__banner__timestamp"] = event["21.ftp.banner.timestamp"]
	event["21__ftp__banner__timestamp_year"] = parse_timestamp(event["21.ftp.banner.timestamp"])["year"]
	event["21__ftp__banner__timestamp_month"] = parse_timestamp(event["21.ftp.banner.timestamp"])["month"]
	event["21__ftp__banner__timestamp_day"] = parse_timestamp(event["21.ftp.banner.timestamp"])["day"]
	event["21__ftp__banner__timestamp_hour"] = parse_timestamp(event["21.ftp.banner.timestamp"])["hour"]
	event["21__ftp__banner__timestamp_min"] = parse_timestamp(event["21.ftp.banner.timestamp"])["min"]
	event["21__ftp__banner__timestamp_sec"] = parse_timestamp(event["21.ftp.banner.timestamp"])["sec"]
	event["21__ftp__banner__timestamp_yday"] = parse_timestamp(event["21.ftp.banner.timestamp"])["yday"]
	event["21__ftp__banner__timestamp_wday"] = parse_timestamp(event["21.ftp.banner.timestamp"])["wday"]
	event["21__ftp__banner__timestamp_isdst"] = parse_timestamp(event["21.ftp.banner.timestamp"])["isdst"]
	if event["21__ftp__banner__timestamp_yday"] ~= nil then
	  event["21__ftp__banner__timestamp_yweek"] = (event["21__ftp__banner__timestamp_yday"] // 7) + 1
	  event["21__ftp__banner__timestamp_yquarter"] = (event["21__ftp__banner__timestamp_yday"] // 91) + 1
	end
	if event["21__ftp__banner__timestamp_wday"] ~= nil then
	  event["21__ftp__banner__timestamp_is_weekend"] = arr_has_value(weekends, event["21__ftp__banner__timestamp_wday"])
	  event["21__ftp__banner__timestamp_is_weekday"] = arr_has_value(weekdays, event["21__ftp__banner__timestamp_wday"])
	end
	event["21__ftp__banner__timestamp"] = event["21.ftp.banner.timestamp"]
	event["p22__ssh__banner__timestamp_year"] = parse_timestamp(event["p22.ssh.banner.timestamp"])["year"]
	event["p22__ssh__banner__timestamp_month"] = parse_timestamp(event["p22.ssh.banner.timestamp"])["month"]
	event["p22__ssh__banner__timestamp_day"] = parse_timestamp(event["p22.ssh.banner.timestamp"])["day"]
	event["p22__ssh__banner__timestamp_hour"] = parse_timestamp(event["p22.ssh.banner.timestamp"])["hour"]
	event["p22__ssh__banner__timestamp_min"] = parse_timestamp(event["p22.ssh.banner.timestamp"])["min"]
	event["p22__ssh__banner__timestamp_sec"] = parse_timestamp(event["p22.ssh.banner.timestamp"])["sec"]
	event["p22__ssh__banner__timestamp_yday"] = parse_timestamp(event["p22.ssh.banner.timestamp"])["yday"]
	event["p22__ssh__banner__timestamp_wday"] = parse_timestamp(event["p22.ssh.banner.timestamp"])["wday"]
	event["p22__ssh__banner__timestamp_isdst"] = parse_timestamp(event["p22.ssh.banner.timestamp"])["isdst"]
	if event["p22__ssh__banner__timestamp_yday"] ~= nil then
	  event["p22__ssh__banner__timestamp_yweek"] = (event["p22__ssh__banner__timestamp_yday"] // 7) + 1
	  event["p22__ssh__banner__timestamp_yquarter"] = (event["p22__ssh__banner__timestamp_yday"] // 91) + 1
	end
	if event["p22__ssh__banner__timestamp_wday"] ~= nil then
	  event["p22__ssh__banner__timestamp_is_weekend"] = arr_has_value(weekends, event["p22__ssh__banner__timestamp_wday"])
	  event["p22__ssh__banner__timestamp_is_weekday"] = arr_has_value(weekdays, event["p22__ssh__banner__timestamp_wday"])
	end
	event["p22__ssh__banner__timestamp"] = event["p22.ssh.banner.timestamp"]
	event["22__ssh__banner__timestamp"] = event["22.ssh.banner.timestamp"]
	event["22__ssh__banner__timestamp_year"] = parse_timestamp(event["22.ssh.banner.timestamp"])["year"]
	event["22__ssh__banner__timestamp_month"] = parse_timestamp(event["22.ssh.banner.timestamp"])["month"]
	event["22__ssh__banner__timestamp_day"] = parse_timestamp(event["22.ssh.banner.timestamp"])["day"]
	event["22__ssh__banner__timestamp_hour"] = parse_timestamp(event["22.ssh.banner.timestamp"])["hour"]
	event["22__ssh__banner__timestamp_min"] = parse_timestamp(event["22.ssh.banner.timestamp"])["min"]
	event["22__ssh__banner__timestamp_sec"] = parse_timestamp(event["22.ssh.banner.timestamp"])["sec"]
	event["22__ssh__banner__timestamp_yday"] = parse_timestamp(event["22.ssh.banner.timestamp"])["yday"]
	event["22__ssh__banner__timestamp_wday"] = parse_timestamp(event["22.ssh.banner.timestamp"])["wday"]
	event["22__ssh__banner__timestamp_isdst"] = parse_timestamp(event["22.ssh.banner.timestamp"])["isdst"]
	if event["22__ssh__banner__timestamp_yday"] ~= nil then
	  event["22__ssh__banner__timestamp_yweek"] = (event["22__ssh__banner__timestamp_yday"] // 7) + 1
	  event["22__ssh__banner__timestamp_yquarter"] = (event["22__ssh__banner__timestamp_yday"] // 91) + 1
	end
	if event["22__ssh__banner__timestamp_wday"] ~= nil then
	  event["22__ssh__banner__timestamp_is_weekend"] = arr_has_value(weekends, event["22__ssh__banner__timestamp_wday"])
	  event["22__ssh__banner__timestamp_is_weekday"] = arr_has_value(weekdays, event["22__ssh__banner__timestamp_wday"])
	end
	event["22__ssh__banner__timestamp"] = event["22.ssh.banner.timestamp"]
	event["p23__telnet__banner__timestamp_year"] = parse_timestamp(event["p23.telnet.banner.timestamp"])["year"]
	event["p23__telnet__banner__timestamp_month"] = parse_timestamp(event["p23.telnet.banner.timestamp"])["month"]
	event["p23__telnet__banner__timestamp_day"] = parse_timestamp(event["p23.telnet.banner.timestamp"])["day"]
	event["p23__telnet__banner__timestamp_hour"] = parse_timestamp(event["p23.telnet.banner.timestamp"])["hour"]
	event["p23__telnet__banner__timestamp_min"] = parse_timestamp(event["p23.telnet.banner.timestamp"])["min"]
	event["p23__telnet__banner__timestamp_sec"] = parse_timestamp(event["p23.telnet.banner.timestamp"])["sec"]
	event["p23__telnet__banner__timestamp_yday"] = parse_timestamp(event["p23.telnet.banner.timestamp"])["yday"]
	event["p23__telnet__banner__timestamp_wday"] = parse_timestamp(event["p23.telnet.banner.timestamp"])["wday"]
	event["p23__telnet__banner__timestamp_isdst"] = parse_timestamp(event["p23.telnet.banner.timestamp"])["isdst"]
	if event["p23__telnet__banner__timestamp_yday"] ~= nil then
	  event["p23__telnet__banner__timestamp_yweek"] = (event["p23__telnet__banner__timestamp_yday"] // 7) + 1
	  event["p23__telnet__banner__timestamp_yquarter"] = (event["p23__telnet__banner__timestamp_yday"] // 91) + 1
	end
	if event["p23__telnet__banner__timestamp_wday"] ~= nil then
	  event["p23__telnet__banner__timestamp_is_weekend"] = arr_has_value(weekends, event["p23__telnet__banner__timestamp_wday"])
	  event["p23__telnet__banner__timestamp_is_weekday"] = arr_has_value(weekdays, event["p23__telnet__banner__timestamp_wday"])
	end
	event["p23__telnet__banner__timestamp"] = event["p23.telnet.banner.timestamp"]
	event["23__telnet__banner__timestamp"] = event["23.telnet.banner.timestamp"]
	event["23__telnet__banner__timestamp_year"] = parse_timestamp(event["23.telnet.banner.timestamp"])["year"]
	event["23__telnet__banner__timestamp_month"] = parse_timestamp(event["23.telnet.banner.timestamp"])["month"]
	event["23__telnet__banner__timestamp_day"] = parse_timestamp(event["23.telnet.banner.timestamp"])["day"]
	event["23__telnet__banner__timestamp_hour"] = parse_timestamp(event["23.telnet.banner.timestamp"])["hour"]
	event["23__telnet__banner__timestamp_min"] = parse_timestamp(event["23.telnet.banner.timestamp"])["min"]
	event["23__telnet__banner__timestamp_sec"] = parse_timestamp(event["23.telnet.banner.timestamp"])["sec"]
	event["23__telnet__banner__timestamp_yday"] = parse_timestamp(event["23.telnet.banner.timestamp"])["yday"]
	event["23__telnet__banner__timestamp_wday"] = parse_timestamp(event["23.telnet.banner.timestamp"])["wday"]
	event["23__telnet__banner__timestamp_isdst"] = parse_timestamp(event["23.telnet.banner.timestamp"])["isdst"]
	if event["23__telnet__banner__timestamp_yday"] ~= nil then
	  event["23__telnet__banner__timestamp_yweek"] = (event["23__telnet__banner__timestamp_yday"] // 7) + 1
	  event["23__telnet__banner__timestamp_yquarter"] = (event["23__telnet__banner__timestamp_yday"] // 91) + 1
	end
	if event["23__telnet__banner__timestamp_wday"] ~= nil then
	  event["23__telnet__banner__timestamp_is_weekend"] = arr_has_value(weekends, event["23__telnet__banner__timestamp_wday"])
	  event["23__telnet__banner__timestamp_is_weekday"] = arr_has_value(weekdays, event["23__telnet__banner__timestamp_wday"])
	end
	event["23__telnet__banner__timestamp"] = event["23.telnet.banner.timestamp"]
	event["p47808__bacnet__device_id__timestamp_year"] = parse_timestamp(event["p47808.bacnet.device_id.timestamp"])["year"]
	event["p47808__bacnet__device_id__timestamp_month"] = parse_timestamp(event["p47808.bacnet.device_id.timestamp"])["month"]
	event["p47808__bacnet__device_id__timestamp_day"] = parse_timestamp(event["p47808.bacnet.device_id.timestamp"])["day"]
	event["p47808__bacnet__device_id__timestamp_hour"] = parse_timestamp(event["p47808.bacnet.device_id.timestamp"])["hour"]
	event["p47808__bacnet__device_id__timestamp_min"] = parse_timestamp(event["p47808.bacnet.device_id.timestamp"])["min"]
	event["p47808__bacnet__device_id__timestamp_sec"] = parse_timestamp(event["p47808.bacnet.device_id.timestamp"])["sec"]
	event["p47808__bacnet__device_id__timestamp_yday"] = parse_timestamp(event["p47808.bacnet.device_id.timestamp"])["yday"]
	event["p47808__bacnet__device_id__timestamp_wday"] = parse_timestamp(event["p47808.bacnet.device_id.timestamp"])["wday"]
	event["p47808__bacnet__device_id__timestamp_isdst"] = parse_timestamp(event["p47808.bacnet.device_id.timestamp"])["isdst"]
	if event["p47808__bacnet__device_id__timestamp_yday"] ~= nil then
	  event["p47808__bacnet__device_id__timestamp_yweek"] = (event["p47808__bacnet__device_id__timestamp_yday"] // 7) + 1
	  event["p47808__bacnet__device_id__timestamp_yquarter"] = (event["p47808__bacnet__device_id__timestamp_yday"] // 91) + 1
	end
	if event["p47808__bacnet__device_id__timestamp_wday"] ~= nil then
	  event["p47808__bacnet__device_id__timestamp_is_weekend"] = arr_has_value(weekends, event["p47808__bacnet__device_id__timestamp_wday"])
	  event["p47808__bacnet__device_id__timestamp_is_weekday"] = arr_has_value(weekdays, event["p47808__bacnet__device_id__timestamp_wday"])
	end
	event["p47808__bacnet__device_id__timestamp"] = event["p47808.bacnet.device_id.timestamp"]
	event["47808__bacnet__device_id__timestamp"] = event["47808.bacnet.device_id.timestamp"]
	event["47808__bacnet__device_id__timestamp_year"] = parse_timestamp(event["47808.bacnet.device_id.timestamp"])["year"]
	event["47808__bacnet__device_id__timestamp_month"] = parse_timestamp(event["47808.bacnet.device_id.timestamp"])["month"]
	event["47808__bacnet__device_id__timestamp_day"] = parse_timestamp(event["47808.bacnet.device_id.timestamp"])["day"]
	event["47808__bacnet__device_id__timestamp_hour"] = parse_timestamp(event["47808.bacnet.device_id.timestamp"])["hour"]
	event["47808__bacnet__device_id__timestamp_min"] = parse_timestamp(event["47808.bacnet.device_id.timestamp"])["min"]
	event["47808__bacnet__device_id__timestamp_sec"] = parse_timestamp(event["47808.bacnet.device_id.timestamp"])["sec"]
	event["47808__bacnet__device_id__timestamp_yday"] = parse_timestamp(event["47808.bacnet.device_id.timestamp"])["yday"]
	event["47808__bacnet__device_id__timestamp_wday"] = parse_timestamp(event["47808.bacnet.device_id.timestamp"])["wday"]
	event["47808__bacnet__device_id__timestamp_isdst"] = parse_timestamp(event["47808.bacnet.device_id.timestamp"])["isdst"]
	if event["47808__bacnet__device_id__timestamp_yday"] ~= nil then
	  event["47808__bacnet__device_id__timestamp_yweek"] = (event["47808__bacnet__device_id__timestamp_yday"] // 7) + 1
	  event["47808__bacnet__device_id__timestamp_yquarter"] = (event["47808__bacnet__device_id__timestamp_yday"] // 91) + 1
	end
	if event["47808__bacnet__device_id__timestamp_wday"] ~= nil then
	  event["47808__bacnet__device_id__timestamp_is_weekend"] = arr_has_value(weekends, event["47808__bacnet__device_id__timestamp_wday"])
	  event["47808__bacnet__device_id__timestamp_is_weekday"] = arr_has_value(weekdays, event["47808__bacnet__device_id__timestamp_wday"])
	end
	event["47808__bacnet__device_id__timestamp"] = event["47808.bacnet.device_id.timestamp"]
	event["p502__modbus__device_id__timestamp_year"] = parse_timestamp(event["p502.modbus.device_id.timestamp"])["year"]
	event["p502__modbus__device_id__timestamp_month"] = parse_timestamp(event["p502.modbus.device_id.timestamp"])["month"]
	event["p502__modbus__device_id__timestamp_day"] = parse_timestamp(event["p502.modbus.device_id.timestamp"])["day"]
	event["p502__modbus__device_id__timestamp_hour"] = parse_timestamp(event["p502.modbus.device_id.timestamp"])["hour"]
	event["p502__modbus__device_id__timestamp_min"] = parse_timestamp(event["p502.modbus.device_id.timestamp"])["min"]
	event["p502__modbus__device_id__timestamp_sec"] = parse_timestamp(event["p502.modbus.device_id.timestamp"])["sec"]
	event["p502__modbus__device_id__timestamp_yday"] = parse_timestamp(event["p502.modbus.device_id.timestamp"])["yday"]
	event["p502__modbus__device_id__timestamp_wday"] = parse_timestamp(event["p502.modbus.device_id.timestamp"])["wday"]
	event["p502__modbus__device_id__timestamp_isdst"] = parse_timestamp(event["p502.modbus.device_id.timestamp"])["isdst"]
	if event["p502__modbus__device_id__timestamp_yday"] ~= nil then
	  event["p502__modbus__device_id__timestamp_yweek"] = (event["p502__modbus__device_id__timestamp_yday"] // 7) + 1
	  event["p502__modbus__device_id__timestamp_yquarter"] = (event["p502__modbus__device_id__timestamp_yday"] // 91) + 1
	end
	if event["p502__modbus__device_id__timestamp_wday"] ~= nil then
	  event["p502__modbus__device_id__timestamp_is_weekend"] = arr_has_value(weekends, event["p502__modbus__device_id__timestamp_wday"])
	  event["p502__modbus__device_id__timestamp_is_weekday"] = arr_has_value(weekdays, event["p502__modbus__device_id__timestamp_wday"])
	end
	event["p502__modbus__device_id__timestamp"] = event["p502.modbus.device_id.timestamp"]
	event["502__modbus__device_id__timestamp"] = event["502.modbus.device_id.timestamp"]
	event["502__modbus__device_id__timestamp_year"] = parse_timestamp(event["502.modbus.device_id.timestamp"])["year"]
	event["502__modbus__device_id__timestamp_month"] = parse_timestamp(event["502.modbus.device_id.timestamp"])["month"]
	event["502__modbus__device_id__timestamp_day"] = parse_timestamp(event["502.modbus.device_id.timestamp"])["day"]
	event["502__modbus__device_id__timestamp_hour"] = parse_timestamp(event["502.modbus.device_id.timestamp"])["hour"]
	event["502__modbus__device_id__timestamp_min"] = parse_timestamp(event["502.modbus.device_id.timestamp"])["min"]
	event["502__modbus__device_id__timestamp_sec"] = parse_timestamp(event["502.modbus.device_id.timestamp"])["sec"]
	event["502__modbus__device_id__timestamp_yday"] = parse_timestamp(event["502.modbus.device_id.timestamp"])["yday"]
	event["502__modbus__device_id__timestamp_wday"] = parse_timestamp(event["502.modbus.device_id.timestamp"])["wday"]
	event["502__modbus__device_id__timestamp_isdst"] = parse_timestamp(event["502.modbus.device_id.timestamp"])["isdst"]
	if event["502__modbus__device_id__timestamp_yday"] ~= nil then
	  event["502__modbus__device_id__timestamp_yweek"] = (event["502__modbus__device_id__timestamp_yday"] // 7) + 1
	  event["502__modbus__device_id__timestamp_yquarter"] = (event["502__modbus__device_id__timestamp_yday"] // 91) + 1
	end
	if event["502__modbus__device_id__timestamp_wday"] ~= nil then
	  event["502__modbus__device_id__timestamp_is_weekend"] = arr_has_value(weekends, event["502__modbus__device_id__timestamp_wday"])
	  event["502__modbus__device_id__timestamp_is_weekday"] = arr_has_value(weekdays, event["502__modbus__device_id__timestamp_wday"])
	end
	event["502__modbus__device_id__timestamp"] = event["502.modbus.device_id.timestamp"]
	event["p995__pop3s__tls__tls__timestamp_year"] = parse_timestamp(event["p995.pop3s.tls.tls.timestamp"])["year"]
	event["p995__pop3s__tls__tls__timestamp_month"] = parse_timestamp(event["p995.pop3s.tls.tls.timestamp"])["month"]
	event["p995__pop3s__tls__tls__timestamp_day"] = parse_timestamp(event["p995.pop3s.tls.tls.timestamp"])["day"]
	event["p995__pop3s__tls__tls__timestamp_hour"] = parse_timestamp(event["p995.pop3s.tls.tls.timestamp"])["hour"]
	event["p995__pop3s__tls__tls__timestamp_min"] = parse_timestamp(event["p995.pop3s.tls.tls.timestamp"])["min"]
	event["p995__pop3s__tls__tls__timestamp_sec"] = parse_timestamp(event["p995.pop3s.tls.tls.timestamp"])["sec"]
	event["p995__pop3s__tls__tls__timestamp_yday"] = parse_timestamp(event["p995.pop3s.tls.tls.timestamp"])["yday"]
	event["p995__pop3s__tls__tls__timestamp_wday"] = parse_timestamp(event["p995.pop3s.tls.tls.timestamp"])["wday"]
	event["p995__pop3s__tls__tls__timestamp_isdst"] = parse_timestamp(event["p995.pop3s.tls.tls.timestamp"])["isdst"]
	if event["p995__pop3s__tls__tls__timestamp_yday"] ~= nil then
	  event["p995__pop3s__tls__tls__timestamp_yweek"] = (event["p995__pop3s__tls__tls__timestamp_yday"] // 7) + 1
	  event["p995__pop3s__tls__tls__timestamp_yquarter"] = (event["p995__pop3s__tls__tls__timestamp_yday"] // 91) + 1
	end
	if event["p995__pop3s__tls__tls__timestamp_wday"] ~= nil then
	  event["p995__pop3s__tls__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p995__pop3s__tls__tls__timestamp_wday"])
	  event["p995__pop3s__tls__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p995__pop3s__tls__tls__timestamp_wday"])
	end
	event["p995__pop3s__tls__tls__timestamp"] = event["p995.pop3s.tls.tls.timestamp"]
	event["995__pop3s__tls__tls__timestamp"] = event["995.pop3s.tls.tls.timestamp"]
	event["995__pop3s__tls__tls__timestamp_year"] = parse_timestamp(event["995.pop3s.tls.tls.timestamp"])["year"]
	event["995__pop3s__tls__tls__timestamp_month"] = parse_timestamp(event["995.pop3s.tls.tls.timestamp"])["month"]
	event["995__pop3s__tls__tls__timestamp_day"] = parse_timestamp(event["995.pop3s.tls.tls.timestamp"])["day"]
	event["995__pop3s__tls__tls__timestamp_hour"] = parse_timestamp(event["995.pop3s.tls.tls.timestamp"])["hour"]
	event["995__pop3s__tls__tls__timestamp_min"] = parse_timestamp(event["995.pop3s.tls.tls.timestamp"])["min"]
	event["995__pop3s__tls__tls__timestamp_sec"] = parse_timestamp(event["995.pop3s.tls.tls.timestamp"])["sec"]
	event["995__pop3s__tls__tls__timestamp_yday"] = parse_timestamp(event["995.pop3s.tls.tls.timestamp"])["yday"]
	event["995__pop3s__tls__tls__timestamp_wday"] = parse_timestamp(event["995.pop3s.tls.tls.timestamp"])["wday"]
	event["995__pop3s__tls__tls__timestamp_isdst"] = parse_timestamp(event["995.pop3s.tls.tls.timestamp"])["isdst"]
	if event["995__pop3s__tls__tls__timestamp_yday"] ~= nil then
	  event["995__pop3s__tls__tls__timestamp_yweek"] = (event["995__pop3s__tls__tls__timestamp_yday"] // 7) + 1
	  event["995__pop3s__tls__tls__timestamp_yquarter"] = (event["995__pop3s__tls__tls__timestamp_yday"] // 91) + 1
	end
	if event["995__pop3s__tls__tls__timestamp_wday"] ~= nil then
	  event["995__pop3s__tls__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["995__pop3s__tls__tls__timestamp_wday"])
	  event["995__pop3s__tls__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["995__pop3s__tls__tls__timestamp_wday"])
	end
	event["995__pop3s__tls__tls__timestamp"] = event["995.pop3s.tls.tls.timestamp"]
	event["p995__pop3s__tls__timestamp_year"] = parse_timestamp(event["p995.pop3s.tls.timestamp"])["year"]
	event["p995__pop3s__tls__timestamp_month"] = parse_timestamp(event["p995.pop3s.tls.timestamp"])["month"]
	event["p995__pop3s__tls__timestamp_day"] = parse_timestamp(event["p995.pop3s.tls.timestamp"])["day"]
	event["p995__pop3s__tls__timestamp_hour"] = parse_timestamp(event["p995.pop3s.tls.timestamp"])["hour"]
	event["p995__pop3s__tls__timestamp_min"] = parse_timestamp(event["p995.pop3s.tls.timestamp"])["min"]
	event["p995__pop3s__tls__timestamp_sec"] = parse_timestamp(event["p995.pop3s.tls.timestamp"])["sec"]
	event["p995__pop3s__tls__timestamp_yday"] = parse_timestamp(event["p995.pop3s.tls.timestamp"])["yday"]
	event["p995__pop3s__tls__timestamp_wday"] = parse_timestamp(event["p995.pop3s.tls.timestamp"])["wday"]
	event["p995__pop3s__tls__timestamp_isdst"] = parse_timestamp(event["p995.pop3s.tls.timestamp"])["isdst"]
	if event["p995__pop3s__tls__timestamp_yday"] ~= nil then
	  event["p995__pop3s__tls__timestamp_yweek"] = (event["p995__pop3s__tls__timestamp_yday"] // 7) + 1
	  event["p995__pop3s__tls__timestamp_yquarter"] = (event["p995__pop3s__tls__timestamp_yday"] // 91) + 1
	end
	if event["p995__pop3s__tls__timestamp_wday"] ~= nil then
	  event["p995__pop3s__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p995__pop3s__tls__timestamp_wday"])
	  event["p995__pop3s__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p995__pop3s__tls__timestamp_wday"])
	end
	event["p995__pop3s__tls__timestamp"] = event["p995.pop3s.tls.timestamp"]
	event["995__pop3s__tls__timestamp"] = event["995.pop3s.tls.timestamp"]
	event["995__pop3s__tls__timestamp_year"] = parse_timestamp(event["995.pop3s.tls.timestamp"])["year"]
	event["995__pop3s__tls__timestamp_month"] = parse_timestamp(event["995.pop3s.tls.timestamp"])["month"]
	event["995__pop3s__tls__timestamp_day"] = parse_timestamp(event["995.pop3s.tls.timestamp"])["day"]
	event["995__pop3s__tls__timestamp_hour"] = parse_timestamp(event["995.pop3s.tls.timestamp"])["hour"]
	event["995__pop3s__tls__timestamp_min"] = parse_timestamp(event["995.pop3s.tls.timestamp"])["min"]
	event["995__pop3s__tls__timestamp_sec"] = parse_timestamp(event["995.pop3s.tls.timestamp"])["sec"]
	event["995__pop3s__tls__timestamp_yday"] = parse_timestamp(event["995.pop3s.tls.timestamp"])["yday"]
	event["995__pop3s__tls__timestamp_wday"] = parse_timestamp(event["995.pop3s.tls.timestamp"])["wday"]
	event["995__pop3s__tls__timestamp_isdst"] = parse_timestamp(event["995.pop3s.tls.timestamp"])["isdst"]
	if event["995__pop3s__tls__timestamp_yday"] ~= nil then
	  event["995__pop3s__tls__timestamp_yweek"] = (event["995__pop3s__tls__timestamp_yday"] // 7) + 1
	  event["995__pop3s__tls__timestamp_yquarter"] = (event["995__pop3s__tls__timestamp_yday"] // 91) + 1
	end
	if event["995__pop3s__tls__timestamp_wday"] ~= nil then
	  event["995__pop3s__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["995__pop3s__tls__timestamp_wday"])
	  event["995__pop3s__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["995__pop3s__tls__timestamp_wday"])
	end
	event["995__pop3s__tls__timestamp"] = event["995.pop3s.tls.timestamp"]
	event["p995__pop3s__ssl_2__timestamp_year"] = parse_timestamp(event["p995.pop3s.ssl_2.timestamp"])["year"]
	event["p995__pop3s__ssl_2__timestamp_month"] = parse_timestamp(event["p995.pop3s.ssl_2.timestamp"])["month"]
	event["p995__pop3s__ssl_2__timestamp_day"] = parse_timestamp(event["p995.pop3s.ssl_2.timestamp"])["day"]
	event["p995__pop3s__ssl_2__timestamp_hour"] = parse_timestamp(event["p995.pop3s.ssl_2.timestamp"])["hour"]
	event["p995__pop3s__ssl_2__timestamp_min"] = parse_timestamp(event["p995.pop3s.ssl_2.timestamp"])["min"]
	event["p995__pop3s__ssl_2__timestamp_sec"] = parse_timestamp(event["p995.pop3s.ssl_2.timestamp"])["sec"]
	event["p995__pop3s__ssl_2__timestamp_yday"] = parse_timestamp(event["p995.pop3s.ssl_2.timestamp"])["yday"]
	event["p995__pop3s__ssl_2__timestamp_wday"] = parse_timestamp(event["p995.pop3s.ssl_2.timestamp"])["wday"]
	event["p995__pop3s__ssl_2__timestamp_isdst"] = parse_timestamp(event["p995.pop3s.ssl_2.timestamp"])["isdst"]
	if event["p995__pop3s__ssl_2__timestamp_yday"] ~= nil then
	  event["p995__pop3s__ssl_2__timestamp_yweek"] = (event["p995__pop3s__ssl_2__timestamp_yday"] // 7) + 1
	  event["p995__pop3s__ssl_2__timestamp_yquarter"] = (event["p995__pop3s__ssl_2__timestamp_yday"] // 91) + 1
	end
	if event["p995__pop3s__ssl_2__timestamp_wday"] ~= nil then
	  event["p995__pop3s__ssl_2__timestamp_is_weekend"] = arr_has_value(weekends, event["p995__pop3s__ssl_2__timestamp_wday"])
	  event["p995__pop3s__ssl_2__timestamp_is_weekday"] = arr_has_value(weekdays, event["p995__pop3s__ssl_2__timestamp_wday"])
	end
	event["p995__pop3s__ssl_2__timestamp"] = event["p995.pop3s.ssl_2.timestamp"]
	event["995__pop3s__ssl_2__timestamp"] = event["995.pop3s.ssl_2.timestamp"]
	event["995__pop3s__ssl_2__timestamp_year"] = parse_timestamp(event["995.pop3s.ssl_2.timestamp"])["year"]
	event["995__pop3s__ssl_2__timestamp_month"] = parse_timestamp(event["995.pop3s.ssl_2.timestamp"])["month"]
	event["995__pop3s__ssl_2__timestamp_day"] = parse_timestamp(event["995.pop3s.ssl_2.timestamp"])["day"]
	event["995__pop3s__ssl_2__timestamp_hour"] = parse_timestamp(event["995.pop3s.ssl_2.timestamp"])["hour"]
	event["995__pop3s__ssl_2__timestamp_min"] = parse_timestamp(event["995.pop3s.ssl_2.timestamp"])["min"]
	event["995__pop3s__ssl_2__timestamp_sec"] = parse_timestamp(event["995.pop3s.ssl_2.timestamp"])["sec"]
	event["995__pop3s__ssl_2__timestamp_yday"] = parse_timestamp(event["995.pop3s.ssl_2.timestamp"])["yday"]
	event["995__pop3s__ssl_2__timestamp_wday"] = parse_timestamp(event["995.pop3s.ssl_2.timestamp"])["wday"]
	event["995__pop3s__ssl_2__timestamp_isdst"] = parse_timestamp(event["995.pop3s.ssl_2.timestamp"])["isdst"]
	if event["995__pop3s__ssl_2__timestamp_yday"] ~= nil then
	  event["995__pop3s__ssl_2__timestamp_yweek"] = (event["995__pop3s__ssl_2__timestamp_yday"] // 7) + 1
	  event["995__pop3s__ssl_2__timestamp_yquarter"] = (event["995__pop3s__ssl_2__timestamp_yday"] // 91) + 1
	end
	if event["995__pop3s__ssl_2__timestamp_wday"] ~= nil then
	  event["995__pop3s__ssl_2__timestamp_is_weekend"] = arr_has_value(weekends, event["995__pop3s__ssl_2__timestamp_wday"])
	  event["995__pop3s__ssl_2__timestamp_is_weekday"] = arr_has_value(weekdays, event["995__pop3s__ssl_2__timestamp_wday"])
	end
	event["995__pop3s__ssl_2__timestamp"] = event["995.pop3s.ssl_2.timestamp"]
	event["p587__smtp__ssl_2__timestamp_year"] = parse_timestamp(event["p587.smtp.ssl_2.timestamp"])["year"]
	event["p587__smtp__ssl_2__timestamp_month"] = parse_timestamp(event["p587.smtp.ssl_2.timestamp"])["month"]
	event["p587__smtp__ssl_2__timestamp_day"] = parse_timestamp(event["p587.smtp.ssl_2.timestamp"])["day"]
	event["p587__smtp__ssl_2__timestamp_hour"] = parse_timestamp(event["p587.smtp.ssl_2.timestamp"])["hour"]
	event["p587__smtp__ssl_2__timestamp_min"] = parse_timestamp(event["p587.smtp.ssl_2.timestamp"])["min"]
	event["p587__smtp__ssl_2__timestamp_sec"] = parse_timestamp(event["p587.smtp.ssl_2.timestamp"])["sec"]
	event["p587__smtp__ssl_2__timestamp_yday"] = parse_timestamp(event["p587.smtp.ssl_2.timestamp"])["yday"]
	event["p587__smtp__ssl_2__timestamp_wday"] = parse_timestamp(event["p587.smtp.ssl_2.timestamp"])["wday"]
	event["p587__smtp__ssl_2__timestamp_isdst"] = parse_timestamp(event["p587.smtp.ssl_2.timestamp"])["isdst"]
	if event["p587__smtp__ssl_2__timestamp_yday"] ~= nil then
	  event["p587__smtp__ssl_2__timestamp_yweek"] = (event["p587__smtp__ssl_2__timestamp_yday"] // 7) + 1
	  event["p587__smtp__ssl_2__timestamp_yquarter"] = (event["p587__smtp__ssl_2__timestamp_yday"] // 91) + 1
	end
	if event["p587__smtp__ssl_2__timestamp_wday"] ~= nil then
	  event["p587__smtp__ssl_2__timestamp_is_weekend"] = arr_has_value(weekends, event["p587__smtp__ssl_2__timestamp_wday"])
	  event["p587__smtp__ssl_2__timestamp_is_weekday"] = arr_has_value(weekdays, event["p587__smtp__ssl_2__timestamp_wday"])
	end
	event["p587__smtp__ssl_2__timestamp"] = event["p587.smtp.ssl_2.timestamp"]
	event["587__smtp__ssl_2__timestamp"] = event["587.smtp.ssl_2.timestamp"]
	event["587__smtp__ssl_2__timestamp_year"] = parse_timestamp(event["587.smtp.ssl_2.timestamp"])["year"]
	event["587__smtp__ssl_2__timestamp_month"] = parse_timestamp(event["587.smtp.ssl_2.timestamp"])["month"]
	event["587__smtp__ssl_2__timestamp_day"] = parse_timestamp(event["587.smtp.ssl_2.timestamp"])["day"]
	event["587__smtp__ssl_2__timestamp_hour"] = parse_timestamp(event["587.smtp.ssl_2.timestamp"])["hour"]
	event["587__smtp__ssl_2__timestamp_min"] = parse_timestamp(event["587.smtp.ssl_2.timestamp"])["min"]
	event["587__smtp__ssl_2__timestamp_sec"] = parse_timestamp(event["587.smtp.ssl_2.timestamp"])["sec"]
	event["587__smtp__ssl_2__timestamp_yday"] = parse_timestamp(event["587.smtp.ssl_2.timestamp"])["yday"]
	event["587__smtp__ssl_2__timestamp_wday"] = parse_timestamp(event["587.smtp.ssl_2.timestamp"])["wday"]
	event["587__smtp__ssl_2__timestamp_isdst"] = parse_timestamp(event["587.smtp.ssl_2.timestamp"])["isdst"]
	if event["587__smtp__ssl_2__timestamp_yday"] ~= nil then
	  event["587__smtp__ssl_2__timestamp_yweek"] = (event["587__smtp__ssl_2__timestamp_yday"] // 7) + 1
	  event["587__smtp__ssl_2__timestamp_yquarter"] = (event["587__smtp__ssl_2__timestamp_yday"] // 91) + 1
	end
	if event["587__smtp__ssl_2__timestamp_wday"] ~= nil then
	  event["587__smtp__ssl_2__timestamp_is_weekend"] = arr_has_value(weekends, event["587__smtp__ssl_2__timestamp_wday"])
	  event["587__smtp__ssl_2__timestamp_is_weekday"] = arr_has_value(weekdays, event["587__smtp__ssl_2__timestamp_wday"])
	end
	event["587__smtp__ssl_2__timestamp"] = event["587.smtp.ssl_2.timestamp"]
	event["p587__smtp__starttls__tls__timestamp_year"] = parse_timestamp(event["p587.smtp.starttls.tls.timestamp"])["year"]
	event["p587__smtp__starttls__tls__timestamp_month"] = parse_timestamp(event["p587.smtp.starttls.tls.timestamp"])["month"]
	event["p587__smtp__starttls__tls__timestamp_day"] = parse_timestamp(event["p587.smtp.starttls.tls.timestamp"])["day"]
	event["p587__smtp__starttls__tls__timestamp_hour"] = parse_timestamp(event["p587.smtp.starttls.tls.timestamp"])["hour"]
	event["p587__smtp__starttls__tls__timestamp_min"] = parse_timestamp(event["p587.smtp.starttls.tls.timestamp"])["min"]
	event["p587__smtp__starttls__tls__timestamp_sec"] = parse_timestamp(event["p587.smtp.starttls.tls.timestamp"])["sec"]
	event["p587__smtp__starttls__tls__timestamp_yday"] = parse_timestamp(event["p587.smtp.starttls.tls.timestamp"])["yday"]
	event["p587__smtp__starttls__tls__timestamp_wday"] = parse_timestamp(event["p587.smtp.starttls.tls.timestamp"])["wday"]
	event["p587__smtp__starttls__tls__timestamp_isdst"] = parse_timestamp(event["p587.smtp.starttls.tls.timestamp"])["isdst"]
	if event["p587__smtp__starttls__tls__timestamp_yday"] ~= nil then
	  event["p587__smtp__starttls__tls__timestamp_yweek"] = (event["p587__smtp__starttls__tls__timestamp_yday"] // 7) + 1
	  event["p587__smtp__starttls__tls__timestamp_yquarter"] = (event["p587__smtp__starttls__tls__timestamp_yday"] // 91) + 1
	end
	if event["p587__smtp__starttls__tls__timestamp_wday"] ~= nil then
	  event["p587__smtp__starttls__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p587__smtp__starttls__tls__timestamp_wday"])
	  event["p587__smtp__starttls__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p587__smtp__starttls__tls__timestamp_wday"])
	end
	event["p587__smtp__starttls__tls__timestamp"] = event["p587.smtp.starttls.tls.timestamp"]
	event["587__smtp__starttls__tls__timestamp"] = event["587.smtp.starttls.tls.timestamp"]
	event["587__smtp__starttls__tls__timestamp_year"] = parse_timestamp(event["587.smtp.starttls.tls.timestamp"])["year"]
	event["587__smtp__starttls__tls__timestamp_month"] = parse_timestamp(event["587.smtp.starttls.tls.timestamp"])["month"]
	event["587__smtp__starttls__tls__timestamp_day"] = parse_timestamp(event["587.smtp.starttls.tls.timestamp"])["day"]
	event["587__smtp__starttls__tls__timestamp_hour"] = parse_timestamp(event["587.smtp.starttls.tls.timestamp"])["hour"]
	event["587__smtp__starttls__tls__timestamp_min"] = parse_timestamp(event["587.smtp.starttls.tls.timestamp"])["min"]
	event["587__smtp__starttls__tls__timestamp_sec"] = parse_timestamp(event["587.smtp.starttls.tls.timestamp"])["sec"]
	event["587__smtp__starttls__tls__timestamp_yday"] = parse_timestamp(event["587.smtp.starttls.tls.timestamp"])["yday"]
	event["587__smtp__starttls__tls__timestamp_wday"] = parse_timestamp(event["587.smtp.starttls.tls.timestamp"])["wday"]
	event["587__smtp__starttls__tls__timestamp_isdst"] = parse_timestamp(event["587.smtp.starttls.tls.timestamp"])["isdst"]
	if event["587__smtp__starttls__tls__timestamp_yday"] ~= nil then
	  event["587__smtp__starttls__tls__timestamp_yweek"] = (event["587__smtp__starttls__tls__timestamp_yday"] // 7) + 1
	  event["587__smtp__starttls__tls__timestamp_yquarter"] = (event["587__smtp__starttls__tls__timestamp_yday"] // 91) + 1
	end
	if event["587__smtp__starttls__tls__timestamp_wday"] ~= nil then
	  event["587__smtp__starttls__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["587__smtp__starttls__tls__timestamp_wday"])
	  event["587__smtp__starttls__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["587__smtp__starttls__tls__timestamp_wday"])
	end
	event["587__smtp__starttls__tls__timestamp"] = event["587.smtp.starttls.tls.timestamp"]
	event["p587__smtp__starttls__timestamp_year"] = parse_timestamp(event["p587.smtp.starttls.timestamp"])["year"]
	event["p587__smtp__starttls__timestamp_month"] = parse_timestamp(event["p587.smtp.starttls.timestamp"])["month"]
	event["p587__smtp__starttls__timestamp_day"] = parse_timestamp(event["p587.smtp.starttls.timestamp"])["day"]
	event["p587__smtp__starttls__timestamp_hour"] = parse_timestamp(event["p587.smtp.starttls.timestamp"])["hour"]
	event["p587__smtp__starttls__timestamp_min"] = parse_timestamp(event["p587.smtp.starttls.timestamp"])["min"]
	event["p587__smtp__starttls__timestamp_sec"] = parse_timestamp(event["p587.smtp.starttls.timestamp"])["sec"]
	event["p587__smtp__starttls__timestamp_yday"] = parse_timestamp(event["p587.smtp.starttls.timestamp"])["yday"]
	event["p587__smtp__starttls__timestamp_wday"] = parse_timestamp(event["p587.smtp.starttls.timestamp"])["wday"]
	event["p587__smtp__starttls__timestamp_isdst"] = parse_timestamp(event["p587.smtp.starttls.timestamp"])["isdst"]
	if event["p587__smtp__starttls__timestamp_yday"] ~= nil then
	  event["p587__smtp__starttls__timestamp_yweek"] = (event["p587__smtp__starttls__timestamp_yday"] // 7) + 1
	  event["p587__smtp__starttls__timestamp_yquarter"] = (event["p587__smtp__starttls__timestamp_yday"] // 91) + 1
	end
	if event["p587__smtp__starttls__timestamp_wday"] ~= nil then
	  event["p587__smtp__starttls__timestamp_is_weekend"] = arr_has_value(weekends, event["p587__smtp__starttls__timestamp_wday"])
	  event["p587__smtp__starttls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p587__smtp__starttls__timestamp_wday"])
	end
	event["p587__smtp__starttls__timestamp"] = event["p587.smtp.starttls.timestamp"]
	event["587__smtp__starttls__timestamp"] = event["587.smtp.starttls.timestamp"]
	event["587__smtp__starttls__timestamp_year"] = parse_timestamp(event["587.smtp.starttls.timestamp"])["year"]
	event["587__smtp__starttls__timestamp_month"] = parse_timestamp(event["587.smtp.starttls.timestamp"])["month"]
	event["587__smtp__starttls__timestamp_day"] = parse_timestamp(event["587.smtp.starttls.timestamp"])["day"]
	event["587__smtp__starttls__timestamp_hour"] = parse_timestamp(event["587.smtp.starttls.timestamp"])["hour"]
	event["587__smtp__starttls__timestamp_min"] = parse_timestamp(event["587.smtp.starttls.timestamp"])["min"]
	event["587__smtp__starttls__timestamp_sec"] = parse_timestamp(event["587.smtp.starttls.timestamp"])["sec"]
	event["587__smtp__starttls__timestamp_yday"] = parse_timestamp(event["587.smtp.starttls.timestamp"])["yday"]
	event["587__smtp__starttls__timestamp_wday"] = parse_timestamp(event["587.smtp.starttls.timestamp"])["wday"]
	event["587__smtp__starttls__timestamp_isdst"] = parse_timestamp(event["587.smtp.starttls.timestamp"])["isdst"]
	if event["587__smtp__starttls__timestamp_yday"] ~= nil then
	  event["587__smtp__starttls__timestamp_yweek"] = (event["587__smtp__starttls__timestamp_yday"] // 7) + 1
	  event["587__smtp__starttls__timestamp_yquarter"] = (event["587__smtp__starttls__timestamp_yday"] // 91) + 1
	end
	if event["587__smtp__starttls__timestamp_wday"] ~= nil then
	  event["587__smtp__starttls__timestamp_is_weekend"] = arr_has_value(weekends, event["587__smtp__starttls__timestamp_wday"])
	  event["587__smtp__starttls__timestamp_is_weekday"] = arr_has_value(weekdays, event["587__smtp__starttls__timestamp_wday"])
	end
	event["587__smtp__starttls__timestamp"] = event["587.smtp.starttls.timestamp"]
	event["p143__imap__ssl_2__timestamp_year"] = parse_timestamp(event["p143.imap.ssl_2.timestamp"])["year"]
	event["p143__imap__ssl_2__timestamp_month"] = parse_timestamp(event["p143.imap.ssl_2.timestamp"])["month"]
	event["p143__imap__ssl_2__timestamp_day"] = parse_timestamp(event["p143.imap.ssl_2.timestamp"])["day"]
	event["p143__imap__ssl_2__timestamp_hour"] = parse_timestamp(event["p143.imap.ssl_2.timestamp"])["hour"]
	event["p143__imap__ssl_2__timestamp_min"] = parse_timestamp(event["p143.imap.ssl_2.timestamp"])["min"]
	event["p143__imap__ssl_2__timestamp_sec"] = parse_timestamp(event["p143.imap.ssl_2.timestamp"])["sec"]
	event["p143__imap__ssl_2__timestamp_yday"] = parse_timestamp(event["p143.imap.ssl_2.timestamp"])["yday"]
	event["p143__imap__ssl_2__timestamp_wday"] = parse_timestamp(event["p143.imap.ssl_2.timestamp"])["wday"]
	event["p143__imap__ssl_2__timestamp_isdst"] = parse_timestamp(event["p143.imap.ssl_2.timestamp"])["isdst"]
	if event["p143__imap__ssl_2__timestamp_yday"] ~= nil then
	  event["p143__imap__ssl_2__timestamp_yweek"] = (event["p143__imap__ssl_2__timestamp_yday"] // 7) + 1
	  event["p143__imap__ssl_2__timestamp_yquarter"] = (event["p143__imap__ssl_2__timestamp_yday"] // 91) + 1
	end
	if event["p143__imap__ssl_2__timestamp_wday"] ~= nil then
	  event["p143__imap__ssl_2__timestamp_is_weekend"] = arr_has_value(weekends, event["p143__imap__ssl_2__timestamp_wday"])
	  event["p143__imap__ssl_2__timestamp_is_weekday"] = arr_has_value(weekdays, event["p143__imap__ssl_2__timestamp_wday"])
	end
	event["p143__imap__ssl_2__timestamp"] = event["p143.imap.ssl_2.timestamp"]
	event["143__imap__ssl_2__timestamp"] = event["143.imap.ssl_2.timestamp"]
	event["143__imap__ssl_2__timestamp_year"] = parse_timestamp(event["143.imap.ssl_2.timestamp"])["year"]
	event["143__imap__ssl_2__timestamp_month"] = parse_timestamp(event["143.imap.ssl_2.timestamp"])["month"]
	event["143__imap__ssl_2__timestamp_day"] = parse_timestamp(event["143.imap.ssl_2.timestamp"])["day"]
	event["143__imap__ssl_2__timestamp_hour"] = parse_timestamp(event["143.imap.ssl_2.timestamp"])["hour"]
	event["143__imap__ssl_2__timestamp_min"] = parse_timestamp(event["143.imap.ssl_2.timestamp"])["min"]
	event["143__imap__ssl_2__timestamp_sec"] = parse_timestamp(event["143.imap.ssl_2.timestamp"])["sec"]
	event["143__imap__ssl_2__timestamp_yday"] = parse_timestamp(event["143.imap.ssl_2.timestamp"])["yday"]
	event["143__imap__ssl_2__timestamp_wday"] = parse_timestamp(event["143.imap.ssl_2.timestamp"])["wday"]
	event["143__imap__ssl_2__timestamp_isdst"] = parse_timestamp(event["143.imap.ssl_2.timestamp"])["isdst"]
	if event["143__imap__ssl_2__timestamp_yday"] ~= nil then
	  event["143__imap__ssl_2__timestamp_yweek"] = (event["143__imap__ssl_2__timestamp_yday"] // 7) + 1
	  event["143__imap__ssl_2__timestamp_yquarter"] = (event["143__imap__ssl_2__timestamp_yday"] // 91) + 1
	end
	if event["143__imap__ssl_2__timestamp_wday"] ~= nil then
	  event["143__imap__ssl_2__timestamp_is_weekend"] = arr_has_value(weekends, event["143__imap__ssl_2__timestamp_wday"])
	  event["143__imap__ssl_2__timestamp_is_weekday"] = arr_has_value(weekdays, event["143__imap__ssl_2__timestamp_wday"])
	end
	event["143__imap__ssl_2__timestamp"] = event["143.imap.ssl_2.timestamp"]
	event["p143__imap__starttls__tls__timestamp_year"] = parse_timestamp(event["p143.imap.starttls.tls.timestamp"])["year"]
	event["p143__imap__starttls__tls__timestamp_month"] = parse_timestamp(event["p143.imap.starttls.tls.timestamp"])["month"]
	event["p143__imap__starttls__tls__timestamp_day"] = parse_timestamp(event["p143.imap.starttls.tls.timestamp"])["day"]
	event["p143__imap__starttls__tls__timestamp_hour"] = parse_timestamp(event["p143.imap.starttls.tls.timestamp"])["hour"]
	event["p143__imap__starttls__tls__timestamp_min"] = parse_timestamp(event["p143.imap.starttls.tls.timestamp"])["min"]
	event["p143__imap__starttls__tls__timestamp_sec"] = parse_timestamp(event["p143.imap.starttls.tls.timestamp"])["sec"]
	event["p143__imap__starttls__tls__timestamp_yday"] = parse_timestamp(event["p143.imap.starttls.tls.timestamp"])["yday"]
	event["p143__imap__starttls__tls__timestamp_wday"] = parse_timestamp(event["p143.imap.starttls.tls.timestamp"])["wday"]
	event["p143__imap__starttls__tls__timestamp_isdst"] = parse_timestamp(event["p143.imap.starttls.tls.timestamp"])["isdst"]
	if event["p143__imap__starttls__tls__timestamp_yday"] ~= nil then
	  event["p143__imap__starttls__tls__timestamp_yweek"] = (event["p143__imap__starttls__tls__timestamp_yday"] // 7) + 1
	  event["p143__imap__starttls__tls__timestamp_yquarter"] = (event["p143__imap__starttls__tls__timestamp_yday"] // 91) + 1
	end
	if event["p143__imap__starttls__tls__timestamp_wday"] ~= nil then
	  event["p143__imap__starttls__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p143__imap__starttls__tls__timestamp_wday"])
	  event["p143__imap__starttls__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p143__imap__starttls__tls__timestamp_wday"])
	end
	event["p143__imap__starttls__tls__timestamp"] = event["p143.imap.starttls.tls.timestamp"]
	event["143__imap__starttls__tls__timestamp"] = event["143.imap.starttls.tls.timestamp"]
	event["143__imap__starttls__tls__timestamp_year"] = parse_timestamp(event["143.imap.starttls.tls.timestamp"])["year"]
	event["143__imap__starttls__tls__timestamp_month"] = parse_timestamp(event["143.imap.starttls.tls.timestamp"])["month"]
	event["143__imap__starttls__tls__timestamp_day"] = parse_timestamp(event["143.imap.starttls.tls.timestamp"])["day"]
	event["143__imap__starttls__tls__timestamp_hour"] = parse_timestamp(event["143.imap.starttls.tls.timestamp"])["hour"]
	event["143__imap__starttls__tls__timestamp_min"] = parse_timestamp(event["143.imap.starttls.tls.timestamp"])["min"]
	event["143__imap__starttls__tls__timestamp_sec"] = parse_timestamp(event["143.imap.starttls.tls.timestamp"])["sec"]
	event["143__imap__starttls__tls__timestamp_yday"] = parse_timestamp(event["143.imap.starttls.tls.timestamp"])["yday"]
	event["143__imap__starttls__tls__timestamp_wday"] = parse_timestamp(event["143.imap.starttls.tls.timestamp"])["wday"]
	event["143__imap__starttls__tls__timestamp_isdst"] = parse_timestamp(event["143.imap.starttls.tls.timestamp"])["isdst"]
	if event["143__imap__starttls__tls__timestamp_yday"] ~= nil then
	  event["143__imap__starttls__tls__timestamp_yweek"] = (event["143__imap__starttls__tls__timestamp_yday"] // 7) + 1
	  event["143__imap__starttls__tls__timestamp_yquarter"] = (event["143__imap__starttls__tls__timestamp_yday"] // 91) + 1
	end
	if event["143__imap__starttls__tls__timestamp_wday"] ~= nil then
	  event["143__imap__starttls__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["143__imap__starttls__tls__timestamp_wday"])
	  event["143__imap__starttls__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["143__imap__starttls__tls__timestamp_wday"])
	end
	event["143__imap__starttls__tls__timestamp"] = event["143.imap.starttls.tls.timestamp"]
	event["p143__imap__starttls__timestamp_year"] = parse_timestamp(event["p143.imap.starttls.timestamp"])["year"]
	event["p143__imap__starttls__timestamp_month"] = parse_timestamp(event["p143.imap.starttls.timestamp"])["month"]
	event["p143__imap__starttls__timestamp_day"] = parse_timestamp(event["p143.imap.starttls.timestamp"])["day"]
	event["p143__imap__starttls__timestamp_hour"] = parse_timestamp(event["p143.imap.starttls.timestamp"])["hour"]
	event["p143__imap__starttls__timestamp_min"] = parse_timestamp(event["p143.imap.starttls.timestamp"])["min"]
	event["p143__imap__starttls__timestamp_sec"] = parse_timestamp(event["p143.imap.starttls.timestamp"])["sec"]
	event["p143__imap__starttls__timestamp_yday"] = parse_timestamp(event["p143.imap.starttls.timestamp"])["yday"]
	event["p143__imap__starttls__timestamp_wday"] = parse_timestamp(event["p143.imap.starttls.timestamp"])["wday"]
	event["p143__imap__starttls__timestamp_isdst"] = parse_timestamp(event["p143.imap.starttls.timestamp"])["isdst"]
	if event["p143__imap__starttls__timestamp_yday"] ~= nil then
	  event["p143__imap__starttls__timestamp_yweek"] = (event["p143__imap__starttls__timestamp_yday"] // 7) + 1
	  event["p143__imap__starttls__timestamp_yquarter"] = (event["p143__imap__starttls__timestamp_yday"] // 91) + 1
	end
	if event["p143__imap__starttls__timestamp_wday"] ~= nil then
	  event["p143__imap__starttls__timestamp_is_weekend"] = arr_has_value(weekends, event["p143__imap__starttls__timestamp_wday"])
	  event["p143__imap__starttls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p143__imap__starttls__timestamp_wday"])
	end
	event["p143__imap__starttls__timestamp"] = event["p143.imap.starttls.timestamp"]
	event["143__imap__starttls__timestamp"] = event["143.imap.starttls.timestamp"]
	event["143__imap__starttls__timestamp_year"] = parse_timestamp(event["143.imap.starttls.timestamp"])["year"]
	event["143__imap__starttls__timestamp_month"] = parse_timestamp(event["143.imap.starttls.timestamp"])["month"]
	event["143__imap__starttls__timestamp_day"] = parse_timestamp(event["143.imap.starttls.timestamp"])["day"]
	event["143__imap__starttls__timestamp_hour"] = parse_timestamp(event["143.imap.starttls.timestamp"])["hour"]
	event["143__imap__starttls__timestamp_min"] = parse_timestamp(event["143.imap.starttls.timestamp"])["min"]
	event["143__imap__starttls__timestamp_sec"] = parse_timestamp(event["143.imap.starttls.timestamp"])["sec"]
	event["143__imap__starttls__timestamp_yday"] = parse_timestamp(event["143.imap.starttls.timestamp"])["yday"]
	event["143__imap__starttls__timestamp_wday"] = parse_timestamp(event["143.imap.starttls.timestamp"])["wday"]
	event["143__imap__starttls__timestamp_isdst"] = parse_timestamp(event["143.imap.starttls.timestamp"])["isdst"]
	if event["143__imap__starttls__timestamp_yday"] ~= nil then
	  event["143__imap__starttls__timestamp_yweek"] = (event["143__imap__starttls__timestamp_yday"] // 7) + 1
	  event["143__imap__starttls__timestamp_yquarter"] = (event["143__imap__starttls__timestamp_yday"] // 91) + 1
	end
	if event["143__imap__starttls__timestamp_wday"] ~= nil then
	  event["143__imap__starttls__timestamp_is_weekend"] = arr_has_value(weekends, event["143__imap__starttls__timestamp_wday"])
	  event["143__imap__starttls__timestamp_is_weekday"] = arr_has_value(weekdays, event["143__imap__starttls__timestamp_wday"])
	end
	event["143__imap__starttls__timestamp"] = event["143.imap.starttls.timestamp"]
	event["p993__imaps__tls__tls__timestamp_year"] = parse_timestamp(event["p993.imaps.tls.tls.timestamp"])["year"]
	event["p993__imaps__tls__tls__timestamp_month"] = parse_timestamp(event["p993.imaps.tls.tls.timestamp"])["month"]
	event["p993__imaps__tls__tls__timestamp_day"] = parse_timestamp(event["p993.imaps.tls.tls.timestamp"])["day"]
	event["p993__imaps__tls__tls__timestamp_hour"] = parse_timestamp(event["p993.imaps.tls.tls.timestamp"])["hour"]
	event["p993__imaps__tls__tls__timestamp_min"] = parse_timestamp(event["p993.imaps.tls.tls.timestamp"])["min"]
	event["p993__imaps__tls__tls__timestamp_sec"] = parse_timestamp(event["p993.imaps.tls.tls.timestamp"])["sec"]
	event["p993__imaps__tls__tls__timestamp_yday"] = parse_timestamp(event["p993.imaps.tls.tls.timestamp"])["yday"]
	event["p993__imaps__tls__tls__timestamp_wday"] = parse_timestamp(event["p993.imaps.tls.tls.timestamp"])["wday"]
	event["p993__imaps__tls__tls__timestamp_isdst"] = parse_timestamp(event["p993.imaps.tls.tls.timestamp"])["isdst"]
	if event["p993__imaps__tls__tls__timestamp_yday"] ~= nil then
	  event["p993__imaps__tls__tls__timestamp_yweek"] = (event["p993__imaps__tls__tls__timestamp_yday"] // 7) + 1
	  event["p993__imaps__tls__tls__timestamp_yquarter"] = (event["p993__imaps__tls__tls__timestamp_yday"] // 91) + 1
	end
	if event["p993__imaps__tls__tls__timestamp_wday"] ~= nil then
	  event["p993__imaps__tls__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p993__imaps__tls__tls__timestamp_wday"])
	  event["p993__imaps__tls__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p993__imaps__tls__tls__timestamp_wday"])
	end
	event["p993__imaps__tls__tls__timestamp"] = event["p993.imaps.tls.tls.timestamp"]
	event["993__imaps__tls__tls__timestamp"] = event["993.imaps.tls.tls.timestamp"]
	event["993__imaps__tls__tls__timestamp_year"] = parse_timestamp(event["993.imaps.tls.tls.timestamp"])["year"]
	event["993__imaps__tls__tls__timestamp_month"] = parse_timestamp(event["993.imaps.tls.tls.timestamp"])["month"]
	event["993__imaps__tls__tls__timestamp_day"] = parse_timestamp(event["993.imaps.tls.tls.timestamp"])["day"]
	event["993__imaps__tls__tls__timestamp_hour"] = parse_timestamp(event["993.imaps.tls.tls.timestamp"])["hour"]
	event["993__imaps__tls__tls__timestamp_min"] = parse_timestamp(event["993.imaps.tls.tls.timestamp"])["min"]
	event["993__imaps__tls__tls__timestamp_sec"] = parse_timestamp(event["993.imaps.tls.tls.timestamp"])["sec"]
	event["993__imaps__tls__tls__timestamp_yday"] = parse_timestamp(event["993.imaps.tls.tls.timestamp"])["yday"]
	event["993__imaps__tls__tls__timestamp_wday"] = parse_timestamp(event["993.imaps.tls.tls.timestamp"])["wday"]
	event["993__imaps__tls__tls__timestamp_isdst"] = parse_timestamp(event["993.imaps.tls.tls.timestamp"])["isdst"]
	if event["993__imaps__tls__tls__timestamp_yday"] ~= nil then
	  event["993__imaps__tls__tls__timestamp_yweek"] = (event["993__imaps__tls__tls__timestamp_yday"] // 7) + 1
	  event["993__imaps__tls__tls__timestamp_yquarter"] = (event["993__imaps__tls__tls__timestamp_yday"] // 91) + 1
	end
	if event["993__imaps__tls__tls__timestamp_wday"] ~= nil then
	  event["993__imaps__tls__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["993__imaps__tls__tls__timestamp_wday"])
	  event["993__imaps__tls__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["993__imaps__tls__tls__timestamp_wday"])
	end
	event["993__imaps__tls__tls__timestamp"] = event["993.imaps.tls.tls.timestamp"]
	event["p993__imaps__tls__timestamp_year"] = parse_timestamp(event["p993.imaps.tls.timestamp"])["year"]
	event["p993__imaps__tls__timestamp_month"] = parse_timestamp(event["p993.imaps.tls.timestamp"])["month"]
	event["p993__imaps__tls__timestamp_day"] = parse_timestamp(event["p993.imaps.tls.timestamp"])["day"]
	event["p993__imaps__tls__timestamp_hour"] = parse_timestamp(event["p993.imaps.tls.timestamp"])["hour"]
	event["p993__imaps__tls__timestamp_min"] = parse_timestamp(event["p993.imaps.tls.timestamp"])["min"]
	event["p993__imaps__tls__timestamp_sec"] = parse_timestamp(event["p993.imaps.tls.timestamp"])["sec"]
	event["p993__imaps__tls__timestamp_yday"] = parse_timestamp(event["p993.imaps.tls.timestamp"])["yday"]
	event["p993__imaps__tls__timestamp_wday"] = parse_timestamp(event["p993.imaps.tls.timestamp"])["wday"]
	event["p993__imaps__tls__timestamp_isdst"] = parse_timestamp(event["p993.imaps.tls.timestamp"])["isdst"]
	if event["p993__imaps__tls__timestamp_yday"] ~= nil then
	  event["p993__imaps__tls__timestamp_yweek"] = (event["p993__imaps__tls__timestamp_yday"] // 7) + 1
	  event["p993__imaps__tls__timestamp_yquarter"] = (event["p993__imaps__tls__timestamp_yday"] // 91) + 1
	end
	if event["p993__imaps__tls__timestamp_wday"] ~= nil then
	  event["p993__imaps__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p993__imaps__tls__timestamp_wday"])
	  event["p993__imaps__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p993__imaps__tls__timestamp_wday"])
	end
	event["p993__imaps__tls__timestamp"] = event["p993.imaps.tls.timestamp"]
	event["993__imaps__tls__timestamp"] = event["993.imaps.tls.timestamp"]
	event["993__imaps__tls__timestamp_year"] = parse_timestamp(event["993.imaps.tls.timestamp"])["year"]
	event["993__imaps__tls__timestamp_month"] = parse_timestamp(event["993.imaps.tls.timestamp"])["month"]
	event["993__imaps__tls__timestamp_day"] = parse_timestamp(event["993.imaps.tls.timestamp"])["day"]
	event["993__imaps__tls__timestamp_hour"] = parse_timestamp(event["993.imaps.tls.timestamp"])["hour"]
	event["993__imaps__tls__timestamp_min"] = parse_timestamp(event["993.imaps.tls.timestamp"])["min"]
	event["993__imaps__tls__timestamp_sec"] = parse_timestamp(event["993.imaps.tls.timestamp"])["sec"]
	event["993__imaps__tls__timestamp_yday"] = parse_timestamp(event["993.imaps.tls.timestamp"])["yday"]
	event["993__imaps__tls__timestamp_wday"] = parse_timestamp(event["993.imaps.tls.timestamp"])["wday"]
	event["993__imaps__tls__timestamp_isdst"] = parse_timestamp(event["993.imaps.tls.timestamp"])["isdst"]
	if event["993__imaps__tls__timestamp_yday"] ~= nil then
	  event["993__imaps__tls__timestamp_yweek"] = (event["993__imaps__tls__timestamp_yday"] // 7) + 1
	  event["993__imaps__tls__timestamp_yquarter"] = (event["993__imaps__tls__timestamp_yday"] // 91) + 1
	end
	if event["993__imaps__tls__timestamp_wday"] ~= nil then
	  event["993__imaps__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["993__imaps__tls__timestamp_wday"])
	  event["993__imaps__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["993__imaps__tls__timestamp_wday"])
	end
	event["993__imaps__tls__timestamp"] = event["993.imaps.tls.timestamp"]
	event["p993__imaps__ssl_2__timestamp_year"] = parse_timestamp(event["p993.imaps.ssl_2.timestamp"])["year"]
	event["p993__imaps__ssl_2__timestamp_month"] = parse_timestamp(event["p993.imaps.ssl_2.timestamp"])["month"]
	event["p993__imaps__ssl_2__timestamp_day"] = parse_timestamp(event["p993.imaps.ssl_2.timestamp"])["day"]
	event["p993__imaps__ssl_2__timestamp_hour"] = parse_timestamp(event["p993.imaps.ssl_2.timestamp"])["hour"]
	event["p993__imaps__ssl_2__timestamp_min"] = parse_timestamp(event["p993.imaps.ssl_2.timestamp"])["min"]
	event["p993__imaps__ssl_2__timestamp_sec"] = parse_timestamp(event["p993.imaps.ssl_2.timestamp"])["sec"]
	event["p993__imaps__ssl_2__timestamp_yday"] = parse_timestamp(event["p993.imaps.ssl_2.timestamp"])["yday"]
	event["p993__imaps__ssl_2__timestamp_wday"] = parse_timestamp(event["p993.imaps.ssl_2.timestamp"])["wday"]
	event["p993__imaps__ssl_2__timestamp_isdst"] = parse_timestamp(event["p993.imaps.ssl_2.timestamp"])["isdst"]
	if event["p993__imaps__ssl_2__timestamp_yday"] ~= nil then
	  event["p993__imaps__ssl_2__timestamp_yweek"] = (event["p993__imaps__ssl_2__timestamp_yday"] // 7) + 1
	  event["p993__imaps__ssl_2__timestamp_yquarter"] = (event["p993__imaps__ssl_2__timestamp_yday"] // 91) + 1
	end
	if event["p993__imaps__ssl_2__timestamp_wday"] ~= nil then
	  event["p993__imaps__ssl_2__timestamp_is_weekend"] = arr_has_value(weekends, event["p993__imaps__ssl_2__timestamp_wday"])
	  event["p993__imaps__ssl_2__timestamp_is_weekday"] = arr_has_value(weekdays, event["p993__imaps__ssl_2__timestamp_wday"])
	end
	event["p993__imaps__ssl_2__timestamp"] = event["p993.imaps.ssl_2.timestamp"]
	event["993__imaps__ssl_2__timestamp"] = event["993.imaps.ssl_2.timestamp"]
	event["993__imaps__ssl_2__timestamp_year"] = parse_timestamp(event["993.imaps.ssl_2.timestamp"])["year"]
	event["993__imaps__ssl_2__timestamp_month"] = parse_timestamp(event["993.imaps.ssl_2.timestamp"])["month"]
	event["993__imaps__ssl_2__timestamp_day"] = parse_timestamp(event["993.imaps.ssl_2.timestamp"])["day"]
	event["993__imaps__ssl_2__timestamp_hour"] = parse_timestamp(event["993.imaps.ssl_2.timestamp"])["hour"]
	event["993__imaps__ssl_2__timestamp_min"] = parse_timestamp(event["993.imaps.ssl_2.timestamp"])["min"]
	event["993__imaps__ssl_2__timestamp_sec"] = parse_timestamp(event["993.imaps.ssl_2.timestamp"])["sec"]
	event["993__imaps__ssl_2__timestamp_yday"] = parse_timestamp(event["993.imaps.ssl_2.timestamp"])["yday"]
	event["993__imaps__ssl_2__timestamp_wday"] = parse_timestamp(event["993.imaps.ssl_2.timestamp"])["wday"]
	event["993__imaps__ssl_2__timestamp_isdst"] = parse_timestamp(event["993.imaps.ssl_2.timestamp"])["isdst"]
	if event["993__imaps__ssl_2__timestamp_yday"] ~= nil then
	  event["993__imaps__ssl_2__timestamp_yweek"] = (event["993__imaps__ssl_2__timestamp_yday"] // 7) + 1
	  event["993__imaps__ssl_2__timestamp_yquarter"] = (event["993__imaps__ssl_2__timestamp_yday"] // 91) + 1
	end
	if event["993__imaps__ssl_2__timestamp_wday"] ~= nil then
	  event["993__imaps__ssl_2__timestamp_is_weekend"] = arr_has_value(weekends, event["993__imaps__ssl_2__timestamp_wday"])
	  event["993__imaps__ssl_2__timestamp_is_weekday"] = arr_has_value(weekdays, event["993__imaps__ssl_2__timestamp_wday"])
	end
	event["993__imaps__ssl_2__timestamp"] = event["993.imaps.ssl_2.timestamp"]
	event["p443__https__tls__timestamp_year"] = parse_timestamp(event["p443.https.tls.timestamp"])["year"]
	event["p443__https__tls__timestamp_month"] = parse_timestamp(event["p443.https.tls.timestamp"])["month"]
	event["p443__https__tls__timestamp_day"] = parse_timestamp(event["p443.https.tls.timestamp"])["day"]
	event["p443__https__tls__timestamp_hour"] = parse_timestamp(event["p443.https.tls.timestamp"])["hour"]
	event["p443__https__tls__timestamp_min"] = parse_timestamp(event["p443.https.tls.timestamp"])["min"]
	event["p443__https__tls__timestamp_sec"] = parse_timestamp(event["p443.https.tls.timestamp"])["sec"]
	event["p443__https__tls__timestamp_yday"] = parse_timestamp(event["p443.https.tls.timestamp"])["yday"]
	event["p443__https__tls__timestamp_wday"] = parse_timestamp(event["p443.https.tls.timestamp"])["wday"]
	event["p443__https__tls__timestamp_isdst"] = parse_timestamp(event["p443.https.tls.timestamp"])["isdst"]
	if event["p443__https__tls__timestamp_yday"] ~= nil then
	  event["p443__https__tls__timestamp_yweek"] = (event["p443__https__tls__timestamp_yday"] // 7) + 1
	  event["p443__https__tls__timestamp_yquarter"] = (event["p443__https__tls__timestamp_yday"] // 91) + 1
	end
	if event["p443__https__tls__timestamp_wday"] ~= nil then
	  event["p443__https__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p443__https__tls__timestamp_wday"])
	  event["p443__https__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p443__https__tls__timestamp_wday"])
	end
	event["p443__https__tls__timestamp"] = event["p443.https.tls.timestamp"]
	event["443__https__tls__timestamp"] = event["443.https.tls.timestamp"]
	event["443__https__tls__timestamp_year"] = parse_timestamp(event["443.https.tls.timestamp"])["year"]
	event["443__https__tls__timestamp_month"] = parse_timestamp(event["443.https.tls.timestamp"])["month"]
	event["443__https__tls__timestamp_day"] = parse_timestamp(event["443.https.tls.timestamp"])["day"]
	event["443__https__tls__timestamp_hour"] = parse_timestamp(event["443.https.tls.timestamp"])["hour"]
	event["443__https__tls__timestamp_min"] = parse_timestamp(event["443.https.tls.timestamp"])["min"]
	event["443__https__tls__timestamp_sec"] = parse_timestamp(event["443.https.tls.timestamp"])["sec"]
	event["443__https__tls__timestamp_yday"] = parse_timestamp(event["443.https.tls.timestamp"])["yday"]
	event["443__https__tls__timestamp_wday"] = parse_timestamp(event["443.https.tls.timestamp"])["wday"]
	event["443__https__tls__timestamp_isdst"] = parse_timestamp(event["443.https.tls.timestamp"])["isdst"]
	if event["443__https__tls__timestamp_yday"] ~= nil then
	  event["443__https__tls__timestamp_yweek"] = (event["443__https__tls__timestamp_yday"] // 7) + 1
	  event["443__https__tls__timestamp_yquarter"] = (event["443__https__tls__timestamp_yday"] // 91) + 1
	end
	if event["443__https__tls__timestamp_wday"] ~= nil then
	  event["443__https__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["443__https__tls__timestamp_wday"])
	  event["443__https__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["443__https__tls__timestamp_wday"])
	end
	event["443__https__tls__timestamp"] = event["443.https.tls.timestamp"]
	event["p443__https__dhe_export__timestamp_year"] = parse_timestamp(event["p443.https.dhe_export.timestamp"])["year"]
	event["p443__https__dhe_export__timestamp_month"] = parse_timestamp(event["p443.https.dhe_export.timestamp"])["month"]
	event["p443__https__dhe_export__timestamp_day"] = parse_timestamp(event["p443.https.dhe_export.timestamp"])["day"]
	event["p443__https__dhe_export__timestamp_hour"] = parse_timestamp(event["p443.https.dhe_export.timestamp"])["hour"]
	event["p443__https__dhe_export__timestamp_min"] = parse_timestamp(event["p443.https.dhe_export.timestamp"])["min"]
	event["p443__https__dhe_export__timestamp_sec"] = parse_timestamp(event["p443.https.dhe_export.timestamp"])["sec"]
	event["p443__https__dhe_export__timestamp_yday"] = parse_timestamp(event["p443.https.dhe_export.timestamp"])["yday"]
	event["p443__https__dhe_export__timestamp_wday"] = parse_timestamp(event["p443.https.dhe_export.timestamp"])["wday"]
	event["p443__https__dhe_export__timestamp_isdst"] = parse_timestamp(event["p443.https.dhe_export.timestamp"])["isdst"]
	if event["p443__https__dhe_export__timestamp_yday"] ~= nil then
	  event["p443__https__dhe_export__timestamp_yweek"] = (event["p443__https__dhe_export__timestamp_yday"] // 7) + 1
	  event["p443__https__dhe_export__timestamp_yquarter"] = (event["p443__https__dhe_export__timestamp_yday"] // 91) + 1
	end
	if event["p443__https__dhe_export__timestamp_wday"] ~= nil then
	  event["p443__https__dhe_export__timestamp_is_weekend"] = arr_has_value(weekends, event["p443__https__dhe_export__timestamp_wday"])
	  event["p443__https__dhe_export__timestamp_is_weekday"] = arr_has_value(weekdays, event["p443__https__dhe_export__timestamp_wday"])
	end
	event["p443__https__dhe_export__timestamp"] = event["p443.https.dhe_export.timestamp"]
	event["443__https__dhe_export__timestamp"] = event["443.https.dhe_export.timestamp"]
	event["443__https__dhe_export__timestamp_year"] = parse_timestamp(event["443.https.dhe_export.timestamp"])["year"]
	event["443__https__dhe_export__timestamp_month"] = parse_timestamp(event["443.https.dhe_export.timestamp"])["month"]
	event["443__https__dhe_export__timestamp_day"] = parse_timestamp(event["443.https.dhe_export.timestamp"])["day"]
	event["443__https__dhe_export__timestamp_hour"] = parse_timestamp(event["443.https.dhe_export.timestamp"])["hour"]
	event["443__https__dhe_export__timestamp_min"] = parse_timestamp(event["443.https.dhe_export.timestamp"])["min"]
	event["443__https__dhe_export__timestamp_sec"] = parse_timestamp(event["443.https.dhe_export.timestamp"])["sec"]
	event["443__https__dhe_export__timestamp_yday"] = parse_timestamp(event["443.https.dhe_export.timestamp"])["yday"]
	event["443__https__dhe_export__timestamp_wday"] = parse_timestamp(event["443.https.dhe_export.timestamp"])["wday"]
	event["443__https__dhe_export__timestamp_isdst"] = parse_timestamp(event["443.https.dhe_export.timestamp"])["isdst"]
	if event["443__https__dhe_export__timestamp_yday"] ~= nil then
	  event["443__https__dhe_export__timestamp_yweek"] = (event["443__https__dhe_export__timestamp_yday"] // 7) + 1
	  event["443__https__dhe_export__timestamp_yquarter"] = (event["443__https__dhe_export__timestamp_yday"] // 91) + 1
	end
	if event["443__https__dhe_export__timestamp_wday"] ~= nil then
	  event["443__https__dhe_export__timestamp_is_weekend"] = arr_has_value(weekends, event["443__https__dhe_export__timestamp_wday"])
	  event["443__https__dhe_export__timestamp_is_weekday"] = arr_has_value(weekdays, event["443__https__dhe_export__timestamp_wday"])
	end
	event["443__https__dhe_export__timestamp"] = event["443.https.dhe_export.timestamp"]
	event["p443__https__rsa_export__timestamp_year"] = parse_timestamp(event["p443.https.rsa_export.timestamp"])["year"]
	event["p443__https__rsa_export__timestamp_month"] = parse_timestamp(event["p443.https.rsa_export.timestamp"])["month"]
	event["p443__https__rsa_export__timestamp_day"] = parse_timestamp(event["p443.https.rsa_export.timestamp"])["day"]
	event["p443__https__rsa_export__timestamp_hour"] = parse_timestamp(event["p443.https.rsa_export.timestamp"])["hour"]
	event["p443__https__rsa_export__timestamp_min"] = parse_timestamp(event["p443.https.rsa_export.timestamp"])["min"]
	event["p443__https__rsa_export__timestamp_sec"] = parse_timestamp(event["p443.https.rsa_export.timestamp"])["sec"]
	event["p443__https__rsa_export__timestamp_yday"] = parse_timestamp(event["p443.https.rsa_export.timestamp"])["yday"]
	event["p443__https__rsa_export__timestamp_wday"] = parse_timestamp(event["p443.https.rsa_export.timestamp"])["wday"]
	event["p443__https__rsa_export__timestamp_isdst"] = parse_timestamp(event["p443.https.rsa_export.timestamp"])["isdst"]
	if event["p443__https__rsa_export__timestamp_yday"] ~= nil then
	  event["p443__https__rsa_export__timestamp_yweek"] = (event["p443__https__rsa_export__timestamp_yday"] // 7) + 1
	  event["p443__https__rsa_export__timestamp_yquarter"] = (event["p443__https__rsa_export__timestamp_yday"] // 91) + 1
	end
	if event["p443__https__rsa_export__timestamp_wday"] ~= nil then
	  event["p443__https__rsa_export__timestamp_is_weekend"] = arr_has_value(weekends, event["p443__https__rsa_export__timestamp_wday"])
	  event["p443__https__rsa_export__timestamp_is_weekday"] = arr_has_value(weekdays, event["p443__https__rsa_export__timestamp_wday"])
	end
	event["p443__https__rsa_export__timestamp"] = event["p443.https.rsa_export.timestamp"]
	event["443__https__rsa_export__timestamp"] = event["443.https.rsa_export.timestamp"]
	event["443__https__rsa_export__timestamp_year"] = parse_timestamp(event["443.https.rsa_export.timestamp"])["year"]
	event["443__https__rsa_export__timestamp_month"] = parse_timestamp(event["443.https.rsa_export.timestamp"])["month"]
	event["443__https__rsa_export__timestamp_day"] = parse_timestamp(event["443.https.rsa_export.timestamp"])["day"]
	event["443__https__rsa_export__timestamp_hour"] = parse_timestamp(event["443.https.rsa_export.timestamp"])["hour"]
	event["443__https__rsa_export__timestamp_min"] = parse_timestamp(event["443.https.rsa_export.timestamp"])["min"]
	event["443__https__rsa_export__timestamp_sec"] = parse_timestamp(event["443.https.rsa_export.timestamp"])["sec"]
	event["443__https__rsa_export__timestamp_yday"] = parse_timestamp(event["443.https.rsa_export.timestamp"])["yday"]
	event["443__https__rsa_export__timestamp_wday"] = parse_timestamp(event["443.https.rsa_export.timestamp"])["wday"]
	event["443__https__rsa_export__timestamp_isdst"] = parse_timestamp(event["443.https.rsa_export.timestamp"])["isdst"]
	if event["443__https__rsa_export__timestamp_yday"] ~= nil then
	  event["443__https__rsa_export__timestamp_yweek"] = (event["443__https__rsa_export__timestamp_yday"] // 7) + 1
	  event["443__https__rsa_export__timestamp_yquarter"] = (event["443__https__rsa_export__timestamp_yday"] // 91) + 1
	end
	if event["443__https__rsa_export__timestamp_wday"] ~= nil then
	  event["443__https__rsa_export__timestamp_is_weekend"] = arr_has_value(weekends, event["443__https__rsa_export__timestamp_wday"])
	  event["443__https__rsa_export__timestamp_is_weekday"] = arr_has_value(weekdays, event["443__https__rsa_export__timestamp_wday"])
	end
	event["443__https__rsa_export__timestamp"] = event["443.https.rsa_export.timestamp"]
	event["p443__https__tls_1_2__timestamp_year"] = parse_timestamp(event["p443.https.tls_1_2.timestamp"])["year"]
	event["p443__https__tls_1_2__timestamp_month"] = parse_timestamp(event["p443.https.tls_1_2.timestamp"])["month"]
	event["p443__https__tls_1_2__timestamp_day"] = parse_timestamp(event["p443.https.tls_1_2.timestamp"])["day"]
	event["p443__https__tls_1_2__timestamp_hour"] = parse_timestamp(event["p443.https.tls_1_2.timestamp"])["hour"]
	event["p443__https__tls_1_2__timestamp_min"] = parse_timestamp(event["p443.https.tls_1_2.timestamp"])["min"]
	event["p443__https__tls_1_2__timestamp_sec"] = parse_timestamp(event["p443.https.tls_1_2.timestamp"])["sec"]
	event["p443__https__tls_1_2__timestamp_yday"] = parse_timestamp(event["p443.https.tls_1_2.timestamp"])["yday"]
	event["p443__https__tls_1_2__timestamp_wday"] = parse_timestamp(event["p443.https.tls_1_2.timestamp"])["wday"]
	event["p443__https__tls_1_2__timestamp_isdst"] = parse_timestamp(event["p443.https.tls_1_2.timestamp"])["isdst"]
	if event["p443__https__tls_1_2__timestamp_yday"] ~= nil then
	  event["p443__https__tls_1_2__timestamp_yweek"] = (event["p443__https__tls_1_2__timestamp_yday"] // 7) + 1
	  event["p443__https__tls_1_2__timestamp_yquarter"] = (event["p443__https__tls_1_2__timestamp_yday"] // 91) + 1
	end
	if event["p443__https__tls_1_2__timestamp_wday"] ~= nil then
	  event["p443__https__tls_1_2__timestamp_is_weekend"] = arr_has_value(weekends, event["p443__https__tls_1_2__timestamp_wday"])
	  event["p443__https__tls_1_2__timestamp_is_weekday"] = arr_has_value(weekdays, event["p443__https__tls_1_2__timestamp_wday"])
	end
	event["p443__https__tls_1_2__timestamp"] = event["p443.https.tls_1_2.timestamp"]
	event["443__https__tls_1_2__timestamp"] = event["443.https.tls_1_2.timestamp"]
	event["443__https__tls_1_2__timestamp_year"] = parse_timestamp(event["443.https.tls_1_2.timestamp"])["year"]
	event["443__https__tls_1_2__timestamp_month"] = parse_timestamp(event["443.https.tls_1_2.timestamp"])["month"]
	event["443__https__tls_1_2__timestamp_day"] = parse_timestamp(event["443.https.tls_1_2.timestamp"])["day"]
	event["443__https__tls_1_2__timestamp_hour"] = parse_timestamp(event["443.https.tls_1_2.timestamp"])["hour"]
	event["443__https__tls_1_2__timestamp_min"] = parse_timestamp(event["443.https.tls_1_2.timestamp"])["min"]
	event["443__https__tls_1_2__timestamp_sec"] = parse_timestamp(event["443.https.tls_1_2.timestamp"])["sec"]
	event["443__https__tls_1_2__timestamp_yday"] = parse_timestamp(event["443.https.tls_1_2.timestamp"])["yday"]
	event["443__https__tls_1_2__timestamp_wday"] = parse_timestamp(event["443.https.tls_1_2.timestamp"])["wday"]
	event["443__https__tls_1_2__timestamp_isdst"] = parse_timestamp(event["443.https.tls_1_2.timestamp"])["isdst"]
	if event["443__https__tls_1_2__timestamp_yday"] ~= nil then
	  event["443__https__tls_1_2__timestamp_yweek"] = (event["443__https__tls_1_2__timestamp_yday"] // 7) + 1
	  event["443__https__tls_1_2__timestamp_yquarter"] = (event["443__https__tls_1_2__timestamp_yday"] // 91) + 1
	end
	if event["443__https__tls_1_2__timestamp_wday"] ~= nil then
	  event["443__https__tls_1_2__timestamp_is_weekend"] = arr_has_value(weekends, event["443__https__tls_1_2__timestamp_wday"])
	  event["443__https__tls_1_2__timestamp_is_weekday"] = arr_has_value(weekdays, event["443__https__tls_1_2__timestamp_wday"])
	end
	event["443__https__tls_1_2__timestamp"] = event["443.https.tls_1_2.timestamp"]
	event["p443__https__ecdhe__timestamp_year"] = parse_timestamp(event["p443.https.ecdhe.timestamp"])["year"]
	event["p443__https__ecdhe__timestamp_month"] = parse_timestamp(event["p443.https.ecdhe.timestamp"])["month"]
	event["p443__https__ecdhe__timestamp_day"] = parse_timestamp(event["p443.https.ecdhe.timestamp"])["day"]
	event["p443__https__ecdhe__timestamp_hour"] = parse_timestamp(event["p443.https.ecdhe.timestamp"])["hour"]
	event["p443__https__ecdhe__timestamp_min"] = parse_timestamp(event["p443.https.ecdhe.timestamp"])["min"]
	event["p443__https__ecdhe__timestamp_sec"] = parse_timestamp(event["p443.https.ecdhe.timestamp"])["sec"]
	event["p443__https__ecdhe__timestamp_yday"] = parse_timestamp(event["p443.https.ecdhe.timestamp"])["yday"]
	event["p443__https__ecdhe__timestamp_wday"] = parse_timestamp(event["p443.https.ecdhe.timestamp"])["wday"]
	event["p443__https__ecdhe__timestamp_isdst"] = parse_timestamp(event["p443.https.ecdhe.timestamp"])["isdst"]
	if event["p443__https__ecdhe__timestamp_yday"] ~= nil then
	  event["p443__https__ecdhe__timestamp_yweek"] = (event["p443__https__ecdhe__timestamp_yday"] // 7) + 1
	  event["p443__https__ecdhe__timestamp_yquarter"] = (event["p443__https__ecdhe__timestamp_yday"] // 91) + 1
	end
	if event["p443__https__ecdhe__timestamp_wday"] ~= nil then
	  event["p443__https__ecdhe__timestamp_is_weekend"] = arr_has_value(weekends, event["p443__https__ecdhe__timestamp_wday"])
	  event["p443__https__ecdhe__timestamp_is_weekday"] = arr_has_value(weekdays, event["p443__https__ecdhe__timestamp_wday"])
	end
	event["p443__https__ecdhe__timestamp"] = event["p443.https.ecdhe.timestamp"]
	event["443__https__ecdhe__timestamp"] = event["443.https.ecdhe.timestamp"]
	event["443__https__ecdhe__timestamp_year"] = parse_timestamp(event["443.https.ecdhe.timestamp"])["year"]
	event["443__https__ecdhe__timestamp_month"] = parse_timestamp(event["443.https.ecdhe.timestamp"])["month"]
	event["443__https__ecdhe__timestamp_day"] = parse_timestamp(event["443.https.ecdhe.timestamp"])["day"]
	event["443__https__ecdhe__timestamp_hour"] = parse_timestamp(event["443.https.ecdhe.timestamp"])["hour"]
	event["443__https__ecdhe__timestamp_min"] = parse_timestamp(event["443.https.ecdhe.timestamp"])["min"]
	event["443__https__ecdhe__timestamp_sec"] = parse_timestamp(event["443.https.ecdhe.timestamp"])["sec"]
	event["443__https__ecdhe__timestamp_yday"] = parse_timestamp(event["443.https.ecdhe.timestamp"])["yday"]
	event["443__https__ecdhe__timestamp_wday"] = parse_timestamp(event["443.https.ecdhe.timestamp"])["wday"]
	event["443__https__ecdhe__timestamp_isdst"] = parse_timestamp(event["443.https.ecdhe.timestamp"])["isdst"]
	if event["443__https__ecdhe__timestamp_yday"] ~= nil then
	  event["443__https__ecdhe__timestamp_yweek"] = (event["443__https__ecdhe__timestamp_yday"] // 7) + 1
	  event["443__https__ecdhe__timestamp_yquarter"] = (event["443__https__ecdhe__timestamp_yday"] // 91) + 1
	end
	if event["443__https__ecdhe__timestamp_wday"] ~= nil then
	  event["443__https__ecdhe__timestamp_is_weekend"] = arr_has_value(weekends, event["443__https__ecdhe__timestamp_wday"])
	  event["443__https__ecdhe__timestamp_is_weekday"] = arr_has_value(weekdays, event["443__https__ecdhe__timestamp_wday"])
	end
	event["443__https__ecdhe__timestamp"] = event["443.https.ecdhe.timestamp"]
	event["p443__https__tls_1_1__timestamp_year"] = parse_timestamp(event["p443.https.tls_1_1.timestamp"])["year"]
	event["p443__https__tls_1_1__timestamp_month"] = parse_timestamp(event["p443.https.tls_1_1.timestamp"])["month"]
	event["p443__https__tls_1_1__timestamp_day"] = parse_timestamp(event["p443.https.tls_1_1.timestamp"])["day"]
	event["p443__https__tls_1_1__timestamp_hour"] = parse_timestamp(event["p443.https.tls_1_1.timestamp"])["hour"]
	event["p443__https__tls_1_1__timestamp_min"] = parse_timestamp(event["p443.https.tls_1_1.timestamp"])["min"]
	event["p443__https__tls_1_1__timestamp_sec"] = parse_timestamp(event["p443.https.tls_1_1.timestamp"])["sec"]
	event["p443__https__tls_1_1__timestamp_yday"] = parse_timestamp(event["p443.https.tls_1_1.timestamp"])["yday"]
	event["p443__https__tls_1_1__timestamp_wday"] = parse_timestamp(event["p443.https.tls_1_1.timestamp"])["wday"]
	event["p443__https__tls_1_1__timestamp_isdst"] = parse_timestamp(event["p443.https.tls_1_1.timestamp"])["isdst"]
	if event["p443__https__tls_1_1__timestamp_yday"] ~= nil then
	  event["p443__https__tls_1_1__timestamp_yweek"] = (event["p443__https__tls_1_1__timestamp_yday"] // 7) + 1
	  event["p443__https__tls_1_1__timestamp_yquarter"] = (event["p443__https__tls_1_1__timestamp_yday"] // 91) + 1
	end
	if event["p443__https__tls_1_1__timestamp_wday"] ~= nil then
	  event["p443__https__tls_1_1__timestamp_is_weekend"] = arr_has_value(weekends, event["p443__https__tls_1_1__timestamp_wday"])
	  event["p443__https__tls_1_1__timestamp_is_weekday"] = arr_has_value(weekdays, event["p443__https__tls_1_1__timestamp_wday"])
	end
	event["p443__https__tls_1_1__timestamp"] = event["p443.https.tls_1_1.timestamp"]
	event["443__https__tls_1_1__timestamp"] = event["443.https.tls_1_1.timestamp"]
	event["443__https__tls_1_1__timestamp_year"] = parse_timestamp(event["443.https.tls_1_1.timestamp"])["year"]
	event["443__https__tls_1_1__timestamp_month"] = parse_timestamp(event["443.https.tls_1_1.timestamp"])["month"]
	event["443__https__tls_1_1__timestamp_day"] = parse_timestamp(event["443.https.tls_1_1.timestamp"])["day"]
	event["443__https__tls_1_1__timestamp_hour"] = parse_timestamp(event["443.https.tls_1_1.timestamp"])["hour"]
	event["443__https__tls_1_1__timestamp_min"] = parse_timestamp(event["443.https.tls_1_1.timestamp"])["min"]
	event["443__https__tls_1_1__timestamp_sec"] = parse_timestamp(event["443.https.tls_1_1.timestamp"])["sec"]
	event["443__https__tls_1_1__timestamp_yday"] = parse_timestamp(event["443.https.tls_1_1.timestamp"])["yday"]
	event["443__https__tls_1_1__timestamp_wday"] = parse_timestamp(event["443.https.tls_1_1.timestamp"])["wday"]
	event["443__https__tls_1_1__timestamp_isdst"] = parse_timestamp(event["443.https.tls_1_1.timestamp"])["isdst"]
	if event["443__https__tls_1_1__timestamp_yday"] ~= nil then
	  event["443__https__tls_1_1__timestamp_yweek"] = (event["443__https__tls_1_1__timestamp_yday"] // 7) + 1
	  event["443__https__tls_1_1__timestamp_yquarter"] = (event["443__https__tls_1_1__timestamp_yday"] // 91) + 1
	end
	if event["443__https__tls_1_1__timestamp_wday"] ~= nil then
	  event["443__https__tls_1_1__timestamp_is_weekend"] = arr_has_value(weekends, event["443__https__tls_1_1__timestamp_wday"])
	  event["443__https__tls_1_1__timestamp_is_weekday"] = arr_has_value(weekdays, event["443__https__tls_1_1__timestamp_wday"])
	end
	event["443__https__tls_1_1__timestamp"] = event["443.https.tls_1_1.timestamp"]
	event["p443__https__dhe__timestamp_year"] = parse_timestamp(event["p443.https.dhe.timestamp"])["year"]
	event["p443__https__dhe__timestamp_month"] = parse_timestamp(event["p443.https.dhe.timestamp"])["month"]
	event["p443__https__dhe__timestamp_day"] = parse_timestamp(event["p443.https.dhe.timestamp"])["day"]
	event["p443__https__dhe__timestamp_hour"] = parse_timestamp(event["p443.https.dhe.timestamp"])["hour"]
	event["p443__https__dhe__timestamp_min"] = parse_timestamp(event["p443.https.dhe.timestamp"])["min"]
	event["p443__https__dhe__timestamp_sec"] = parse_timestamp(event["p443.https.dhe.timestamp"])["sec"]
	event["p443__https__dhe__timestamp_yday"] = parse_timestamp(event["p443.https.dhe.timestamp"])["yday"]
	event["p443__https__dhe__timestamp_wday"] = parse_timestamp(event["p443.https.dhe.timestamp"])["wday"]
	event["p443__https__dhe__timestamp_isdst"] = parse_timestamp(event["p443.https.dhe.timestamp"])["isdst"]
	if event["p443__https__dhe__timestamp_yday"] ~= nil then
	  event["p443__https__dhe__timestamp_yweek"] = (event["p443__https__dhe__timestamp_yday"] // 7) + 1
	  event["p443__https__dhe__timestamp_yquarter"] = (event["p443__https__dhe__timestamp_yday"] // 91) + 1
	end
	if event["p443__https__dhe__timestamp_wday"] ~= nil then
	  event["p443__https__dhe__timestamp_is_weekend"] = arr_has_value(weekends, event["p443__https__dhe__timestamp_wday"])
	  event["p443__https__dhe__timestamp_is_weekday"] = arr_has_value(weekdays, event["p443__https__dhe__timestamp_wday"])
	end
	event["p443__https__dhe__timestamp"] = event["p443.https.dhe.timestamp"]
	event["443__https__dhe__timestamp"] = event["443.https.dhe.timestamp"]
	event["443__https__dhe__timestamp_year"] = parse_timestamp(event["443.https.dhe.timestamp"])["year"]
	event["443__https__dhe__timestamp_month"] = parse_timestamp(event["443.https.dhe.timestamp"])["month"]
	event["443__https__dhe__timestamp_day"] = parse_timestamp(event["443.https.dhe.timestamp"])["day"]
	event["443__https__dhe__timestamp_hour"] = parse_timestamp(event["443.https.dhe.timestamp"])["hour"]
	event["443__https__dhe__timestamp_min"] = parse_timestamp(event["443.https.dhe.timestamp"])["min"]
	event["443__https__dhe__timestamp_sec"] = parse_timestamp(event["443.https.dhe.timestamp"])["sec"]
	event["443__https__dhe__timestamp_yday"] = parse_timestamp(event["443.https.dhe.timestamp"])["yday"]
	event["443__https__dhe__timestamp_wday"] = parse_timestamp(event["443.https.dhe.timestamp"])["wday"]
	event["443__https__dhe__timestamp_isdst"] = parse_timestamp(event["443.https.dhe.timestamp"])["isdst"]
	if event["443__https__dhe__timestamp_yday"] ~= nil then
	  event["443__https__dhe__timestamp_yweek"] = (event["443__https__dhe__timestamp_yday"] // 7) + 1
	  event["443__https__dhe__timestamp_yquarter"] = (event["443__https__dhe__timestamp_yday"] // 91) + 1
	end
	if event["443__https__dhe__timestamp_wday"] ~= nil then
	  event["443__https__dhe__timestamp_is_weekend"] = arr_has_value(weekends, event["443__https__dhe__timestamp_wday"])
	  event["443__https__dhe__timestamp_is_weekday"] = arr_has_value(weekdays, event["443__https__dhe__timestamp_wday"])
	end
	event["443__https__dhe__timestamp"] = event["443.https.dhe.timestamp"]
	event["p443__https__ssl_2__timestamp_year"] = parse_timestamp(event["p443.https.ssl_2.timestamp"])["year"]
	event["p443__https__ssl_2__timestamp_month"] = parse_timestamp(event["p443.https.ssl_2.timestamp"])["month"]
	event["p443__https__ssl_2__timestamp_day"] = parse_timestamp(event["p443.https.ssl_2.timestamp"])["day"]
	event["p443__https__ssl_2__timestamp_hour"] = parse_timestamp(event["p443.https.ssl_2.timestamp"])["hour"]
	event["p443__https__ssl_2__timestamp_min"] = parse_timestamp(event["p443.https.ssl_2.timestamp"])["min"]
	event["p443__https__ssl_2__timestamp_sec"] = parse_timestamp(event["p443.https.ssl_2.timestamp"])["sec"]
	event["p443__https__ssl_2__timestamp_yday"] = parse_timestamp(event["p443.https.ssl_2.timestamp"])["yday"]
	event["p443__https__ssl_2__timestamp_wday"] = parse_timestamp(event["p443.https.ssl_2.timestamp"])["wday"]
	event["p443__https__ssl_2__timestamp_isdst"] = parse_timestamp(event["p443.https.ssl_2.timestamp"])["isdst"]
	if event["p443__https__ssl_2__timestamp_yday"] ~= nil then
	  event["p443__https__ssl_2__timestamp_yweek"] = (event["p443__https__ssl_2__timestamp_yday"] // 7) + 1
	  event["p443__https__ssl_2__timestamp_yquarter"] = (event["p443__https__ssl_2__timestamp_yday"] // 91) + 1
	end
	if event["p443__https__ssl_2__timestamp_wday"] ~= nil then
	  event["p443__https__ssl_2__timestamp_is_weekend"] = arr_has_value(weekends, event["p443__https__ssl_2__timestamp_wday"])
	  event["p443__https__ssl_2__timestamp_is_weekday"] = arr_has_value(weekdays, event["p443__https__ssl_2__timestamp_wday"])
	end
	event["p443__https__ssl_2__timestamp"] = event["p443.https.ssl_2.timestamp"]
	event["443__https__ssl_2__timestamp"] = event["443.https.ssl_2.timestamp"]
	event["443__https__ssl_2__timestamp_year"] = parse_timestamp(event["443.https.ssl_2.timestamp"])["year"]
	event["443__https__ssl_2__timestamp_month"] = parse_timestamp(event["443.https.ssl_2.timestamp"])["month"]
	event["443__https__ssl_2__timestamp_day"] = parse_timestamp(event["443.https.ssl_2.timestamp"])["day"]
	event["443__https__ssl_2__timestamp_hour"] = parse_timestamp(event["443.https.ssl_2.timestamp"])["hour"]
	event["443__https__ssl_2__timestamp_min"] = parse_timestamp(event["443.https.ssl_2.timestamp"])["min"]
	event["443__https__ssl_2__timestamp_sec"] = parse_timestamp(event["443.https.ssl_2.timestamp"])["sec"]
	event["443__https__ssl_2__timestamp_yday"] = parse_timestamp(event["443.https.ssl_2.timestamp"])["yday"]
	event["443__https__ssl_2__timestamp_wday"] = parse_timestamp(event["443.https.ssl_2.timestamp"])["wday"]
	event["443__https__ssl_2__timestamp_isdst"] = parse_timestamp(event["443.https.ssl_2.timestamp"])["isdst"]
	if event["443__https__ssl_2__timestamp_yday"] ~= nil then
	  event["443__https__ssl_2__timestamp_yweek"] = (event["443__https__ssl_2__timestamp_yday"] // 7) + 1
	  event["443__https__ssl_2__timestamp_yquarter"] = (event["443__https__ssl_2__timestamp_yday"] // 91) + 1
	end
	if event["443__https__ssl_2__timestamp_wday"] ~= nil then
	  event["443__https__ssl_2__timestamp_is_weekend"] = arr_has_value(weekends, event["443__https__ssl_2__timestamp_wday"])
	  event["443__https__ssl_2__timestamp_is_weekday"] = arr_has_value(weekdays, event["443__https__ssl_2__timestamp_wday"])
	end
	event["443__https__ssl_2__timestamp"] = event["443.https.ssl_2.timestamp"]
	event["p443__https__heartbleed__timestamp_year"] = parse_timestamp(event["p443.https.heartbleed.timestamp"])["year"]
	event["p443__https__heartbleed__timestamp_month"] = parse_timestamp(event["p443.https.heartbleed.timestamp"])["month"]
	event["p443__https__heartbleed__timestamp_day"] = parse_timestamp(event["p443.https.heartbleed.timestamp"])["day"]
	event["p443__https__heartbleed__timestamp_hour"] = parse_timestamp(event["p443.https.heartbleed.timestamp"])["hour"]
	event["p443__https__heartbleed__timestamp_min"] = parse_timestamp(event["p443.https.heartbleed.timestamp"])["min"]
	event["p443__https__heartbleed__timestamp_sec"] = parse_timestamp(event["p443.https.heartbleed.timestamp"])["sec"]
	event["p443__https__heartbleed__timestamp_yday"] = parse_timestamp(event["p443.https.heartbleed.timestamp"])["yday"]
	event["p443__https__heartbleed__timestamp_wday"] = parse_timestamp(event["p443.https.heartbleed.timestamp"])["wday"]
	event["p443__https__heartbleed__timestamp_isdst"] = parse_timestamp(event["p443.https.heartbleed.timestamp"])["isdst"]
	if event["p443__https__heartbleed__timestamp_yday"] ~= nil then
	  event["p443__https__heartbleed__timestamp_yweek"] = (event["p443__https__heartbleed__timestamp_yday"] // 7) + 1
	  event["p443__https__heartbleed__timestamp_yquarter"] = (event["p443__https__heartbleed__timestamp_yday"] // 91) + 1
	end
	if event["p443__https__heartbleed__timestamp_wday"] ~= nil then
	  event["p443__https__heartbleed__timestamp_is_weekend"] = arr_has_value(weekends, event["p443__https__heartbleed__timestamp_wday"])
	  event["p443__https__heartbleed__timestamp_is_weekday"] = arr_has_value(weekdays, event["p443__https__heartbleed__timestamp_wday"])
	end
	event["p443__https__heartbleed__timestamp"] = event["p443.https.heartbleed.timestamp"]
	event["443__https__heartbleed__timestamp"] = event["443.https.heartbleed.timestamp"]
	event["443__https__heartbleed__timestamp_year"] = parse_timestamp(event["443.https.heartbleed.timestamp"])["year"]
	event["443__https__heartbleed__timestamp_month"] = parse_timestamp(event["443.https.heartbleed.timestamp"])["month"]
	event["443__https__heartbleed__timestamp_day"] = parse_timestamp(event["443.https.heartbleed.timestamp"])["day"]
	event["443__https__heartbleed__timestamp_hour"] = parse_timestamp(event["443.https.heartbleed.timestamp"])["hour"]
	event["443__https__heartbleed__timestamp_min"] = parse_timestamp(event["443.https.heartbleed.timestamp"])["min"]
	event["443__https__heartbleed__timestamp_sec"] = parse_timestamp(event["443.https.heartbleed.timestamp"])["sec"]
	event["443__https__heartbleed__timestamp_yday"] = parse_timestamp(event["443.https.heartbleed.timestamp"])["yday"]
	event["443__https__heartbleed__timestamp_wday"] = parse_timestamp(event["443.https.heartbleed.timestamp"])["wday"]
	event["443__https__heartbleed__timestamp_isdst"] = parse_timestamp(event["443.https.heartbleed.timestamp"])["isdst"]
	if event["443__https__heartbleed__timestamp_yday"] ~= nil then
	  event["443__https__heartbleed__timestamp_yweek"] = (event["443__https__heartbleed__timestamp_yday"] // 7) + 1
	  event["443__https__heartbleed__timestamp_yquarter"] = (event["443__https__heartbleed__timestamp_yday"] // 91) + 1
	end
	if event["443__https__heartbleed__timestamp_wday"] ~= nil then
	  event["443__https__heartbleed__timestamp_is_weekend"] = arr_has_value(weekends, event["443__https__heartbleed__timestamp_wday"])
	  event["443__https__heartbleed__timestamp_is_weekday"] = arr_has_value(weekdays, event["443__https__heartbleed__timestamp_wday"])
	end
	event["443__https__heartbleed__timestamp"] = event["443.https.heartbleed.timestamp"]
	event["p20000__dnp3__status__timestamp_year"] = parse_timestamp(event["p20000.dnp3.status.timestamp"])["year"]
	event["p20000__dnp3__status__timestamp_month"] = parse_timestamp(event["p20000.dnp3.status.timestamp"])["month"]
	event["p20000__dnp3__status__timestamp_day"] = parse_timestamp(event["p20000.dnp3.status.timestamp"])["day"]
	event["p20000__dnp3__status__timestamp_hour"] = parse_timestamp(event["p20000.dnp3.status.timestamp"])["hour"]
	event["p20000__dnp3__status__timestamp_min"] = parse_timestamp(event["p20000.dnp3.status.timestamp"])["min"]
	event["p20000__dnp3__status__timestamp_sec"] = parse_timestamp(event["p20000.dnp3.status.timestamp"])["sec"]
	event["p20000__dnp3__status__timestamp_yday"] = parse_timestamp(event["p20000.dnp3.status.timestamp"])["yday"]
	event["p20000__dnp3__status__timestamp_wday"] = parse_timestamp(event["p20000.dnp3.status.timestamp"])["wday"]
	event["p20000__dnp3__status__timestamp_isdst"] = parse_timestamp(event["p20000.dnp3.status.timestamp"])["isdst"]
	if event["p20000__dnp3__status__timestamp_yday"] ~= nil then
	  event["p20000__dnp3__status__timestamp_yweek"] = (event["p20000__dnp3__status__timestamp_yday"] // 7) + 1
	  event["p20000__dnp3__status__timestamp_yquarter"] = (event["p20000__dnp3__status__timestamp_yday"] // 91) + 1
	end
	if event["p20000__dnp3__status__timestamp_wday"] ~= nil then
	  event["p20000__dnp3__status__timestamp_is_weekend"] = arr_has_value(weekends, event["p20000__dnp3__status__timestamp_wday"])
	  event["p20000__dnp3__status__timestamp_is_weekday"] = arr_has_value(weekdays, event["p20000__dnp3__status__timestamp_wday"])
	end
	event["p20000__dnp3__status__timestamp"] = event["p20000.dnp3.status.timestamp"]
	event["20000__dnp3__status__timestamp"] = event["20000.dnp3.status.timestamp"]
	event["20000__dnp3__status__timestamp_year"] = parse_timestamp(event["20000.dnp3.status.timestamp"])["year"]
	event["20000__dnp3__status__timestamp_month"] = parse_timestamp(event["20000.dnp3.status.timestamp"])["month"]
	event["20000__dnp3__status__timestamp_day"] = parse_timestamp(event["20000.dnp3.status.timestamp"])["day"]
	event["20000__dnp3__status__timestamp_hour"] = parse_timestamp(event["20000.dnp3.status.timestamp"])["hour"]
	event["20000__dnp3__status__timestamp_min"] = parse_timestamp(event["20000.dnp3.status.timestamp"])["min"]
	event["20000__dnp3__status__timestamp_sec"] = parse_timestamp(event["20000.dnp3.status.timestamp"])["sec"]
	event["20000__dnp3__status__timestamp_yday"] = parse_timestamp(event["20000.dnp3.status.timestamp"])["yday"]
	event["20000__dnp3__status__timestamp_wday"] = parse_timestamp(event["20000.dnp3.status.timestamp"])["wday"]
	event["20000__dnp3__status__timestamp_isdst"] = parse_timestamp(event["20000.dnp3.status.timestamp"])["isdst"]
	if event["20000__dnp3__status__timestamp_yday"] ~= nil then
	  event["20000__dnp3__status__timestamp_yweek"] = (event["20000__dnp3__status__timestamp_yday"] // 7) + 1
	  event["20000__dnp3__status__timestamp_yquarter"] = (event["20000__dnp3__status__timestamp_yday"] // 91) + 1
	end
	if event["20000__dnp3__status__timestamp_wday"] ~= nil then
	  event["20000__dnp3__status__timestamp_is_weekend"] = arr_has_value(weekends, event["20000__dnp3__status__timestamp_wday"])
	  event["20000__dnp3__status__timestamp_is_weekday"] = arr_has_value(weekdays, event["20000__dnp3__status__timestamp_wday"])
	end
	event["20000__dnp3__status__timestamp"] = event["20000.dnp3.status.timestamp"]
	event["p1911__fox__device_id__timestamp_year"] = parse_timestamp(event["p1911.fox.device_id.timestamp"])["year"]
	event["p1911__fox__device_id__timestamp_month"] = parse_timestamp(event["p1911.fox.device_id.timestamp"])["month"]
	event["p1911__fox__device_id__timestamp_day"] = parse_timestamp(event["p1911.fox.device_id.timestamp"])["day"]
	event["p1911__fox__device_id__timestamp_hour"] = parse_timestamp(event["p1911.fox.device_id.timestamp"])["hour"]
	event["p1911__fox__device_id__timestamp_min"] = parse_timestamp(event["p1911.fox.device_id.timestamp"])["min"]
	event["p1911__fox__device_id__timestamp_sec"] = parse_timestamp(event["p1911.fox.device_id.timestamp"])["sec"]
	event["p1911__fox__device_id__timestamp_yday"] = parse_timestamp(event["p1911.fox.device_id.timestamp"])["yday"]
	event["p1911__fox__device_id__timestamp_wday"] = parse_timestamp(event["p1911.fox.device_id.timestamp"])["wday"]
	event["p1911__fox__device_id__timestamp_isdst"] = parse_timestamp(event["p1911.fox.device_id.timestamp"])["isdst"]
	if event["p1911__fox__device_id__timestamp_yday"] ~= nil then
	  event["p1911__fox__device_id__timestamp_yweek"] = (event["p1911__fox__device_id__timestamp_yday"] // 7) + 1
	  event["p1911__fox__device_id__timestamp_yquarter"] = (event["p1911__fox__device_id__timestamp_yday"] // 91) + 1
	end
	if event["p1911__fox__device_id__timestamp_wday"] ~= nil then
	  event["p1911__fox__device_id__timestamp_is_weekend"] = arr_has_value(weekends, event["p1911__fox__device_id__timestamp_wday"])
	  event["p1911__fox__device_id__timestamp_is_weekday"] = arr_has_value(weekdays, event["p1911__fox__device_id__timestamp_wday"])
	end
	event["p1911__fox__device_id__timestamp"] = event["p1911.fox.device_id.timestamp"]
	event["1911__fox__device_id__timestamp"] = event["1911.fox.device_id.timestamp"]
	event["1911__fox__device_id__timestamp_year"] = parse_timestamp(event["1911.fox.device_id.timestamp"])["year"]
	event["1911__fox__device_id__timestamp_month"] = parse_timestamp(event["1911.fox.device_id.timestamp"])["month"]
	event["1911__fox__device_id__timestamp_day"] = parse_timestamp(event["1911.fox.device_id.timestamp"])["day"]
	event["1911__fox__device_id__timestamp_hour"] = parse_timestamp(event["1911.fox.device_id.timestamp"])["hour"]
	event["1911__fox__device_id__timestamp_min"] = parse_timestamp(event["1911.fox.device_id.timestamp"])["min"]
	event["1911__fox__device_id__timestamp_sec"] = parse_timestamp(event["1911.fox.device_id.timestamp"])["sec"]
	event["1911__fox__device_id__timestamp_yday"] = parse_timestamp(event["1911.fox.device_id.timestamp"])["yday"]
	event["1911__fox__device_id__timestamp_wday"] = parse_timestamp(event["1911.fox.device_id.timestamp"])["wday"]
	event["1911__fox__device_id__timestamp_isdst"] = parse_timestamp(event["1911.fox.device_id.timestamp"])["isdst"]
	if event["1911__fox__device_id__timestamp_yday"] ~= nil then
	  event["1911__fox__device_id__timestamp_yweek"] = (event["1911__fox__device_id__timestamp_yday"] // 7) + 1
	  event["1911__fox__device_id__timestamp_yquarter"] = (event["1911__fox__device_id__timestamp_yday"] // 91) + 1
	end
	if event["1911__fox__device_id__timestamp_wday"] ~= nil then
	  event["1911__fox__device_id__timestamp_is_weekend"] = arr_has_value(weekends, event["1911__fox__device_id__timestamp_wday"])
	  event["1911__fox__device_id__timestamp_is_weekday"] = arr_has_value(weekdays, event["1911__fox__device_id__timestamp_wday"])
	end
	event["1911__fox__device_id__timestamp"] = event["1911.fox.device_id.timestamp"]
	event["p53__dns__lookup__timestamp_year"] = parse_timestamp(event["p53.dns.lookup.timestamp"])["year"]
	event["p53__dns__lookup__timestamp_month"] = parse_timestamp(event["p53.dns.lookup.timestamp"])["month"]
	event["p53__dns__lookup__timestamp_day"] = parse_timestamp(event["p53.dns.lookup.timestamp"])["day"]
	event["p53__dns__lookup__timestamp_hour"] = parse_timestamp(event["p53.dns.lookup.timestamp"])["hour"]
	event["p53__dns__lookup__timestamp_min"] = parse_timestamp(event["p53.dns.lookup.timestamp"])["min"]
	event["p53__dns__lookup__timestamp_sec"] = parse_timestamp(event["p53.dns.lookup.timestamp"])["sec"]
	event["p53__dns__lookup__timestamp_yday"] = parse_timestamp(event["p53.dns.lookup.timestamp"])["yday"]
	event["p53__dns__lookup__timestamp_wday"] = parse_timestamp(event["p53.dns.lookup.timestamp"])["wday"]
	event["p53__dns__lookup__timestamp_isdst"] = parse_timestamp(event["p53.dns.lookup.timestamp"])["isdst"]
	if event["p53__dns__lookup__timestamp_yday"] ~= nil then
	  event["p53__dns__lookup__timestamp_yweek"] = (event["p53__dns__lookup__timestamp_yday"] // 7) + 1
	  event["p53__dns__lookup__timestamp_yquarter"] = (event["p53__dns__lookup__timestamp_yday"] // 91) + 1
	end
	if event["p53__dns__lookup__timestamp_wday"] ~= nil then
	  event["p53__dns__lookup__timestamp_is_weekend"] = arr_has_value(weekends, event["p53__dns__lookup__timestamp_wday"])
	  event["p53__dns__lookup__timestamp_is_weekday"] = arr_has_value(weekdays, event["p53__dns__lookup__timestamp_wday"])
	end
	event["p53__dns__lookup__timestamp"] = event["p53.dns.lookup.timestamp"]
	event["53__dns__lookup__timestamp"] = event["53.dns.lookup.timestamp"]
	event["53__dns__lookup__timestamp_year"] = parse_timestamp(event["53.dns.lookup.timestamp"])["year"]
	event["53__dns__lookup__timestamp_month"] = parse_timestamp(event["53.dns.lookup.timestamp"])["month"]
	event["53__dns__lookup__timestamp_day"] = parse_timestamp(event["53.dns.lookup.timestamp"])["day"]
	event["53__dns__lookup__timestamp_hour"] = parse_timestamp(event["53.dns.lookup.timestamp"])["hour"]
	event["53__dns__lookup__timestamp_min"] = parse_timestamp(event["53.dns.lookup.timestamp"])["min"]
	event["53__dns__lookup__timestamp_sec"] = parse_timestamp(event["53.dns.lookup.timestamp"])["sec"]
	event["53__dns__lookup__timestamp_yday"] = parse_timestamp(event["53.dns.lookup.timestamp"])["yday"]
	event["53__dns__lookup__timestamp_wday"] = parse_timestamp(event["53.dns.lookup.timestamp"])["wday"]
	event["53__dns__lookup__timestamp_isdst"] = parse_timestamp(event["53.dns.lookup.timestamp"])["isdst"]
	if event["53__dns__lookup__timestamp_yday"] ~= nil then
	  event["53__dns__lookup__timestamp_yweek"] = (event["53__dns__lookup__timestamp_yday"] // 7) + 1
	  event["53__dns__lookup__timestamp_yquarter"] = (event["53__dns__lookup__timestamp_yday"] // 91) + 1
	end
	if event["53__dns__lookup__timestamp_wday"] ~= nil then
	  event["53__dns__lookup__timestamp_is_weekend"] = arr_has_value(weekends, event["53__dns__lookup__timestamp_wday"])
	  event["53__dns__lookup__timestamp_is_weekday"] = arr_has_value(weekdays, event["53__dns__lookup__timestamp_wday"])
	end
	event["53__dns__lookup__timestamp"] = event["53.dns.lookup.timestamp"]
	event["p110__pop3__starttls__tls__scts__timestamp_year"] = parse_timestamp(event["p110.pop3.starttls.tls.scts.timestamp"])["year"]
	event["p110__pop3__starttls__tls__scts__timestamp_month"] = parse_timestamp(event["p110.pop3.starttls.tls.scts.timestamp"])["month"]
	event["p110__pop3__starttls__tls__scts__timestamp_day"] = parse_timestamp(event["p110.pop3.starttls.tls.scts.timestamp"])["day"]
	event["p110__pop3__starttls__tls__scts__timestamp_hour"] = parse_timestamp(event["p110.pop3.starttls.tls.scts.timestamp"])["hour"]
	event["p110__pop3__starttls__tls__scts__timestamp_min"] = parse_timestamp(event["p110.pop3.starttls.tls.scts.timestamp"])["min"]
	event["p110__pop3__starttls__tls__scts__timestamp_sec"] = parse_timestamp(event["p110.pop3.starttls.tls.scts.timestamp"])["sec"]
	event["p110__pop3__starttls__tls__scts__timestamp_yday"] = parse_timestamp(event["p110.pop3.starttls.tls.scts.timestamp"])["yday"]
	event["p110__pop3__starttls__tls__scts__timestamp_wday"] = parse_timestamp(event["p110.pop3.starttls.tls.scts.timestamp"])["wday"]
	event["p110__pop3__starttls__tls__scts__timestamp_isdst"] = parse_timestamp(event["p110.pop3.starttls.tls.scts.timestamp"])["isdst"]
	if event["p110__pop3__starttls__tls__scts__timestamp_yday"] ~= nil then
	  event["p110__pop3__starttls__tls__scts__timestamp_yweek"] = (event["p110__pop3__starttls__tls__scts__timestamp_yday"] // 7) + 1
	  event["p110__pop3__starttls__tls__scts__timestamp_yquarter"] = (event["p110__pop3__starttls__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["p110__pop3__starttls__tls__scts__timestamp_wday"] ~= nil then
	  event["p110__pop3__starttls__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["p110__pop3__starttls__tls__scts__timestamp_wday"])
	  event["p110__pop3__starttls__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["p110__pop3__starttls__tls__scts__timestamp_wday"])
	end
	event["p110__pop3__starttls__tls__scts__timestamp"] = event["p110.pop3.starttls.tls.scts.timestamp"]
	event["110__pop3__starttls__tls__scts__timestamp"] = event["110.pop3.starttls.tls.scts.timestamp"]
	event["110__pop3__starttls__tls__scts__timestamp_year"] = parse_timestamp(event["110.pop3.starttls.tls.scts.timestamp"])["year"]
	event["110__pop3__starttls__tls__scts__timestamp_month"] = parse_timestamp(event["110.pop3.starttls.tls.scts.timestamp"])["month"]
	event["110__pop3__starttls__tls__scts__timestamp_day"] = parse_timestamp(event["110.pop3.starttls.tls.scts.timestamp"])["day"]
	event["110__pop3__starttls__tls__scts__timestamp_hour"] = parse_timestamp(event["110.pop3.starttls.tls.scts.timestamp"])["hour"]
	event["110__pop3__starttls__tls__scts__timestamp_min"] = parse_timestamp(event["110.pop3.starttls.tls.scts.timestamp"])["min"]
	event["110__pop3__starttls__tls__scts__timestamp_sec"] = parse_timestamp(event["110.pop3.starttls.tls.scts.timestamp"])["sec"]
	event["110__pop3__starttls__tls__scts__timestamp_yday"] = parse_timestamp(event["110.pop3.starttls.tls.scts.timestamp"])["yday"]
	event["110__pop3__starttls__tls__scts__timestamp_wday"] = parse_timestamp(event["110.pop3.starttls.tls.scts.timestamp"])["wday"]
	event["110__pop3__starttls__tls__scts__timestamp_isdst"] = parse_timestamp(event["110.pop3.starttls.tls.scts.timestamp"])["isdst"]
	if event["110__pop3__starttls__tls__scts__timestamp_yday"] ~= nil then
	  event["110__pop3__starttls__tls__scts__timestamp_yweek"] = (event["110__pop3__starttls__tls__scts__timestamp_yday"] // 7) + 1
	  event["110__pop3__starttls__tls__scts__timestamp_yquarter"] = (event["110__pop3__starttls__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["110__pop3__starttls__tls__scts__timestamp_wday"] ~= nil then
	  event["110__pop3__starttls__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["110__pop3__starttls__tls__scts__timestamp_wday"])
	  event["110__pop3__starttls__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["110__pop3__starttls__tls__scts__timestamp_wday"])
	end
	event["110__pop3__starttls__tls__scts__timestamp"] = event["110.pop3.starttls.tls.scts.timestamp"]
	event["p25__smtp__starttls__tls__scts__timestamp_year"] = parse_timestamp(event["p25.smtp.starttls.tls.scts.timestamp"])["year"]
	event["p25__smtp__starttls__tls__scts__timestamp_month"] = parse_timestamp(event["p25.smtp.starttls.tls.scts.timestamp"])["month"]
	event["p25__smtp__starttls__tls__scts__timestamp_day"] = parse_timestamp(event["p25.smtp.starttls.tls.scts.timestamp"])["day"]
	event["p25__smtp__starttls__tls__scts__timestamp_hour"] = parse_timestamp(event["p25.smtp.starttls.tls.scts.timestamp"])["hour"]
	event["p25__smtp__starttls__tls__scts__timestamp_min"] = parse_timestamp(event["p25.smtp.starttls.tls.scts.timestamp"])["min"]
	event["p25__smtp__starttls__tls__scts__timestamp_sec"] = parse_timestamp(event["p25.smtp.starttls.tls.scts.timestamp"])["sec"]
	event["p25__smtp__starttls__tls__scts__timestamp_yday"] = parse_timestamp(event["p25.smtp.starttls.tls.scts.timestamp"])["yday"]
	event["p25__smtp__starttls__tls__scts__timestamp_wday"] = parse_timestamp(event["p25.smtp.starttls.tls.scts.timestamp"])["wday"]
	event["p25__smtp__starttls__tls__scts__timestamp_isdst"] = parse_timestamp(event["p25.smtp.starttls.tls.scts.timestamp"])["isdst"]
	if event["p25__smtp__starttls__tls__scts__timestamp_yday"] ~= nil then
	  event["p25__smtp__starttls__tls__scts__timestamp_yweek"] = (event["p25__smtp__starttls__tls__scts__timestamp_yday"] // 7) + 1
	  event["p25__smtp__starttls__tls__scts__timestamp_yquarter"] = (event["p25__smtp__starttls__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["p25__smtp__starttls__tls__scts__timestamp_wday"] ~= nil then
	  event["p25__smtp__starttls__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["p25__smtp__starttls__tls__scts__timestamp_wday"])
	  event["p25__smtp__starttls__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["p25__smtp__starttls__tls__scts__timestamp_wday"])
	end
	event["p25__smtp__starttls__tls__scts__timestamp"] = event["p25.smtp.starttls.tls.scts.timestamp"]
	event["25__smtp__starttls__tls__scts__timestamp"] = event["25.smtp.starttls.tls.scts.timestamp"]
	event["25__smtp__starttls__tls__scts__timestamp_year"] = parse_timestamp(event["25.smtp.starttls.tls.scts.timestamp"])["year"]
	event["25__smtp__starttls__tls__scts__timestamp_month"] = parse_timestamp(event["25.smtp.starttls.tls.scts.timestamp"])["month"]
	event["25__smtp__starttls__tls__scts__timestamp_day"] = parse_timestamp(event["25.smtp.starttls.tls.scts.timestamp"])["day"]
	event["25__smtp__starttls__tls__scts__timestamp_hour"] = parse_timestamp(event["25.smtp.starttls.tls.scts.timestamp"])["hour"]
	event["25__smtp__starttls__tls__scts__timestamp_min"] = parse_timestamp(event["25.smtp.starttls.tls.scts.timestamp"])["min"]
	event["25__smtp__starttls__tls__scts__timestamp_sec"] = parse_timestamp(event["25.smtp.starttls.tls.scts.timestamp"])["sec"]
	event["25__smtp__starttls__tls__scts__timestamp_yday"] = parse_timestamp(event["25.smtp.starttls.tls.scts.timestamp"])["yday"]
	event["25__smtp__starttls__tls__scts__timestamp_wday"] = parse_timestamp(event["25.smtp.starttls.tls.scts.timestamp"])["wday"]
	event["25__smtp__starttls__tls__scts__timestamp_isdst"] = parse_timestamp(event["25.smtp.starttls.tls.scts.timestamp"])["isdst"]
	if event["25__smtp__starttls__tls__scts__timestamp_yday"] ~= nil then
	  event["25__smtp__starttls__tls__scts__timestamp_yweek"] = (event["25__smtp__starttls__tls__scts__timestamp_yday"] // 7) + 1
	  event["25__smtp__starttls__tls__scts__timestamp_yquarter"] = (event["25__smtp__starttls__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["25__smtp__starttls__tls__scts__timestamp_wday"] ~= nil then
	  event["25__smtp__starttls__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["25__smtp__starttls__tls__scts__timestamp_wday"])
	  event["25__smtp__starttls__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["25__smtp__starttls__tls__scts__timestamp_wday"])
	end
	event["25__smtp__starttls__tls__scts__timestamp"] = event["25.smtp.starttls.tls.scts.timestamp"]
	event["p995__pop3s__tls__tls__scts__timestamp_year"] = parse_timestamp(event["p995.pop3s.tls.tls.scts.timestamp"])["year"]
	event["p995__pop3s__tls__tls__scts__timestamp_month"] = parse_timestamp(event["p995.pop3s.tls.tls.scts.timestamp"])["month"]
	event["p995__pop3s__tls__tls__scts__timestamp_day"] = parse_timestamp(event["p995.pop3s.tls.tls.scts.timestamp"])["day"]
	event["p995__pop3s__tls__tls__scts__timestamp_hour"] = parse_timestamp(event["p995.pop3s.tls.tls.scts.timestamp"])["hour"]
	event["p995__pop3s__tls__tls__scts__timestamp_min"] = parse_timestamp(event["p995.pop3s.tls.tls.scts.timestamp"])["min"]
	event["p995__pop3s__tls__tls__scts__timestamp_sec"] = parse_timestamp(event["p995.pop3s.tls.tls.scts.timestamp"])["sec"]
	event["p995__pop3s__tls__tls__scts__timestamp_yday"] = parse_timestamp(event["p995.pop3s.tls.tls.scts.timestamp"])["yday"]
	event["p995__pop3s__tls__tls__scts__timestamp_wday"] = parse_timestamp(event["p995.pop3s.tls.tls.scts.timestamp"])["wday"]
	event["p995__pop3s__tls__tls__scts__timestamp_isdst"] = parse_timestamp(event["p995.pop3s.tls.tls.scts.timestamp"])["isdst"]
	if event["p995__pop3s__tls__tls__scts__timestamp_yday"] ~= nil then
	  event["p995__pop3s__tls__tls__scts__timestamp_yweek"] = (event["p995__pop3s__tls__tls__scts__timestamp_yday"] // 7) + 1
	  event["p995__pop3s__tls__tls__scts__timestamp_yquarter"] = (event["p995__pop3s__tls__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["p995__pop3s__tls__tls__scts__timestamp_wday"] ~= nil then
	  event["p995__pop3s__tls__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["p995__pop3s__tls__tls__scts__timestamp_wday"])
	  event["p995__pop3s__tls__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["p995__pop3s__tls__tls__scts__timestamp_wday"])
	end
	event["p995__pop3s__tls__tls__scts__timestamp"] = event["p995.pop3s.tls.tls.scts.timestamp"]
	event["995__pop3s__tls__tls__scts__timestamp"] = event["995.pop3s.tls.tls.scts.timestamp"]
	event["995__pop3s__tls__tls__scts__timestamp_year"] = parse_timestamp(event["995.pop3s.tls.tls.scts.timestamp"])["year"]
	event["995__pop3s__tls__tls__scts__timestamp_month"] = parse_timestamp(event["995.pop3s.tls.tls.scts.timestamp"])["month"]
	event["995__pop3s__tls__tls__scts__timestamp_day"] = parse_timestamp(event["995.pop3s.tls.tls.scts.timestamp"])["day"]
	event["995__pop3s__tls__tls__scts__timestamp_hour"] = parse_timestamp(event["995.pop3s.tls.tls.scts.timestamp"])["hour"]
	event["995__pop3s__tls__tls__scts__timestamp_min"] = parse_timestamp(event["995.pop3s.tls.tls.scts.timestamp"])["min"]
	event["995__pop3s__tls__tls__scts__timestamp_sec"] = parse_timestamp(event["995.pop3s.tls.tls.scts.timestamp"])["sec"]
	event["995__pop3s__tls__tls__scts__timestamp_yday"] = parse_timestamp(event["995.pop3s.tls.tls.scts.timestamp"])["yday"]
	event["995__pop3s__tls__tls__scts__timestamp_wday"] = parse_timestamp(event["995.pop3s.tls.tls.scts.timestamp"])["wday"]
	event["995__pop3s__tls__tls__scts__timestamp_isdst"] = parse_timestamp(event["995.pop3s.tls.tls.scts.timestamp"])["isdst"]
	if event["995__pop3s__tls__tls__scts__timestamp_yday"] ~= nil then
	  event["995__pop3s__tls__tls__scts__timestamp_yweek"] = (event["995__pop3s__tls__tls__scts__timestamp_yday"] // 7) + 1
	  event["995__pop3s__tls__tls__scts__timestamp_yquarter"] = (event["995__pop3s__tls__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["995__pop3s__tls__tls__scts__timestamp_wday"] ~= nil then
	  event["995__pop3s__tls__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["995__pop3s__tls__tls__scts__timestamp_wday"])
	  event["995__pop3s__tls__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["995__pop3s__tls__tls__scts__timestamp_wday"])
	end
	event["995__pop3s__tls__tls__scts__timestamp"] = event["995.pop3s.tls.tls.scts.timestamp"]
	event["p587__smtp__starttls__tls__scts__timestamp_year"] = parse_timestamp(event["p587.smtp.starttls.tls.scts.timestamp"])["year"]
	event["p587__smtp__starttls__tls__scts__timestamp_month"] = parse_timestamp(event["p587.smtp.starttls.tls.scts.timestamp"])["month"]
	event["p587__smtp__starttls__tls__scts__timestamp_day"] = parse_timestamp(event["p587.smtp.starttls.tls.scts.timestamp"])["day"]
	event["p587__smtp__starttls__tls__scts__timestamp_hour"] = parse_timestamp(event["p587.smtp.starttls.tls.scts.timestamp"])["hour"]
	event["p587__smtp__starttls__tls__scts__timestamp_min"] = parse_timestamp(event["p587.smtp.starttls.tls.scts.timestamp"])["min"]
	event["p587__smtp__starttls__tls__scts__timestamp_sec"] = parse_timestamp(event["p587.smtp.starttls.tls.scts.timestamp"])["sec"]
	event["p587__smtp__starttls__tls__scts__timestamp_yday"] = parse_timestamp(event["p587.smtp.starttls.tls.scts.timestamp"])["yday"]
	event["p587__smtp__starttls__tls__scts__timestamp_wday"] = parse_timestamp(event["p587.smtp.starttls.tls.scts.timestamp"])["wday"]
	event["p587__smtp__starttls__tls__scts__timestamp_isdst"] = parse_timestamp(event["p587.smtp.starttls.tls.scts.timestamp"])["isdst"]
	if event["p587__smtp__starttls__tls__scts__timestamp_yday"] ~= nil then
	  event["p587__smtp__starttls__tls__scts__timestamp_yweek"] = (event["p587__smtp__starttls__tls__scts__timestamp_yday"] // 7) + 1
	  event["p587__smtp__starttls__tls__scts__timestamp_yquarter"] = (event["p587__smtp__starttls__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["p587__smtp__starttls__tls__scts__timestamp_wday"] ~= nil then
	  event["p587__smtp__starttls__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["p587__smtp__starttls__tls__scts__timestamp_wday"])
	  event["p587__smtp__starttls__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["p587__smtp__starttls__tls__scts__timestamp_wday"])
	end
	event["p587__smtp__starttls__tls__scts__timestamp"] = event["p587.smtp.starttls.tls.scts.timestamp"]
	event["587__smtp__starttls__tls__scts__timestamp"] = event["587.smtp.starttls.tls.scts.timestamp"]
	event["587__smtp__starttls__tls__scts__timestamp_year"] = parse_timestamp(event["587.smtp.starttls.tls.scts.timestamp"])["year"]
	event["587__smtp__starttls__tls__scts__timestamp_month"] = parse_timestamp(event["587.smtp.starttls.tls.scts.timestamp"])["month"]
	event["587__smtp__starttls__tls__scts__timestamp_day"] = parse_timestamp(event["587.smtp.starttls.tls.scts.timestamp"])["day"]
	event["587__smtp__starttls__tls__scts__timestamp_hour"] = parse_timestamp(event["587.smtp.starttls.tls.scts.timestamp"])["hour"]
	event["587__smtp__starttls__tls__scts__timestamp_min"] = parse_timestamp(event["587.smtp.starttls.tls.scts.timestamp"])["min"]
	event["587__smtp__starttls__tls__scts__timestamp_sec"] = parse_timestamp(event["587.smtp.starttls.tls.scts.timestamp"])["sec"]
	event["587__smtp__starttls__tls__scts__timestamp_yday"] = parse_timestamp(event["587.smtp.starttls.tls.scts.timestamp"])["yday"]
	event["587__smtp__starttls__tls__scts__timestamp_wday"] = parse_timestamp(event["587.smtp.starttls.tls.scts.timestamp"])["wday"]
	event["587__smtp__starttls__tls__scts__timestamp_isdst"] = parse_timestamp(event["587.smtp.starttls.tls.scts.timestamp"])["isdst"]
	if event["587__smtp__starttls__tls__scts__timestamp_yday"] ~= nil then
	  event["587__smtp__starttls__tls__scts__timestamp_yweek"] = (event["587__smtp__starttls__tls__scts__timestamp_yday"] // 7) + 1
	  event["587__smtp__starttls__tls__scts__timestamp_yquarter"] = (event["587__smtp__starttls__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["587__smtp__starttls__tls__scts__timestamp_wday"] ~= nil then
	  event["587__smtp__starttls__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["587__smtp__starttls__tls__scts__timestamp_wday"])
	  event["587__smtp__starttls__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["587__smtp__starttls__tls__scts__timestamp_wday"])
	end
	event["587__smtp__starttls__tls__scts__timestamp"] = event["587.smtp.starttls.tls.scts.timestamp"]
	event["p143__imap__starttls__tls__scts__timestamp_year"] = parse_timestamp(event["p143.imap.starttls.tls.scts.timestamp"])["year"]
	event["p143__imap__starttls__tls__scts__timestamp_month"] = parse_timestamp(event["p143.imap.starttls.tls.scts.timestamp"])["month"]
	event["p143__imap__starttls__tls__scts__timestamp_day"] = parse_timestamp(event["p143.imap.starttls.tls.scts.timestamp"])["day"]
	event["p143__imap__starttls__tls__scts__timestamp_hour"] = parse_timestamp(event["p143.imap.starttls.tls.scts.timestamp"])["hour"]
	event["p143__imap__starttls__tls__scts__timestamp_min"] = parse_timestamp(event["p143.imap.starttls.tls.scts.timestamp"])["min"]
	event["p143__imap__starttls__tls__scts__timestamp_sec"] = parse_timestamp(event["p143.imap.starttls.tls.scts.timestamp"])["sec"]
	event["p143__imap__starttls__tls__scts__timestamp_yday"] = parse_timestamp(event["p143.imap.starttls.tls.scts.timestamp"])["yday"]
	event["p143__imap__starttls__tls__scts__timestamp_wday"] = parse_timestamp(event["p143.imap.starttls.tls.scts.timestamp"])["wday"]
	event["p143__imap__starttls__tls__scts__timestamp_isdst"] = parse_timestamp(event["p143.imap.starttls.tls.scts.timestamp"])["isdst"]
	if event["p143__imap__starttls__tls__scts__timestamp_yday"] ~= nil then
	  event["p143__imap__starttls__tls__scts__timestamp_yweek"] = (event["p143__imap__starttls__tls__scts__timestamp_yday"] // 7) + 1
	  event["p143__imap__starttls__tls__scts__timestamp_yquarter"] = (event["p143__imap__starttls__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["p143__imap__starttls__tls__scts__timestamp_wday"] ~= nil then
	  event["p143__imap__starttls__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["p143__imap__starttls__tls__scts__timestamp_wday"])
	  event["p143__imap__starttls__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["p143__imap__starttls__tls__scts__timestamp_wday"])
	end
	event["p143__imap__starttls__tls__scts__timestamp"] = event["p143.imap.starttls.tls.scts.timestamp"]
	event["143__imap__starttls__tls__scts__timestamp"] = event["143.imap.starttls.tls.scts.timestamp"]
	event["143__imap__starttls__tls__scts__timestamp_year"] = parse_timestamp(event["143.imap.starttls.tls.scts.timestamp"])["year"]
	event["143__imap__starttls__tls__scts__timestamp_month"] = parse_timestamp(event["143.imap.starttls.tls.scts.timestamp"])["month"]
	event["143__imap__starttls__tls__scts__timestamp_day"] = parse_timestamp(event["143.imap.starttls.tls.scts.timestamp"])["day"]
	event["143__imap__starttls__tls__scts__timestamp_hour"] = parse_timestamp(event["143.imap.starttls.tls.scts.timestamp"])["hour"]
	event["143__imap__starttls__tls__scts__timestamp_min"] = parse_timestamp(event["143.imap.starttls.tls.scts.timestamp"])["min"]
	event["143__imap__starttls__tls__scts__timestamp_sec"] = parse_timestamp(event["143.imap.starttls.tls.scts.timestamp"])["sec"]
	event["143__imap__starttls__tls__scts__timestamp_yday"] = parse_timestamp(event["143.imap.starttls.tls.scts.timestamp"])["yday"]
	event["143__imap__starttls__tls__scts__timestamp_wday"] = parse_timestamp(event["143.imap.starttls.tls.scts.timestamp"])["wday"]
	event["143__imap__starttls__tls__scts__timestamp_isdst"] = parse_timestamp(event["143.imap.starttls.tls.scts.timestamp"])["isdst"]
	if event["143__imap__starttls__tls__scts__timestamp_yday"] ~= nil then
	  event["143__imap__starttls__tls__scts__timestamp_yweek"] = (event["143__imap__starttls__tls__scts__timestamp_yday"] // 7) + 1
	  event["143__imap__starttls__tls__scts__timestamp_yquarter"] = (event["143__imap__starttls__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["143__imap__starttls__tls__scts__timestamp_wday"] ~= nil then
	  event["143__imap__starttls__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["143__imap__starttls__tls__scts__timestamp_wday"])
	  event["143__imap__starttls__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["143__imap__starttls__tls__scts__timestamp_wday"])
	end
	event["143__imap__starttls__tls__scts__timestamp"] = event["143.imap.starttls.tls.scts.timestamp"]
	event["p993__imaps__tls__tls__scts__timestamp_year"] = parse_timestamp(event["p993.imaps.tls.tls.scts.timestamp"])["year"]
	event["p993__imaps__tls__tls__scts__timestamp_month"] = parse_timestamp(event["p993.imaps.tls.tls.scts.timestamp"])["month"]
	event["p993__imaps__tls__tls__scts__timestamp_day"] = parse_timestamp(event["p993.imaps.tls.tls.scts.timestamp"])["day"]
	event["p993__imaps__tls__tls__scts__timestamp_hour"] = parse_timestamp(event["p993.imaps.tls.tls.scts.timestamp"])["hour"]
	event["p993__imaps__tls__tls__scts__timestamp_min"] = parse_timestamp(event["p993.imaps.tls.tls.scts.timestamp"])["min"]
	event["p993__imaps__tls__tls__scts__timestamp_sec"] = parse_timestamp(event["p993.imaps.tls.tls.scts.timestamp"])["sec"]
	event["p993__imaps__tls__tls__scts__timestamp_yday"] = parse_timestamp(event["p993.imaps.tls.tls.scts.timestamp"])["yday"]
	event["p993__imaps__tls__tls__scts__timestamp_wday"] = parse_timestamp(event["p993.imaps.tls.tls.scts.timestamp"])["wday"]
	event["p993__imaps__tls__tls__scts__timestamp_isdst"] = parse_timestamp(event["p993.imaps.tls.tls.scts.timestamp"])["isdst"]
	if event["p993__imaps__tls__tls__scts__timestamp_yday"] ~= nil then
	  event["p993__imaps__tls__tls__scts__timestamp_yweek"] = (event["p993__imaps__tls__tls__scts__timestamp_yday"] // 7) + 1
	  event["p993__imaps__tls__tls__scts__timestamp_yquarter"] = (event["p993__imaps__tls__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["p993__imaps__tls__tls__scts__timestamp_wday"] ~= nil then
	  event["p993__imaps__tls__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["p993__imaps__tls__tls__scts__timestamp_wday"])
	  event["p993__imaps__tls__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["p993__imaps__tls__tls__scts__timestamp_wday"])
	end
	event["p993__imaps__tls__tls__scts__timestamp"] = event["p993.imaps.tls.tls.scts.timestamp"]
	event["993__imaps__tls__tls__scts__timestamp"] = event["993.imaps.tls.tls.scts.timestamp"]
	event["993__imaps__tls__tls__scts__timestamp_year"] = parse_timestamp(event["993.imaps.tls.tls.scts.timestamp"])["year"]
	event["993__imaps__tls__tls__scts__timestamp_month"] = parse_timestamp(event["993.imaps.tls.tls.scts.timestamp"])["month"]
	event["993__imaps__tls__tls__scts__timestamp_day"] = parse_timestamp(event["993.imaps.tls.tls.scts.timestamp"])["day"]
	event["993__imaps__tls__tls__scts__timestamp_hour"] = parse_timestamp(event["993.imaps.tls.tls.scts.timestamp"])["hour"]
	event["993__imaps__tls__tls__scts__timestamp_min"] = parse_timestamp(event["993.imaps.tls.tls.scts.timestamp"])["min"]
	event["993__imaps__tls__tls__scts__timestamp_sec"] = parse_timestamp(event["993.imaps.tls.tls.scts.timestamp"])["sec"]
	event["993__imaps__tls__tls__scts__timestamp_yday"] = parse_timestamp(event["993.imaps.tls.tls.scts.timestamp"])["yday"]
	event["993__imaps__tls__tls__scts__timestamp_wday"] = parse_timestamp(event["993.imaps.tls.tls.scts.timestamp"])["wday"]
	event["993__imaps__tls__tls__scts__timestamp_isdst"] = parse_timestamp(event["993.imaps.tls.tls.scts.timestamp"])["isdst"]
	if event["993__imaps__tls__tls__scts__timestamp_yday"] ~= nil then
	  event["993__imaps__tls__tls__scts__timestamp_yweek"] = (event["993__imaps__tls__tls__scts__timestamp_yday"] // 7) + 1
	  event["993__imaps__tls__tls__scts__timestamp_yquarter"] = (event["993__imaps__tls__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["993__imaps__tls__tls__scts__timestamp_wday"] ~= nil then
	  event["993__imaps__tls__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["993__imaps__tls__tls__scts__timestamp_wday"])
	  event["993__imaps__tls__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["993__imaps__tls__tls__scts__timestamp_wday"])
	end
	event["993__imaps__tls__tls__scts__timestamp"] = event["993.imaps.tls.tls.scts.timestamp"]
	event["p443__https__tls__scts__timestamp_year"] = parse_timestamp(event["p443.https.tls.scts.timestamp"])["year"]
	event["p443__https__tls__scts__timestamp_month"] = parse_timestamp(event["p443.https.tls.scts.timestamp"])["month"]
	event["p443__https__tls__scts__timestamp_day"] = parse_timestamp(event["p443.https.tls.scts.timestamp"])["day"]
	event["p443__https__tls__scts__timestamp_hour"] = parse_timestamp(event["p443.https.tls.scts.timestamp"])["hour"]
	event["p443__https__tls__scts__timestamp_min"] = parse_timestamp(event["p443.https.tls.scts.timestamp"])["min"]
	event["p443__https__tls__scts__timestamp_sec"] = parse_timestamp(event["p443.https.tls.scts.timestamp"])["sec"]
	event["p443__https__tls__scts__timestamp_yday"] = parse_timestamp(event["p443.https.tls.scts.timestamp"])["yday"]
	event["p443__https__tls__scts__timestamp_wday"] = parse_timestamp(event["p443.https.tls.scts.timestamp"])["wday"]
	event["p443__https__tls__scts__timestamp_isdst"] = parse_timestamp(event["p443.https.tls.scts.timestamp"])["isdst"]
	if event["p443__https__tls__scts__timestamp_yday"] ~= nil then
	  event["p443__https__tls__scts__timestamp_yweek"] = (event["p443__https__tls__scts__timestamp_yday"] // 7) + 1
	  event["p443__https__tls__scts__timestamp_yquarter"] = (event["p443__https__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["p443__https__tls__scts__timestamp_wday"] ~= nil then
	  event["p443__https__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["p443__https__tls__scts__timestamp_wday"])
	  event["p443__https__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["p443__https__tls__scts__timestamp_wday"])
	end
	event["p443__https__tls__scts__timestamp"] = event["p443.https.tls.scts.timestamp"]
	event["443__https__tls__scts__timestamp"] = event["443.https.tls.scts.timestamp"]
	event["443__https__tls__scts__timestamp_year"] = parse_timestamp(event["443.https.tls.scts.timestamp"])["year"]
	event["443__https__tls__scts__timestamp_month"] = parse_timestamp(event["443.https.tls.scts.timestamp"])["month"]
	event["443__https__tls__scts__timestamp_day"] = parse_timestamp(event["443.https.tls.scts.timestamp"])["day"]
	event["443__https__tls__scts__timestamp_hour"] = parse_timestamp(event["443.https.tls.scts.timestamp"])["hour"]
	event["443__https__tls__scts__timestamp_min"] = parse_timestamp(event["443.https.tls.scts.timestamp"])["min"]
	event["443__https__tls__scts__timestamp_sec"] = parse_timestamp(event["443.https.tls.scts.timestamp"])["sec"]
	event["443__https__tls__scts__timestamp_yday"] = parse_timestamp(event["443.https.tls.scts.timestamp"])["yday"]
	event["443__https__tls__scts__timestamp_wday"] = parse_timestamp(event["443.https.tls.scts.timestamp"])["wday"]
	event["443__https__tls__scts__timestamp_isdst"] = parse_timestamp(event["443.https.tls.scts.timestamp"])["isdst"]
	if event["443__https__tls__scts__timestamp_yday"] ~= nil then
	  event["443__https__tls__scts__timestamp_yweek"] = (event["443__https__tls__scts__timestamp_yday"] // 7) + 1
	  event["443__https__tls__scts__timestamp_yquarter"] = (event["443__https__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["443__https__tls__scts__timestamp_wday"] ~= nil then
	  event["443__https__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["443__https__tls__scts__timestamp_wday"])
	  event["443__https__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["443__https__tls__scts__timestamp_wday"])
	end
	event["443__https__tls__scts__timestamp"] = event["443.https.tls.scts.timestamp"]
	event["p7547__cwmp__get__timestamp_year"] = parse_timestamp(event["p7547.cwmp.get.timestamp"])["year"]
	event["p7547__cwmp__get__timestamp_month"] = parse_timestamp(event["p7547.cwmp.get.timestamp"])["month"]
	event["p7547__cwmp__get__timestamp_day"] = parse_timestamp(event["p7547.cwmp.get.timestamp"])["day"]
	event["p7547__cwmp__get__timestamp_hour"] = parse_timestamp(event["p7547.cwmp.get.timestamp"])["hour"]
	event["p7547__cwmp__get__timestamp_min"] = parse_timestamp(event["p7547.cwmp.get.timestamp"])["min"]
	event["p7547__cwmp__get__timestamp_sec"] = parse_timestamp(event["p7547.cwmp.get.timestamp"])["sec"]
	event["p7547__cwmp__get__timestamp_yday"] = parse_timestamp(event["p7547.cwmp.get.timestamp"])["yday"]
	event["p7547__cwmp__get__timestamp_wday"] = parse_timestamp(event["p7547.cwmp.get.timestamp"])["wday"]
	event["p7547__cwmp__get__timestamp_isdst"] = parse_timestamp(event["p7547.cwmp.get.timestamp"])["isdst"]
	if event["p7547__cwmp__get__timestamp_yday"] ~= nil then
	  event["p7547__cwmp__get__timestamp_yweek"] = (event["p7547__cwmp__get__timestamp_yday"] // 7) + 1
	  event["p7547__cwmp__get__timestamp_yquarter"] = (event["p7547__cwmp__get__timestamp_yday"] // 91) + 1
	end
	if event["p7547__cwmp__get__timestamp_wday"] ~= nil then
	  event["p7547__cwmp__get__timestamp_is_weekend"] = arr_has_value(weekends, event["p7547__cwmp__get__timestamp_wday"])
	  event["p7547__cwmp__get__timestamp_is_weekday"] = arr_has_value(weekdays, event["p7547__cwmp__get__timestamp_wday"])
	end
	event["p7547__cwmp__get__timestamp"] = event["p7547.cwmp.get.timestamp"]
	event["7547__cwmp__get__timestamp"] = event["7547.cwmp.get.timestamp"]
	event["7547__cwmp__get__timestamp_year"] = parse_timestamp(event["7547.cwmp.get.timestamp"])["year"]
	event["7547__cwmp__get__timestamp_month"] = parse_timestamp(event["7547.cwmp.get.timestamp"])["month"]
	event["7547__cwmp__get__timestamp_day"] = parse_timestamp(event["7547.cwmp.get.timestamp"])["day"]
	event["7547__cwmp__get__timestamp_hour"] = parse_timestamp(event["7547.cwmp.get.timestamp"])["hour"]
	event["7547__cwmp__get__timestamp_min"] = parse_timestamp(event["7547.cwmp.get.timestamp"])["min"]
	event["7547__cwmp__get__timestamp_sec"] = parse_timestamp(event["7547.cwmp.get.timestamp"])["sec"]
	event["7547__cwmp__get__timestamp_yday"] = parse_timestamp(event["7547.cwmp.get.timestamp"])["yday"]
	event["7547__cwmp__get__timestamp_wday"] = parse_timestamp(event["7547.cwmp.get.timestamp"])["wday"]
	event["7547__cwmp__get__timestamp_isdst"] = parse_timestamp(event["7547.cwmp.get.timestamp"])["isdst"]
	if event["7547__cwmp__get__timestamp_yday"] ~= nil then
	  event["7547__cwmp__get__timestamp_yweek"] = (event["7547__cwmp__get__timestamp_yday"] // 7) + 1
	  event["7547__cwmp__get__timestamp_yquarter"] = (event["7547__cwmp__get__timestamp_yday"] // 91) + 1
	end
	if event["7547__cwmp__get__timestamp_wday"] ~= nil then
	  event["7547__cwmp__get__timestamp_is_weekend"] = arr_has_value(weekends, event["7547__cwmp__get__timestamp_wday"])
	  event["7547__cwmp__get__timestamp_is_weekday"] = arr_has_value(weekdays, event["7547__cwmp__get__timestamp_wday"])
	end
	event["7547__cwmp__get__timestamp"] = event["7547.cwmp.get.timestamp"]
	event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_year"] = parse_timestamp(event["p22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["year"]
	event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_month"] = parse_timestamp(event["p22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["month"]
	event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_day"] = parse_timestamp(event["p22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["day"]
	event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_hour"] = parse_timestamp(event["p22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["hour"]
	event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_min"] = parse_timestamp(event["p22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["min"]
	event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_sec"] = parse_timestamp(event["p22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["sec"]
	event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_yday"] = parse_timestamp(event["p22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["yday"]
	event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_wday"] = parse_timestamp(event["p22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["wday"]
	event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_isdst"] = parse_timestamp(event["p22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["isdst"]
	if event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_yday"] ~= nil then
	  event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_yweek"] = (event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_yday"] // 7) + 1
	  event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_yquarter"] = (event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_yday"] // 91) + 1
	end
	if event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_wday"] ~= nil then
	  event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_is_weekend"] = arr_has_value(weekends, event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_wday"])
	  event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_is_weekday"] = arr_has_value(weekdays, event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_wday"])
	end
	event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before"] = event["p22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_before"]
	event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before"] = event["22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_before"]
	event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_year"] = parse_timestamp(event["22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["year"]
	event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_month"] = parse_timestamp(event["22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["month"]
	event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_day"] = parse_timestamp(event["22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["day"]
	event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_hour"] = parse_timestamp(event["22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["hour"]
	event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_min"] = parse_timestamp(event["22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["min"]
	event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_sec"] = parse_timestamp(event["22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["sec"]
	event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_yday"] = parse_timestamp(event["22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["yday"]
	event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_wday"] = parse_timestamp(event["22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["wday"]
	event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_isdst"] = parse_timestamp(event["22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["isdst"]
	if event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_yday"] ~= nil then
	  event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_yweek"] = (event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_yday"] // 7) + 1
	  event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_yquarter"] = (event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_yday"] // 91) + 1
	end
	if event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_wday"] ~= nil then
	  event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_is_weekend"] = arr_has_value(weekends, event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_wday"])
	  event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_is_weekday"] = arr_has_value(weekdays, event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before_wday"])
	end
	event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_before"] = event["22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_before"]
	event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_year"] = parse_timestamp(event["p22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["year"]
	event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_month"] = parse_timestamp(event["p22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["month"]
	event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_day"] = parse_timestamp(event["p22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["day"]
	event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_hour"] = parse_timestamp(event["p22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["hour"]
	event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_min"] = parse_timestamp(event["p22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["min"]
	event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_sec"] = parse_timestamp(event["p22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["sec"]
	event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_yday"] = parse_timestamp(event["p22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["yday"]
	event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_wday"] = parse_timestamp(event["p22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["wday"]
	event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_isdst"] = parse_timestamp(event["p22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["isdst"]
	if event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_yday"] ~= nil then
	  event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_yweek"] = (event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_yday"] // 7) + 1
	  event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_yquarter"] = (event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_yday"] // 91) + 1
	end
	if event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_wday"] ~= nil then
	  event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_is_weekend"] = arr_has_value(weekends, event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_wday"])
	  event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_is_weekday"] = arr_has_value(weekdays, event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_wday"])
	end
	event["p22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after"] = event["p22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_after"]
	event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after"] = event["22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_after"]
	event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_year"] = parse_timestamp(event["22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["year"]
	event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_month"] = parse_timestamp(event["22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["month"]
	event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_day"] = parse_timestamp(event["22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["day"]
	event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_hour"] = parse_timestamp(event["22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["hour"]
	event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_min"] = parse_timestamp(event["22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["min"]
	event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_sec"] = parse_timestamp(event["22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["sec"]
	event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_yday"] = parse_timestamp(event["22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["yday"]
	event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_wday"] = parse_timestamp(event["22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["wday"]
	event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_isdst"] = parse_timestamp(event["22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["isdst"]
	if event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_yday"] ~= nil then
	  event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_yweek"] = (event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_yday"] // 7) + 1
	  event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_yquarter"] = (event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_yday"] // 91) + 1
	end
	if event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_wday"] ~= nil then
	  event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_is_weekend"] = arr_has_value(weekends, event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_wday"])
	  event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_is_weekday"] = arr_has_value(weekdays, event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after_wday"])
	end
	event["22__ssh__banner__dh_key_exchange__server_host_key__certkey_public_key__validity__valid_after"] = event["22.ssh.banner.dh_key_exchange.server_host_key.certkey_public_key.validity.valid_after"]
	event["p22__ssh__v2__timestamp_year"] = parse_timestamp(event["p22.ssh.v2.timestamp"])["year"]
	event["p22__ssh__v2__timestamp_month"] = parse_timestamp(event["p22.ssh.v2.timestamp"])["month"]
	event["p22__ssh__v2__timestamp_day"] = parse_timestamp(event["p22.ssh.v2.timestamp"])["day"]
	event["p22__ssh__v2__timestamp_hour"] = parse_timestamp(event["p22.ssh.v2.timestamp"])["hour"]
	event["p22__ssh__v2__timestamp_min"] = parse_timestamp(event["p22.ssh.v2.timestamp"])["min"]
	event["p22__ssh__v2__timestamp_sec"] = parse_timestamp(event["p22.ssh.v2.timestamp"])["sec"]
	event["p22__ssh__v2__timestamp_yday"] = parse_timestamp(event["p22.ssh.v2.timestamp"])["yday"]
	event["p22__ssh__v2__timestamp_wday"] = parse_timestamp(event["p22.ssh.v2.timestamp"])["wday"]
	event["p22__ssh__v2__timestamp_isdst"] = parse_timestamp(event["p22.ssh.v2.timestamp"])["isdst"]
	if event["p22__ssh__v2__timestamp_yday"] ~= nil then
	  event["p22__ssh__v2__timestamp_yweek"] = (event["p22__ssh__v2__timestamp_yday"] // 7) + 1
	  event["p22__ssh__v2__timestamp_yquarter"] = (event["p22__ssh__v2__timestamp_yday"] // 91) + 1
	end
	if event["p22__ssh__v2__timestamp_wday"] ~= nil then
	  event["p22__ssh__v2__timestamp_is_weekend"] = arr_has_value(weekends, event["p22__ssh__v2__timestamp_wday"])
	  event["p22__ssh__v2__timestamp_is_weekday"] = arr_has_value(weekdays, event["p22__ssh__v2__timestamp_wday"])
	end
	event["p22__ssh__v2__timestamp"] = event["p22.ssh.v2.timestamp"]
	event["22__ssh__v2__timestamp"] = event["22.ssh.v2.timestamp"]
	event["22__ssh__v2__timestamp_year"] = parse_timestamp(event["22.ssh.v2.timestamp"])["year"]
	event["22__ssh__v2__timestamp_month"] = parse_timestamp(event["22.ssh.v2.timestamp"])["month"]
	event["22__ssh__v2__timestamp_day"] = parse_timestamp(event["22.ssh.v2.timestamp"])["day"]
	event["22__ssh__v2__timestamp_hour"] = parse_timestamp(event["22.ssh.v2.timestamp"])["hour"]
	event["22__ssh__v2__timestamp_min"] = parse_timestamp(event["22.ssh.v2.timestamp"])["min"]
	event["22__ssh__v2__timestamp_sec"] = parse_timestamp(event["22.ssh.v2.timestamp"])["sec"]
	event["22__ssh__v2__timestamp_yday"] = parse_timestamp(event["22.ssh.v2.timestamp"])["yday"]
	event["22__ssh__v2__timestamp_wday"] = parse_timestamp(event["22.ssh.v2.timestamp"])["wday"]
	event["22__ssh__v2__timestamp_isdst"] = parse_timestamp(event["22.ssh.v2.timestamp"])["isdst"]
	if event["22__ssh__v2__timestamp_yday"] ~= nil then
	  event["22__ssh__v2__timestamp_yweek"] = (event["22__ssh__v2__timestamp_yday"] // 7) + 1
	  event["22__ssh__v2__timestamp_yquarter"] = (event["22__ssh__v2__timestamp_yday"] // 91) + 1
	end
	if event["22__ssh__v2__timestamp_wday"] ~= nil then
	  event["22__ssh__v2__timestamp_is_weekend"] = arr_has_value(weekends, event["22__ssh__v2__timestamp_wday"])
	  event["22__ssh__v2__timestamp_is_weekday"] = arr_has_value(weekdays, event["22__ssh__v2__timestamp_wday"])
	end
	event["22__ssh__v2__timestamp"] = event["22.ssh.v2.timestamp"]
	event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_year"] = parse_timestamp(event["p22.ssh.v2.server_host_key.certkey_public_key.validity.valid_before"])["year"]
	event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_month"] = parse_timestamp(event["p22.ssh.v2.server_host_key.certkey_public_key.validity.valid_before"])["month"]
	event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_day"] = parse_timestamp(event["p22.ssh.v2.server_host_key.certkey_public_key.validity.valid_before"])["day"]
	event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_hour"] = parse_timestamp(event["p22.ssh.v2.server_host_key.certkey_public_key.validity.valid_before"])["hour"]
	event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_min"] = parse_timestamp(event["p22.ssh.v2.server_host_key.certkey_public_key.validity.valid_before"])["min"]
	event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_sec"] = parse_timestamp(event["p22.ssh.v2.server_host_key.certkey_public_key.validity.valid_before"])["sec"]
	event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_yday"] = parse_timestamp(event["p22.ssh.v2.server_host_key.certkey_public_key.validity.valid_before"])["yday"]
	event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_wday"] = parse_timestamp(event["p22.ssh.v2.server_host_key.certkey_public_key.validity.valid_before"])["wday"]
	event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_isdst"] = parse_timestamp(event["p22.ssh.v2.server_host_key.certkey_public_key.validity.valid_before"])["isdst"]
	if event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_yday"] ~= nil then
	  event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_yweek"] = (event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_yday"] // 7) + 1
	  event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_yquarter"] = (event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_yday"] // 91) + 1
	end
	if event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_wday"] ~= nil then
	  event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_is_weekend"] = arr_has_value(weekends, event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_wday"])
	  event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_is_weekday"] = arr_has_value(weekdays, event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_wday"])
	end
	event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before"] = event["p22.ssh.v2.server_host_key.certkey_public_key.validity.valid_before"]
	event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before"] = event["22.ssh.v2.server_host_key.certkey_public_key.validity.valid_before"]
	event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_year"] = parse_timestamp(event["22.ssh.v2.server_host_key.certkey_public_key.validity.valid_before"])["year"]
	event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_month"] = parse_timestamp(event["22.ssh.v2.server_host_key.certkey_public_key.validity.valid_before"])["month"]
	event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_day"] = parse_timestamp(event["22.ssh.v2.server_host_key.certkey_public_key.validity.valid_before"])["day"]
	event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_hour"] = parse_timestamp(event["22.ssh.v2.server_host_key.certkey_public_key.validity.valid_before"])["hour"]
	event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_min"] = parse_timestamp(event["22.ssh.v2.server_host_key.certkey_public_key.validity.valid_before"])["min"]
	event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_sec"] = parse_timestamp(event["22.ssh.v2.server_host_key.certkey_public_key.validity.valid_before"])["sec"]
	event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_yday"] = parse_timestamp(event["22.ssh.v2.server_host_key.certkey_public_key.validity.valid_before"])["yday"]
	event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_wday"] = parse_timestamp(event["22.ssh.v2.server_host_key.certkey_public_key.validity.valid_before"])["wday"]
	event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_isdst"] = parse_timestamp(event["22.ssh.v2.server_host_key.certkey_public_key.validity.valid_before"])["isdst"]
	if event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_yday"] ~= nil then
	  event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_yweek"] = (event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_yday"] // 7) + 1
	  event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_yquarter"] = (event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_yday"] // 91) + 1
	end
	if event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_wday"] ~= nil then
	  event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_is_weekend"] = arr_has_value(weekends, event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_wday"])
	  event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_is_weekday"] = arr_has_value(weekdays, event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before_wday"])
	end
	event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_before"] = event["22.ssh.v2.server_host_key.certkey_public_key.validity.valid_before"]
	event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_year"] = parse_timestamp(event["p22.ssh.v2.server_host_key.certkey_public_key.validity.valid_after"])["year"]
	event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_month"] = parse_timestamp(event["p22.ssh.v2.server_host_key.certkey_public_key.validity.valid_after"])["month"]
	event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_day"] = parse_timestamp(event["p22.ssh.v2.server_host_key.certkey_public_key.validity.valid_after"])["day"]
	event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_hour"] = parse_timestamp(event["p22.ssh.v2.server_host_key.certkey_public_key.validity.valid_after"])["hour"]
	event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_min"] = parse_timestamp(event["p22.ssh.v2.server_host_key.certkey_public_key.validity.valid_after"])["min"]
	event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_sec"] = parse_timestamp(event["p22.ssh.v2.server_host_key.certkey_public_key.validity.valid_after"])["sec"]
	event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_yday"] = parse_timestamp(event["p22.ssh.v2.server_host_key.certkey_public_key.validity.valid_after"])["yday"]
	event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_wday"] = parse_timestamp(event["p22.ssh.v2.server_host_key.certkey_public_key.validity.valid_after"])["wday"]
	event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_isdst"] = parse_timestamp(event["p22.ssh.v2.server_host_key.certkey_public_key.validity.valid_after"])["isdst"]
	if event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_yday"] ~= nil then
	  event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_yweek"] = (event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_yday"] // 7) + 1
	  event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_yquarter"] = (event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_yday"] // 91) + 1
	end
	if event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_wday"] ~= nil then
	  event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_is_weekend"] = arr_has_value(weekends, event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_wday"])
	  event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_is_weekday"] = arr_has_value(weekdays, event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_wday"])
	end
	event["p22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after"] = event["p22.ssh.v2.server_host_key.certkey_public_key.validity.valid_after"]
	event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after"] = event["22.ssh.v2.server_host_key.certkey_public_key.validity.valid_after"]
	event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_year"] = parse_timestamp(event["22.ssh.v2.server_host_key.certkey_public_key.validity.valid_after"])["year"]
	event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_month"] = parse_timestamp(event["22.ssh.v2.server_host_key.certkey_public_key.validity.valid_after"])["month"]
	event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_day"] = parse_timestamp(event["22.ssh.v2.server_host_key.certkey_public_key.validity.valid_after"])["day"]
	event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_hour"] = parse_timestamp(event["22.ssh.v2.server_host_key.certkey_public_key.validity.valid_after"])["hour"]
	event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_min"] = parse_timestamp(event["22.ssh.v2.server_host_key.certkey_public_key.validity.valid_after"])["min"]
	event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_sec"] = parse_timestamp(event["22.ssh.v2.server_host_key.certkey_public_key.validity.valid_after"])["sec"]
	event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_yday"] = parse_timestamp(event["22.ssh.v2.server_host_key.certkey_public_key.validity.valid_after"])["yday"]
	event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_wday"] = parse_timestamp(event["22.ssh.v2.server_host_key.certkey_public_key.validity.valid_after"])["wday"]
	event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_isdst"] = parse_timestamp(event["22.ssh.v2.server_host_key.certkey_public_key.validity.valid_after"])["isdst"]
	if event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_yday"] ~= nil then
	  event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_yweek"] = (event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_yday"] // 7) + 1
	  event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_yquarter"] = (event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_yday"] // 91) + 1
	end
	if event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_wday"] ~= nil then
	  event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_is_weekend"] = arr_has_value(weekends, event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_wday"])
	  event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_is_weekday"] = arr_has_value(weekdays, event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after_wday"])
	end
	event["22__ssh__v2__server_host_key__certkey_public_key__validity__valid_after"] = event["22.ssh.v2.server_host_key.certkey_public_key.validity.valid_after"]
	event["p110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p110.pop3.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p110.pop3.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["110.pop3.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["110.pop3.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["110__pop3__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["110.pop3.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p110.pop3.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p110.pop3.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["110.pop3.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["110.pop3.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["110__pop3__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["110.pop3.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p25.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p25.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["25.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["25.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["25__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["25.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p25.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p25.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["25.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["25.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["25__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["25.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p995.pop3s.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p995.pop3s.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["995.pop3s.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["995.pop3s.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["995__pop3s__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["995.pop3s.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p995.pop3s.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p995.pop3s.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["995.pop3s.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["995.pop3s.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["995__pop3s__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["995.pop3s.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p587.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p587.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["587.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["587.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["587__smtp__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["587.smtp.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p587.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p587.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["587.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["587.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["587__smtp__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["587.smtp.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p143.imap.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p143.imap.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["143.imap.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["143.imap.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["143__imap__starttls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["143.imap.starttls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p143.imap.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p143.imap.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["143.imap.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["143.imap.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["143__imap__starttls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["143.imap.starttls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p993.imaps.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p993.imaps.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["993.imaps.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["993.imaps.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["993__imaps__tls__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["993.imaps.tls.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p993.imaps.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p993.imaps.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["993.imaps.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["993.imaps.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["993__imaps__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["993.imaps.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p443.https.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p443.https.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p443.https.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p443.https.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p443.https.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p443.https.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p443.https.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p443.https.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p443.https.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p443.https.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["443.https.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["443.https.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["443.https.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["443.https.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["443.https.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["443.https.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["443.https.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["443.https.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["443.https.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["443.https.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["443__https__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["443.https.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p443.https.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p443.https.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p443.https.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p443.https.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p443.https.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p443.https.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p443.https.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p443.https.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p443.https.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p443.https.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["443.https.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["443.https.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["443.https.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["443.https.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["443.https.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["443.https.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["443.https.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["443.https.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["443.https.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["443.https.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["443__https__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["443.https.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p8888__http__get__timestamp_year"] = parse_timestamp(event["p8888.http.get.timestamp"])["year"]
	event["p8888__http__get__timestamp_month"] = parse_timestamp(event["p8888.http.get.timestamp"])["month"]
	event["p8888__http__get__timestamp_day"] = parse_timestamp(event["p8888.http.get.timestamp"])["day"]
	event["p8888__http__get__timestamp_hour"] = parse_timestamp(event["p8888.http.get.timestamp"])["hour"]
	event["p8888__http__get__timestamp_min"] = parse_timestamp(event["p8888.http.get.timestamp"])["min"]
	event["p8888__http__get__timestamp_sec"] = parse_timestamp(event["p8888.http.get.timestamp"])["sec"]
	event["p8888__http__get__timestamp_yday"] = parse_timestamp(event["p8888.http.get.timestamp"])["yday"]
	event["p8888__http__get__timestamp_wday"] = parse_timestamp(event["p8888.http.get.timestamp"])["wday"]
	event["p8888__http__get__timestamp_isdst"] = parse_timestamp(event["p8888.http.get.timestamp"])["isdst"]
	if event["p8888__http__get__timestamp_yday"] ~= nil then
	  event["p8888__http__get__timestamp_yweek"] = (event["p8888__http__get__timestamp_yday"] // 7) + 1
	  event["p8888__http__get__timestamp_yquarter"] = (event["p8888__http__get__timestamp_yday"] // 91) + 1
	end
	if event["p8888__http__get__timestamp_wday"] ~= nil then
	  event["p8888__http__get__timestamp_is_weekend"] = arr_has_value(weekends, event["p8888__http__get__timestamp_wday"])
	  event["p8888__http__get__timestamp_is_weekday"] = arr_has_value(weekdays, event["p8888__http__get__timestamp_wday"])
	end
	event["p8888__http__get__timestamp"] = event["p8888.http.get.timestamp"]
	event["8888__http__get__timestamp"] = event["8888.http.get.timestamp"]
	event["8888__http__get__timestamp_year"] = parse_timestamp(event["8888.http.get.timestamp"])["year"]
	event["8888__http__get__timestamp_month"] = parse_timestamp(event["8888.http.get.timestamp"])["month"]
	event["8888__http__get__timestamp_day"] = parse_timestamp(event["8888.http.get.timestamp"])["day"]
	event["8888__http__get__timestamp_hour"] = parse_timestamp(event["8888.http.get.timestamp"])["hour"]
	event["8888__http__get__timestamp_min"] = parse_timestamp(event["8888.http.get.timestamp"])["min"]
	event["8888__http__get__timestamp_sec"] = parse_timestamp(event["8888.http.get.timestamp"])["sec"]
	event["8888__http__get__timestamp_yday"] = parse_timestamp(event["8888.http.get.timestamp"])["yday"]
	event["8888__http__get__timestamp_wday"] = parse_timestamp(event["8888.http.get.timestamp"])["wday"]
	event["8888__http__get__timestamp_isdst"] = parse_timestamp(event["8888.http.get.timestamp"])["isdst"]
	if event["8888__http__get__timestamp_yday"] ~= nil then
	  event["8888__http__get__timestamp_yweek"] = (event["8888__http__get__timestamp_yday"] // 7) + 1
	  event["8888__http__get__timestamp_yquarter"] = (event["8888__http__get__timestamp_yday"] // 91) + 1
	end
	if event["8888__http__get__timestamp_wday"] ~= nil then
	  event["8888__http__get__timestamp_is_weekend"] = arr_has_value(weekends, event["8888__http__get__timestamp_wday"])
	  event["8888__http__get__timestamp_is_weekday"] = arr_has_value(weekdays, event["8888__http__get__timestamp_wday"])
	end
	event["8888__http__get__timestamp"] = event["8888.http.get.timestamp"]
	event["p2323__telnet__banner__timestamp_year"] = parse_timestamp(event["p2323.telnet.banner.timestamp"])["year"]
	event["p2323__telnet__banner__timestamp_month"] = parse_timestamp(event["p2323.telnet.banner.timestamp"])["month"]
	event["p2323__telnet__banner__timestamp_day"] = parse_timestamp(event["p2323.telnet.banner.timestamp"])["day"]
	event["p2323__telnet__banner__timestamp_hour"] = parse_timestamp(event["p2323.telnet.banner.timestamp"])["hour"]
	event["p2323__telnet__banner__timestamp_min"] = parse_timestamp(event["p2323.telnet.banner.timestamp"])["min"]
	event["p2323__telnet__banner__timestamp_sec"] = parse_timestamp(event["p2323.telnet.banner.timestamp"])["sec"]
	event["p2323__telnet__banner__timestamp_yday"] = parse_timestamp(event["p2323.telnet.banner.timestamp"])["yday"]
	event["p2323__telnet__banner__timestamp_wday"] = parse_timestamp(event["p2323.telnet.banner.timestamp"])["wday"]
	event["p2323__telnet__banner__timestamp_isdst"] = parse_timestamp(event["p2323.telnet.banner.timestamp"])["isdst"]
	if event["p2323__telnet__banner__timestamp_yday"] ~= nil then
	  event["p2323__telnet__banner__timestamp_yweek"] = (event["p2323__telnet__banner__timestamp_yday"] // 7) + 1
	  event["p2323__telnet__banner__timestamp_yquarter"] = (event["p2323__telnet__banner__timestamp_yday"] // 91) + 1
	end
	if event["p2323__telnet__banner__timestamp_wday"] ~= nil then
	  event["p2323__telnet__banner__timestamp_is_weekend"] = arr_has_value(weekends, event["p2323__telnet__banner__timestamp_wday"])
	  event["p2323__telnet__banner__timestamp_is_weekday"] = arr_has_value(weekdays, event["p2323__telnet__banner__timestamp_wday"])
	end
	event["p2323__telnet__banner__timestamp"] = event["p2323.telnet.banner.timestamp"]
	event["2323__telnet__banner__timestamp"] = event["2323.telnet.banner.timestamp"]
	event["2323__telnet__banner__timestamp_year"] = parse_timestamp(event["2323.telnet.banner.timestamp"])["year"]
	event["2323__telnet__banner__timestamp_month"] = parse_timestamp(event["2323.telnet.banner.timestamp"])["month"]
	event["2323__telnet__banner__timestamp_day"] = parse_timestamp(event["2323.telnet.banner.timestamp"])["day"]
	event["2323__telnet__banner__timestamp_hour"] = parse_timestamp(event["2323.telnet.banner.timestamp"])["hour"]
	event["2323__telnet__banner__timestamp_min"] = parse_timestamp(event["2323.telnet.banner.timestamp"])["min"]
	event["2323__telnet__banner__timestamp_sec"] = parse_timestamp(event["2323.telnet.banner.timestamp"])["sec"]
	event["2323__telnet__banner__timestamp_yday"] = parse_timestamp(event["2323.telnet.banner.timestamp"])["yday"]
	event["2323__telnet__banner__timestamp_wday"] = parse_timestamp(event["2323.telnet.banner.timestamp"])["wday"]
	event["2323__telnet__banner__timestamp_isdst"] = parse_timestamp(event["2323.telnet.banner.timestamp"])["isdst"]
	if event["2323__telnet__banner__timestamp_yday"] ~= nil then
	  event["2323__telnet__banner__timestamp_yweek"] = (event["2323__telnet__banner__timestamp_yday"] // 7) + 1
	  event["2323__telnet__banner__timestamp_yquarter"] = (event["2323__telnet__banner__timestamp_yday"] // 91) + 1
	end
	if event["2323__telnet__banner__timestamp_wday"] ~= nil then
	  event["2323__telnet__banner__timestamp_is_weekend"] = arr_has_value(weekends, event["2323__telnet__banner__timestamp_wday"])
	  event["2323__telnet__banner__timestamp_is_weekday"] = arr_has_value(weekdays, event["2323__telnet__banner__timestamp_wday"])
	end
	event["2323__telnet__banner__timestamp"] = event["2323.telnet.banner.timestamp"]
	event["p8080__http__get__timestamp_year"] = parse_timestamp(event["p8080.http.get.timestamp"])["year"]
	event["p8080__http__get__timestamp_month"] = parse_timestamp(event["p8080.http.get.timestamp"])["month"]
	event["p8080__http__get__timestamp_day"] = parse_timestamp(event["p8080.http.get.timestamp"])["day"]
	event["p8080__http__get__timestamp_hour"] = parse_timestamp(event["p8080.http.get.timestamp"])["hour"]
	event["p8080__http__get__timestamp_min"] = parse_timestamp(event["p8080.http.get.timestamp"])["min"]
	event["p8080__http__get__timestamp_sec"] = parse_timestamp(event["p8080.http.get.timestamp"])["sec"]
	event["p8080__http__get__timestamp_yday"] = parse_timestamp(event["p8080.http.get.timestamp"])["yday"]
	event["p8080__http__get__timestamp_wday"] = parse_timestamp(event["p8080.http.get.timestamp"])["wday"]
	event["p8080__http__get__timestamp_isdst"] = parse_timestamp(event["p8080.http.get.timestamp"])["isdst"]
	if event["p8080__http__get__timestamp_yday"] ~= nil then
	  event["p8080__http__get__timestamp_yweek"] = (event["p8080__http__get__timestamp_yday"] // 7) + 1
	  event["p8080__http__get__timestamp_yquarter"] = (event["p8080__http__get__timestamp_yday"] // 91) + 1
	end
	if event["p8080__http__get__timestamp_wday"] ~= nil then
	  event["p8080__http__get__timestamp_is_weekend"] = arr_has_value(weekends, event["p8080__http__get__timestamp_wday"])
	  event["p8080__http__get__timestamp_is_weekday"] = arr_has_value(weekdays, event["p8080__http__get__timestamp_wday"])
	end
	event["p8080__http__get__timestamp"] = event["p8080.http.get.timestamp"]
	event["8080__http__get__timestamp"] = event["8080.http.get.timestamp"]
	event["8080__http__get__timestamp_year"] = parse_timestamp(event["8080.http.get.timestamp"])["year"]
	event["8080__http__get__timestamp_month"] = parse_timestamp(event["8080.http.get.timestamp"])["month"]
	event["8080__http__get__timestamp_day"] = parse_timestamp(event["8080.http.get.timestamp"])["day"]
	event["8080__http__get__timestamp_hour"] = parse_timestamp(event["8080.http.get.timestamp"])["hour"]
	event["8080__http__get__timestamp_min"] = parse_timestamp(event["8080.http.get.timestamp"])["min"]
	event["8080__http__get__timestamp_sec"] = parse_timestamp(event["8080.http.get.timestamp"])["sec"]
	event["8080__http__get__timestamp_yday"] = parse_timestamp(event["8080.http.get.timestamp"])["yday"]
	event["8080__http__get__timestamp_wday"] = parse_timestamp(event["8080.http.get.timestamp"])["wday"]
	event["8080__http__get__timestamp_isdst"] = parse_timestamp(event["8080.http.get.timestamp"])["isdst"]
	if event["8080__http__get__timestamp_yday"] ~= nil then
	  event["8080__http__get__timestamp_yweek"] = (event["8080__http__get__timestamp_yday"] // 7) + 1
	  event["8080__http__get__timestamp_yquarter"] = (event["8080__http__get__timestamp_yday"] // 91) + 1
	end
	if event["8080__http__get__timestamp_wday"] ~= nil then
	  event["8080__http__get__timestamp_is_weekend"] = arr_has_value(weekends, event["8080__http__get__timestamp_wday"])
	  event["8080__http__get__timestamp_is_weekday"] = arr_has_value(weekdays, event["8080__http__get__timestamp_wday"])
	end
	event["8080__http__get__timestamp"] = event["8080.http.get.timestamp"]
	event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_year"] = parse_timestamp(event["p22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["year"]
	event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_month"] = parse_timestamp(event["p22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["month"]
	event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_day"] = parse_timestamp(event["p22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["day"]
	event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_hour"] = parse_timestamp(event["p22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["hour"]
	event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_min"] = parse_timestamp(event["p22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["min"]
	event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_sec"] = parse_timestamp(event["p22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["sec"]
	event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_yday"] = parse_timestamp(event["p22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["yday"]
	event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_wday"] = parse_timestamp(event["p22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["wday"]
	event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_isdst"] = parse_timestamp(event["p22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["isdst"]
	if event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_yday"] ~= nil then
	  event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_yweek"] = (event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_yday"] // 7) + 1
	  event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_yquarter"] = (event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_yday"] // 91) + 1
	end
	if event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_wday"] ~= nil then
	  event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_is_weekend"] = arr_has_value(weekends, event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_wday"])
	  event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_is_weekday"] = arr_has_value(weekdays, event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_wday"])
	end
	event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after"] = event["p22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_after"]
	event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after"] = event["22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_after"]
	event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_year"] = parse_timestamp(event["22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["year"]
	event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_month"] = parse_timestamp(event["22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["month"]
	event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_day"] = parse_timestamp(event["22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["day"]
	event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_hour"] = parse_timestamp(event["22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["hour"]
	event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_min"] = parse_timestamp(event["22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["min"]
	event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_sec"] = parse_timestamp(event["22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["sec"]
	event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_yday"] = parse_timestamp(event["22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["yday"]
	event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_wday"] = parse_timestamp(event["22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["wday"]
	event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_isdst"] = parse_timestamp(event["22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_after"])["isdst"]
	if event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_yday"] ~= nil then
	  event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_yweek"] = (event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_yday"] // 7) + 1
	  event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_yquarter"] = (event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_yday"] // 91) + 1
	end
	if event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_wday"] ~= nil then
	  event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_is_weekend"] = arr_has_value(weekends, event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_wday"])
	  event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_is_weekday"] = arr_has_value(weekdays, event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after_wday"])
	end
	event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_after"] = event["22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_after"]
	event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_year"] = parse_timestamp(event["p22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["year"]
	event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_month"] = parse_timestamp(event["p22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["month"]
	event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_day"] = parse_timestamp(event["p22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["day"]
	event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_hour"] = parse_timestamp(event["p22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["hour"]
	event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_min"] = parse_timestamp(event["p22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["min"]
	event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_sec"] = parse_timestamp(event["p22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["sec"]
	event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_yday"] = parse_timestamp(event["p22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["yday"]
	event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_wday"] = parse_timestamp(event["p22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["wday"]
	event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_isdst"] = parse_timestamp(event["p22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["isdst"]
	if event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_yday"] ~= nil then
	  event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_yweek"] = (event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_yday"] // 7) + 1
	  event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_yquarter"] = (event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_yday"] // 91) + 1
	end
	if event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_wday"] ~= nil then
	  event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_is_weekend"] = arr_has_value(weekends, event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_wday"])
	  event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_is_weekday"] = arr_has_value(weekdays, event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_wday"])
	end
	event["p22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before"] = event["p22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_before"]
	event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before"] = event["22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_before"]
	event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_year"] = parse_timestamp(event["22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["year"]
	event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_month"] = parse_timestamp(event["22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["month"]
	event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_day"] = parse_timestamp(event["22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["day"]
	event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_hour"] = parse_timestamp(event["22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["hour"]
	event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_min"] = parse_timestamp(event["22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["min"]
	event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_sec"] = parse_timestamp(event["22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["sec"]
	event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_yday"] = parse_timestamp(event["22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["yday"]
	event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_wday"] = parse_timestamp(event["22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["wday"]
	event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_isdst"] = parse_timestamp(event["22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_before"])["isdst"]
	if event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_yday"] ~= nil then
	  event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_yweek"] = (event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_yday"] // 7) + 1
	  event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_yquarter"] = (event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_yday"] // 91) + 1
	end
	if event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_wday"] ~= nil then
	  event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_is_weekend"] = arr_has_value(weekends, event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_wday"])
	  event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_is_weekday"] = arr_has_value(weekdays, event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before_wday"])
	end
	event["22__ssh__v2__key_exchange__server_host_key__certkey_public_key__validity__valid_before"] = event["22.ssh.v2.key_exchange.server_host_key.certkey_public_key.validity.valid_before"]
	event["p443__https__ssl_3__timestamp_year"] = parse_timestamp(event["p443.https.ssl_3.timestamp"])["year"]
	event["p443__https__ssl_3__timestamp_month"] = parse_timestamp(event["p443.https.ssl_3.timestamp"])["month"]
	event["p443__https__ssl_3__timestamp_day"] = parse_timestamp(event["p443.https.ssl_3.timestamp"])["day"]
	event["p443__https__ssl_3__timestamp_hour"] = parse_timestamp(event["p443.https.ssl_3.timestamp"])["hour"]
	event["p443__https__ssl_3__timestamp_min"] = parse_timestamp(event["p443.https.ssl_3.timestamp"])["min"]
	event["p443__https__ssl_3__timestamp_sec"] = parse_timestamp(event["p443.https.ssl_3.timestamp"])["sec"]
	event["p443__https__ssl_3__timestamp_yday"] = parse_timestamp(event["p443.https.ssl_3.timestamp"])["yday"]
	event["p443__https__ssl_3__timestamp_wday"] = parse_timestamp(event["p443.https.ssl_3.timestamp"])["wday"]
	event["p443__https__ssl_3__timestamp_isdst"] = parse_timestamp(event["p443.https.ssl_3.timestamp"])["isdst"]
	if event["p443__https__ssl_3__timestamp_yday"] ~= nil then
	  event["p443__https__ssl_3__timestamp_yweek"] = (event["p443__https__ssl_3__timestamp_yday"] // 7) + 1
	  event["p443__https__ssl_3__timestamp_yquarter"] = (event["p443__https__ssl_3__timestamp_yday"] // 91) + 1
	end
	if event["p443__https__ssl_3__timestamp_wday"] ~= nil then
	  event["p443__https__ssl_3__timestamp_is_weekend"] = arr_has_value(weekends, event["p443__https__ssl_3__timestamp_wday"])
	  event["p443__https__ssl_3__timestamp_is_weekday"] = arr_has_value(weekdays, event["p443__https__ssl_3__timestamp_wday"])
	end
	event["p443__https__ssl_3__timestamp"] = event["p443.https.ssl_3.timestamp"]
	event["443__https__ssl_3__timestamp"] = event["443.https.ssl_3.timestamp"]
	event["443__https__ssl_3__timestamp_year"] = parse_timestamp(event["443.https.ssl_3.timestamp"])["year"]
	event["443__https__ssl_3__timestamp_month"] = parse_timestamp(event["443.https.ssl_3.timestamp"])["month"]
	event["443__https__ssl_3__timestamp_day"] = parse_timestamp(event["443.https.ssl_3.timestamp"])["day"]
	event["443__https__ssl_3__timestamp_hour"] = parse_timestamp(event["443.https.ssl_3.timestamp"])["hour"]
	event["443__https__ssl_3__timestamp_min"] = parse_timestamp(event["443.https.ssl_3.timestamp"])["min"]
	event["443__https__ssl_3__timestamp_sec"] = parse_timestamp(event["443.https.ssl_3.timestamp"])["sec"]
	event["443__https__ssl_3__timestamp_yday"] = parse_timestamp(event["443.https.ssl_3.timestamp"])["yday"]
	event["443__https__ssl_3__timestamp_wday"] = parse_timestamp(event["443.https.ssl_3.timestamp"])["wday"]
	event["443__https__ssl_3__timestamp_isdst"] = parse_timestamp(event["443.https.ssl_3.timestamp"])["isdst"]
	if event["443__https__ssl_3__timestamp_yday"] ~= nil then
	  event["443__https__ssl_3__timestamp_yweek"] = (event["443__https__ssl_3__timestamp_yday"] // 7) + 1
	  event["443__https__ssl_3__timestamp_yquarter"] = (event["443__https__ssl_3__timestamp_yday"] // 91) + 1
	end
	if event["443__https__ssl_3__timestamp_wday"] ~= nil then
	  event["443__https__ssl_3__timestamp_is_weekend"] = arr_has_value(weekends, event["443__https__ssl_3__timestamp_wday"])
	  event["443__https__ssl_3__timestamp_is_weekday"] = arr_has_value(weekdays, event["443__https__ssl_3__timestamp_wday"])
	end
	event["443__https__ssl_3__timestamp"] = event["443.https.ssl_3.timestamp"]
	event["p1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p1433.mssql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["1433.mssql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["1433__mssql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["1433.mssql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p1433__mssql__banner__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.validity.end"])["year"]
	event["p1433__mssql__banner__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.validity.end"])["month"]
	event["p1433__mssql__banner__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.validity.end"])["day"]
	event["p1433__mssql__banner__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.validity.end"])["hour"]
	event["p1433__mssql__banner__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.validity.end"])["min"]
	event["p1433__mssql__banner__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.validity.end"])["sec"]
	event["p1433__mssql__banner__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.validity.end"])["yday"]
	event["p1433__mssql__banner__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.validity.end"])["wday"]
	event["p1433__mssql__banner__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.validity.end"])["isdst"]
	if event["p1433__mssql__banner__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p1433__mssql__banner__tls__certificate__parsed__validity__end_yweek"] = (event["p1433__mssql__banner__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p1433__mssql__banner__tls__certificate__parsed__validity__end_yquarter"] = (event["p1433__mssql__banner__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p1433__mssql__banner__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p1433__mssql__banner__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p1433__mssql__banner__tls__certificate__parsed__validity__end_wday"])
	  event["p1433__mssql__banner__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p1433__mssql__banner__tls__certificate__parsed__validity__end_wday"])
	end
	event["p1433__mssql__banner__tls__certificate__parsed__validity__end"] = event["p1433.mssql.banner.tls.certificate.parsed.validity.end"]
	event["1433__mssql__banner__tls__certificate__parsed__validity__end"] = event["1433.mssql.banner.tls.certificate.parsed.validity.end"]
	event["1433__mssql__banner__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.validity.end"])["year"]
	event["1433__mssql__banner__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.validity.end"])["month"]
	event["1433__mssql__banner__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.validity.end"])["day"]
	event["1433__mssql__banner__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.validity.end"])["hour"]
	event["1433__mssql__banner__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.validity.end"])["min"]
	event["1433__mssql__banner__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.validity.end"])["sec"]
	event["1433__mssql__banner__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.validity.end"])["yday"]
	event["1433__mssql__banner__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.validity.end"])["wday"]
	event["1433__mssql__banner__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.validity.end"])["isdst"]
	if event["1433__mssql__banner__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["1433__mssql__banner__tls__certificate__parsed__validity__end_yweek"] = (event["1433__mssql__banner__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["1433__mssql__banner__tls__certificate__parsed__validity__end_yquarter"] = (event["1433__mssql__banner__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["1433__mssql__banner__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["1433__mssql__banner__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["1433__mssql__banner__tls__certificate__parsed__validity__end_wday"])
	  event["1433__mssql__banner__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["1433__mssql__banner__tls__certificate__parsed__validity__end_wday"])
	end
	event["1433__mssql__banner__tls__certificate__parsed__validity__end"] = event["1433.mssql.banner.tls.certificate.parsed.validity.end"]
	event["p1433__mssql__banner__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.validity.start"])["year"]
	event["p1433__mssql__banner__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.validity.start"])["month"]
	event["p1433__mssql__banner__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.validity.start"])["day"]
	event["p1433__mssql__banner__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.validity.start"])["hour"]
	event["p1433__mssql__banner__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.validity.start"])["min"]
	event["p1433__mssql__banner__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.validity.start"])["sec"]
	event["p1433__mssql__banner__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.validity.start"])["yday"]
	event["p1433__mssql__banner__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.validity.start"])["wday"]
	event["p1433__mssql__banner__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p1433.mssql.banner.tls.certificate.parsed.validity.start"])["isdst"]
	if event["p1433__mssql__banner__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p1433__mssql__banner__tls__certificate__parsed__validity__start_yweek"] = (event["p1433__mssql__banner__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p1433__mssql__banner__tls__certificate__parsed__validity__start_yquarter"] = (event["p1433__mssql__banner__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p1433__mssql__banner__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p1433__mssql__banner__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p1433__mssql__banner__tls__certificate__parsed__validity__start_wday"])
	  event["p1433__mssql__banner__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p1433__mssql__banner__tls__certificate__parsed__validity__start_wday"])
	end
	event["p1433__mssql__banner__tls__certificate__parsed__validity__start"] = event["p1433.mssql.banner.tls.certificate.parsed.validity.start"]
	event["1433__mssql__banner__tls__certificate__parsed__validity__start"] = event["1433.mssql.banner.tls.certificate.parsed.validity.start"]
	event["1433__mssql__banner__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.validity.start"])["year"]
	event["1433__mssql__banner__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.validity.start"])["month"]
	event["1433__mssql__banner__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.validity.start"])["day"]
	event["1433__mssql__banner__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.validity.start"])["hour"]
	event["1433__mssql__banner__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.validity.start"])["min"]
	event["1433__mssql__banner__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.validity.start"])["sec"]
	event["1433__mssql__banner__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.validity.start"])["yday"]
	event["1433__mssql__banner__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.validity.start"])["wday"]
	event["1433__mssql__banner__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["1433.mssql.banner.tls.certificate.parsed.validity.start"])["isdst"]
	if event["1433__mssql__banner__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["1433__mssql__banner__tls__certificate__parsed__validity__start_yweek"] = (event["1433__mssql__banner__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["1433__mssql__banner__tls__certificate__parsed__validity__start_yquarter"] = (event["1433__mssql__banner__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["1433__mssql__banner__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["1433__mssql__banner__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["1433__mssql__banner__tls__certificate__parsed__validity__start_wday"])
	  event["1433__mssql__banner__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["1433__mssql__banner__tls__certificate__parsed__validity__start_wday"])
	end
	event["1433__mssql__banner__tls__certificate__parsed__validity__start"] = event["1433.mssql.banner.tls.certificate.parsed.validity.start"]
	event["p1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p1433.mssql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["1433.mssql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["1433__mssql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["1433.mssql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p1433__mssql__banner__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.validity.end"])["year"]
	event["p1433__mssql__banner__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.validity.end"])["month"]
	event["p1433__mssql__banner__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.validity.end"])["day"]
	event["p1433__mssql__banner__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.validity.end"])["hour"]
	event["p1433__mssql__banner__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.validity.end"])["min"]
	event["p1433__mssql__banner__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.validity.end"])["sec"]
	event["p1433__mssql__banner__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.validity.end"])["yday"]
	event["p1433__mssql__banner__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.validity.end"])["wday"]
	event["p1433__mssql__banner__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.validity.end"])["isdst"]
	if event["p1433__mssql__banner__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["p1433__mssql__banner__tls__chain__parsed__validity__end_yweek"] = (event["p1433__mssql__banner__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["p1433__mssql__banner__tls__chain__parsed__validity__end_yquarter"] = (event["p1433__mssql__banner__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p1433__mssql__banner__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["p1433__mssql__banner__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p1433__mssql__banner__tls__chain__parsed__validity__end_wday"])
	  event["p1433__mssql__banner__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p1433__mssql__banner__tls__chain__parsed__validity__end_wday"])
	end
	event["p1433__mssql__banner__tls__chain__parsed__validity__end"] = event["p1433.mssql.banner.tls.chain.parsed.validity.end"]
	event["1433__mssql__banner__tls__chain__parsed__validity__end"] = event["1433.mssql.banner.tls.chain.parsed.validity.end"]
	event["1433__mssql__banner__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.validity.end"])["year"]
	event["1433__mssql__banner__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.validity.end"])["month"]
	event["1433__mssql__banner__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.validity.end"])["day"]
	event["1433__mssql__banner__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.validity.end"])["hour"]
	event["1433__mssql__banner__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.validity.end"])["min"]
	event["1433__mssql__banner__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.validity.end"])["sec"]
	event["1433__mssql__banner__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.validity.end"])["yday"]
	event["1433__mssql__banner__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.validity.end"])["wday"]
	event["1433__mssql__banner__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.validity.end"])["isdst"]
	if event["1433__mssql__banner__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["1433__mssql__banner__tls__chain__parsed__validity__end_yweek"] = (event["1433__mssql__banner__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["1433__mssql__banner__tls__chain__parsed__validity__end_yquarter"] = (event["1433__mssql__banner__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["1433__mssql__banner__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["1433__mssql__banner__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["1433__mssql__banner__tls__chain__parsed__validity__end_wday"])
	  event["1433__mssql__banner__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["1433__mssql__banner__tls__chain__parsed__validity__end_wday"])
	end
	event["1433__mssql__banner__tls__chain__parsed__validity__end"] = event["1433.mssql.banner.tls.chain.parsed.validity.end"]
	event["p1433__mssql__banner__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.validity.start"])["year"]
	event["p1433__mssql__banner__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.validity.start"])["month"]
	event["p1433__mssql__banner__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.validity.start"])["day"]
	event["p1433__mssql__banner__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.validity.start"])["hour"]
	event["p1433__mssql__banner__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.validity.start"])["min"]
	event["p1433__mssql__banner__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.validity.start"])["sec"]
	event["p1433__mssql__banner__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.validity.start"])["yday"]
	event["p1433__mssql__banner__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.validity.start"])["wday"]
	event["p1433__mssql__banner__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["p1433.mssql.banner.tls.chain.parsed.validity.start"])["isdst"]
	if event["p1433__mssql__banner__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["p1433__mssql__banner__tls__chain__parsed__validity__start_yweek"] = (event["p1433__mssql__banner__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["p1433__mssql__banner__tls__chain__parsed__validity__start_yquarter"] = (event["p1433__mssql__banner__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p1433__mssql__banner__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["p1433__mssql__banner__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p1433__mssql__banner__tls__chain__parsed__validity__start_wday"])
	  event["p1433__mssql__banner__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p1433__mssql__banner__tls__chain__parsed__validity__start_wday"])
	end
	event["p1433__mssql__banner__tls__chain__parsed__validity__start"] = event["p1433.mssql.banner.tls.chain.parsed.validity.start"]
	event["1433__mssql__banner__tls__chain__parsed__validity__start"] = event["1433.mssql.banner.tls.chain.parsed.validity.start"]
	event["1433__mssql__banner__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.validity.start"])["year"]
	event["1433__mssql__banner__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.validity.start"])["month"]
	event["1433__mssql__banner__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.validity.start"])["day"]
	event["1433__mssql__banner__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.validity.start"])["hour"]
	event["1433__mssql__banner__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.validity.start"])["min"]
	event["1433__mssql__banner__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.validity.start"])["sec"]
	event["1433__mssql__banner__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.validity.start"])["yday"]
	event["1433__mssql__banner__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.validity.start"])["wday"]
	event["1433__mssql__banner__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["1433.mssql.banner.tls.chain.parsed.validity.start"])["isdst"]
	if event["1433__mssql__banner__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["1433__mssql__banner__tls__chain__parsed__validity__start_yweek"] = (event["1433__mssql__banner__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["1433__mssql__banner__tls__chain__parsed__validity__start_yquarter"] = (event["1433__mssql__banner__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["1433__mssql__banner__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["1433__mssql__banner__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["1433__mssql__banner__tls__chain__parsed__validity__start_wday"])
	  event["1433__mssql__banner__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["1433__mssql__banner__tls__chain__parsed__validity__start_wday"])
	end
	event["1433__mssql__banner__tls__chain__parsed__validity__start"] = event["1433.mssql.banner.tls.chain.parsed.validity.start"]
	event["p1433__mssql__banner__tls__scts__timestamp_year"] = parse_timestamp(event["p1433.mssql.banner.tls.scts.timestamp"])["year"]
	event["p1433__mssql__banner__tls__scts__timestamp_month"] = parse_timestamp(event["p1433.mssql.banner.tls.scts.timestamp"])["month"]
	event["p1433__mssql__banner__tls__scts__timestamp_day"] = parse_timestamp(event["p1433.mssql.banner.tls.scts.timestamp"])["day"]
	event["p1433__mssql__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["p1433.mssql.banner.tls.scts.timestamp"])["hour"]
	event["p1433__mssql__banner__tls__scts__timestamp_min"] = parse_timestamp(event["p1433.mssql.banner.tls.scts.timestamp"])["min"]
	event["p1433__mssql__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["p1433.mssql.banner.tls.scts.timestamp"])["sec"]
	event["p1433__mssql__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["p1433.mssql.banner.tls.scts.timestamp"])["yday"]
	event["p1433__mssql__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["p1433.mssql.banner.tls.scts.timestamp"])["wday"]
	event["p1433__mssql__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["p1433.mssql.banner.tls.scts.timestamp"])["isdst"]
	if event["p1433__mssql__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["p1433__mssql__banner__tls__scts__timestamp_yweek"] = (event["p1433__mssql__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["p1433__mssql__banner__tls__scts__timestamp_yquarter"] = (event["p1433__mssql__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["p1433__mssql__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["p1433__mssql__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["p1433__mssql__banner__tls__scts__timestamp_wday"])
	  event["p1433__mssql__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["p1433__mssql__banner__tls__scts__timestamp_wday"])
	end
	event["p1433__mssql__banner__tls__scts__timestamp"] = event["p1433.mssql.banner.tls.scts.timestamp"]
	event["1433__mssql__banner__tls__scts__timestamp"] = event["1433.mssql.banner.tls.scts.timestamp"]
	event["1433__mssql__banner__tls__scts__timestamp_year"] = parse_timestamp(event["1433.mssql.banner.tls.scts.timestamp"])["year"]
	event["1433__mssql__banner__tls__scts__timestamp_month"] = parse_timestamp(event["1433.mssql.banner.tls.scts.timestamp"])["month"]
	event["1433__mssql__banner__tls__scts__timestamp_day"] = parse_timestamp(event["1433.mssql.banner.tls.scts.timestamp"])["day"]
	event["1433__mssql__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["1433.mssql.banner.tls.scts.timestamp"])["hour"]
	event["1433__mssql__banner__tls__scts__timestamp_min"] = parse_timestamp(event["1433.mssql.banner.tls.scts.timestamp"])["min"]
	event["1433__mssql__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["1433.mssql.banner.tls.scts.timestamp"])["sec"]
	event["1433__mssql__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["1433.mssql.banner.tls.scts.timestamp"])["yday"]
	event["1433__mssql__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["1433.mssql.banner.tls.scts.timestamp"])["wday"]
	event["1433__mssql__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["1433.mssql.banner.tls.scts.timestamp"])["isdst"]
	if event["1433__mssql__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["1433__mssql__banner__tls__scts__timestamp_yweek"] = (event["1433__mssql__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["1433__mssql__banner__tls__scts__timestamp_yquarter"] = (event["1433__mssql__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["1433__mssql__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["1433__mssql__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["1433__mssql__banner__tls__scts__timestamp_wday"])
	  event["1433__mssql__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["1433__mssql__banner__tls__scts__timestamp_wday"])
	end
	event["1433__mssql__banner__tls__scts__timestamp"] = event["1433.mssql.banner.tls.scts.timestamp"]
	event["p1433__mssql__banner__tls__timestamp_year"] = parse_timestamp(event["p1433.mssql.banner.tls.timestamp"])["year"]
	event["p1433__mssql__banner__tls__timestamp_month"] = parse_timestamp(event["p1433.mssql.banner.tls.timestamp"])["month"]
	event["p1433__mssql__banner__tls__timestamp_day"] = parse_timestamp(event["p1433.mssql.banner.tls.timestamp"])["day"]
	event["p1433__mssql__banner__tls__timestamp_hour"] = parse_timestamp(event["p1433.mssql.banner.tls.timestamp"])["hour"]
	event["p1433__mssql__banner__tls__timestamp_min"] = parse_timestamp(event["p1433.mssql.banner.tls.timestamp"])["min"]
	event["p1433__mssql__banner__tls__timestamp_sec"] = parse_timestamp(event["p1433.mssql.banner.tls.timestamp"])["sec"]
	event["p1433__mssql__banner__tls__timestamp_yday"] = parse_timestamp(event["p1433.mssql.banner.tls.timestamp"])["yday"]
	event["p1433__mssql__banner__tls__timestamp_wday"] = parse_timestamp(event["p1433.mssql.banner.tls.timestamp"])["wday"]
	event["p1433__mssql__banner__tls__timestamp_isdst"] = parse_timestamp(event["p1433.mssql.banner.tls.timestamp"])["isdst"]
	if event["p1433__mssql__banner__tls__timestamp_yday"] ~= nil then
	  event["p1433__mssql__banner__tls__timestamp_yweek"] = (event["p1433__mssql__banner__tls__timestamp_yday"] // 7) + 1
	  event["p1433__mssql__banner__tls__timestamp_yquarter"] = (event["p1433__mssql__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["p1433__mssql__banner__tls__timestamp_wday"] ~= nil then
	  event["p1433__mssql__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p1433__mssql__banner__tls__timestamp_wday"])
	  event["p1433__mssql__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p1433__mssql__banner__tls__timestamp_wday"])
	end
	event["p1433__mssql__banner__tls__timestamp"] = event["p1433.mssql.banner.tls.timestamp"]
	event["1433__mssql__banner__tls__timestamp"] = event["1433.mssql.banner.tls.timestamp"]
	event["1433__mssql__banner__tls__timestamp_year"] = parse_timestamp(event["1433.mssql.banner.tls.timestamp"])["year"]
	event["1433__mssql__banner__tls__timestamp_month"] = parse_timestamp(event["1433.mssql.banner.tls.timestamp"])["month"]
	event["1433__mssql__banner__tls__timestamp_day"] = parse_timestamp(event["1433.mssql.banner.tls.timestamp"])["day"]
	event["1433__mssql__banner__tls__timestamp_hour"] = parse_timestamp(event["1433.mssql.banner.tls.timestamp"])["hour"]
	event["1433__mssql__banner__tls__timestamp_min"] = parse_timestamp(event["1433.mssql.banner.tls.timestamp"])["min"]
	event["1433__mssql__banner__tls__timestamp_sec"] = parse_timestamp(event["1433.mssql.banner.tls.timestamp"])["sec"]
	event["1433__mssql__banner__tls__timestamp_yday"] = parse_timestamp(event["1433.mssql.banner.tls.timestamp"])["yday"]
	event["1433__mssql__banner__tls__timestamp_wday"] = parse_timestamp(event["1433.mssql.banner.tls.timestamp"])["wday"]
	event["1433__mssql__banner__tls__timestamp_isdst"] = parse_timestamp(event["1433.mssql.banner.tls.timestamp"])["isdst"]
	if event["1433__mssql__banner__tls__timestamp_yday"] ~= nil then
	  event["1433__mssql__banner__tls__timestamp_yweek"] = (event["1433__mssql__banner__tls__timestamp_yday"] // 7) + 1
	  event["1433__mssql__banner__tls__timestamp_yquarter"] = (event["1433__mssql__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["1433__mssql__banner__tls__timestamp_wday"] ~= nil then
	  event["1433__mssql__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["1433__mssql__banner__tls__timestamp_wday"])
	  event["1433__mssql__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["1433__mssql__banner__tls__timestamp_wday"])
	end
	event["1433__mssql__banner__tls__timestamp"] = event["1433.mssql.banner.tls.timestamp"]
	event["p1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p1521.oracle.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["1521.oracle.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["1521__oracle__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["1521.oracle.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p1521__oracle__banner__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.validity.end"])["year"]
	event["p1521__oracle__banner__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.validity.end"])["month"]
	event["p1521__oracle__banner__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.validity.end"])["day"]
	event["p1521__oracle__banner__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.validity.end"])["hour"]
	event["p1521__oracle__banner__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.validity.end"])["min"]
	event["p1521__oracle__banner__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.validity.end"])["sec"]
	event["p1521__oracle__banner__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.validity.end"])["yday"]
	event["p1521__oracle__banner__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.validity.end"])["wday"]
	event["p1521__oracle__banner__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.validity.end"])["isdst"]
	if event["p1521__oracle__banner__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p1521__oracle__banner__tls__certificate__parsed__validity__end_yweek"] = (event["p1521__oracle__banner__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p1521__oracle__banner__tls__certificate__parsed__validity__end_yquarter"] = (event["p1521__oracle__banner__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p1521__oracle__banner__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p1521__oracle__banner__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p1521__oracle__banner__tls__certificate__parsed__validity__end_wday"])
	  event["p1521__oracle__banner__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p1521__oracle__banner__tls__certificate__parsed__validity__end_wday"])
	end
	event["p1521__oracle__banner__tls__certificate__parsed__validity__end"] = event["p1521.oracle.banner.tls.certificate.parsed.validity.end"]
	event["1521__oracle__banner__tls__certificate__parsed__validity__end"] = event["1521.oracle.banner.tls.certificate.parsed.validity.end"]
	event["1521__oracle__banner__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.validity.end"])["year"]
	event["1521__oracle__banner__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.validity.end"])["month"]
	event["1521__oracle__banner__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.validity.end"])["day"]
	event["1521__oracle__banner__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.validity.end"])["hour"]
	event["1521__oracle__banner__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.validity.end"])["min"]
	event["1521__oracle__banner__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.validity.end"])["sec"]
	event["1521__oracle__banner__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.validity.end"])["yday"]
	event["1521__oracle__banner__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.validity.end"])["wday"]
	event["1521__oracle__banner__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.validity.end"])["isdst"]
	if event["1521__oracle__banner__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["1521__oracle__banner__tls__certificate__parsed__validity__end_yweek"] = (event["1521__oracle__banner__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["1521__oracle__banner__tls__certificate__parsed__validity__end_yquarter"] = (event["1521__oracle__banner__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["1521__oracle__banner__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["1521__oracle__banner__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["1521__oracle__banner__tls__certificate__parsed__validity__end_wday"])
	  event["1521__oracle__banner__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["1521__oracle__banner__tls__certificate__parsed__validity__end_wday"])
	end
	event["1521__oracle__banner__tls__certificate__parsed__validity__end"] = event["1521.oracle.banner.tls.certificate.parsed.validity.end"]
	event["p1521__oracle__banner__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.validity.start"])["year"]
	event["p1521__oracle__banner__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.validity.start"])["month"]
	event["p1521__oracle__banner__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.validity.start"])["day"]
	event["p1521__oracle__banner__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.validity.start"])["hour"]
	event["p1521__oracle__banner__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.validity.start"])["min"]
	event["p1521__oracle__banner__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.validity.start"])["sec"]
	event["p1521__oracle__banner__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.validity.start"])["yday"]
	event["p1521__oracle__banner__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.validity.start"])["wday"]
	event["p1521__oracle__banner__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p1521.oracle.banner.tls.certificate.parsed.validity.start"])["isdst"]
	if event["p1521__oracle__banner__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p1521__oracle__banner__tls__certificate__parsed__validity__start_yweek"] = (event["p1521__oracle__banner__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p1521__oracle__banner__tls__certificate__parsed__validity__start_yquarter"] = (event["p1521__oracle__banner__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p1521__oracle__banner__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p1521__oracle__banner__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p1521__oracle__banner__tls__certificate__parsed__validity__start_wday"])
	  event["p1521__oracle__banner__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p1521__oracle__banner__tls__certificate__parsed__validity__start_wday"])
	end
	event["p1521__oracle__banner__tls__certificate__parsed__validity__start"] = event["p1521.oracle.banner.tls.certificate.parsed.validity.start"]
	event["1521__oracle__banner__tls__certificate__parsed__validity__start"] = event["1521.oracle.banner.tls.certificate.parsed.validity.start"]
	event["1521__oracle__banner__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.validity.start"])["year"]
	event["1521__oracle__banner__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.validity.start"])["month"]
	event["1521__oracle__banner__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.validity.start"])["day"]
	event["1521__oracle__banner__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.validity.start"])["hour"]
	event["1521__oracle__banner__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.validity.start"])["min"]
	event["1521__oracle__banner__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.validity.start"])["sec"]
	event["1521__oracle__banner__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.validity.start"])["yday"]
	event["1521__oracle__banner__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.validity.start"])["wday"]
	event["1521__oracle__banner__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["1521.oracle.banner.tls.certificate.parsed.validity.start"])["isdst"]
	if event["1521__oracle__banner__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["1521__oracle__banner__tls__certificate__parsed__validity__start_yweek"] = (event["1521__oracle__banner__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["1521__oracle__banner__tls__certificate__parsed__validity__start_yquarter"] = (event["1521__oracle__banner__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["1521__oracle__banner__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["1521__oracle__banner__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["1521__oracle__banner__tls__certificate__parsed__validity__start_wday"])
	  event["1521__oracle__banner__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["1521__oracle__banner__tls__certificate__parsed__validity__start_wday"])
	end
	event["1521__oracle__banner__tls__certificate__parsed__validity__start"] = event["1521.oracle.banner.tls.certificate.parsed.validity.start"]
	event["p1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p1521.oracle.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["1521.oracle.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["1521__oracle__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["1521.oracle.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p1521__oracle__banner__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.validity.end"])["year"]
	event["p1521__oracle__banner__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.validity.end"])["month"]
	event["p1521__oracle__banner__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.validity.end"])["day"]
	event["p1521__oracle__banner__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.validity.end"])["hour"]
	event["p1521__oracle__banner__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.validity.end"])["min"]
	event["p1521__oracle__banner__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.validity.end"])["sec"]
	event["p1521__oracle__banner__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.validity.end"])["yday"]
	event["p1521__oracle__banner__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.validity.end"])["wday"]
	event["p1521__oracle__banner__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.validity.end"])["isdst"]
	if event["p1521__oracle__banner__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["p1521__oracle__banner__tls__chain__parsed__validity__end_yweek"] = (event["p1521__oracle__banner__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["p1521__oracle__banner__tls__chain__parsed__validity__end_yquarter"] = (event["p1521__oracle__banner__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p1521__oracle__banner__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["p1521__oracle__banner__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p1521__oracle__banner__tls__chain__parsed__validity__end_wday"])
	  event["p1521__oracle__banner__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p1521__oracle__banner__tls__chain__parsed__validity__end_wday"])
	end
	event["p1521__oracle__banner__tls__chain__parsed__validity__end"] = event["p1521.oracle.banner.tls.chain.parsed.validity.end"]
	event["1521__oracle__banner__tls__chain__parsed__validity__end"] = event["1521.oracle.banner.tls.chain.parsed.validity.end"]
	event["1521__oracle__banner__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.validity.end"])["year"]
	event["1521__oracle__banner__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.validity.end"])["month"]
	event["1521__oracle__banner__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.validity.end"])["day"]
	event["1521__oracle__banner__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.validity.end"])["hour"]
	event["1521__oracle__banner__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.validity.end"])["min"]
	event["1521__oracle__banner__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.validity.end"])["sec"]
	event["1521__oracle__banner__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.validity.end"])["yday"]
	event["1521__oracle__banner__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.validity.end"])["wday"]
	event["1521__oracle__banner__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.validity.end"])["isdst"]
	if event["1521__oracle__banner__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["1521__oracle__banner__tls__chain__parsed__validity__end_yweek"] = (event["1521__oracle__banner__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["1521__oracle__banner__tls__chain__parsed__validity__end_yquarter"] = (event["1521__oracle__banner__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["1521__oracle__banner__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["1521__oracle__banner__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["1521__oracle__banner__tls__chain__parsed__validity__end_wday"])
	  event["1521__oracle__banner__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["1521__oracle__banner__tls__chain__parsed__validity__end_wday"])
	end
	event["1521__oracle__banner__tls__chain__parsed__validity__end"] = event["1521.oracle.banner.tls.chain.parsed.validity.end"]
	event["p1521__oracle__banner__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.validity.start"])["year"]
	event["p1521__oracle__banner__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.validity.start"])["month"]
	event["p1521__oracle__banner__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.validity.start"])["day"]
	event["p1521__oracle__banner__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.validity.start"])["hour"]
	event["p1521__oracle__banner__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.validity.start"])["min"]
	event["p1521__oracle__banner__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.validity.start"])["sec"]
	event["p1521__oracle__banner__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.validity.start"])["yday"]
	event["p1521__oracle__banner__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.validity.start"])["wday"]
	event["p1521__oracle__banner__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["p1521.oracle.banner.tls.chain.parsed.validity.start"])["isdst"]
	if event["p1521__oracle__banner__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["p1521__oracle__banner__tls__chain__parsed__validity__start_yweek"] = (event["p1521__oracle__banner__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["p1521__oracle__banner__tls__chain__parsed__validity__start_yquarter"] = (event["p1521__oracle__banner__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p1521__oracle__banner__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["p1521__oracle__banner__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p1521__oracle__banner__tls__chain__parsed__validity__start_wday"])
	  event["p1521__oracle__banner__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p1521__oracle__banner__tls__chain__parsed__validity__start_wday"])
	end
	event["p1521__oracle__banner__tls__chain__parsed__validity__start"] = event["p1521.oracle.banner.tls.chain.parsed.validity.start"]
	event["1521__oracle__banner__tls__chain__parsed__validity__start"] = event["1521.oracle.banner.tls.chain.parsed.validity.start"]
	event["1521__oracle__banner__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.validity.start"])["year"]
	event["1521__oracle__banner__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.validity.start"])["month"]
	event["1521__oracle__banner__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.validity.start"])["day"]
	event["1521__oracle__banner__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.validity.start"])["hour"]
	event["1521__oracle__banner__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.validity.start"])["min"]
	event["1521__oracle__banner__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.validity.start"])["sec"]
	event["1521__oracle__banner__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.validity.start"])["yday"]
	event["1521__oracle__banner__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.validity.start"])["wday"]
	event["1521__oracle__banner__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["1521.oracle.banner.tls.chain.parsed.validity.start"])["isdst"]
	if event["1521__oracle__banner__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["1521__oracle__banner__tls__chain__parsed__validity__start_yweek"] = (event["1521__oracle__banner__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["1521__oracle__banner__tls__chain__parsed__validity__start_yquarter"] = (event["1521__oracle__banner__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["1521__oracle__banner__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["1521__oracle__banner__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["1521__oracle__banner__tls__chain__parsed__validity__start_wday"])
	  event["1521__oracle__banner__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["1521__oracle__banner__tls__chain__parsed__validity__start_wday"])
	end
	event["1521__oracle__banner__tls__chain__parsed__validity__start"] = event["1521.oracle.banner.tls.chain.parsed.validity.start"]
	event["p1521__oracle__banner__tls__scts__timestamp_year"] = parse_timestamp(event["p1521.oracle.banner.tls.scts.timestamp"])["year"]
	event["p1521__oracle__banner__tls__scts__timestamp_month"] = parse_timestamp(event["p1521.oracle.banner.tls.scts.timestamp"])["month"]
	event["p1521__oracle__banner__tls__scts__timestamp_day"] = parse_timestamp(event["p1521.oracle.banner.tls.scts.timestamp"])["day"]
	event["p1521__oracle__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["p1521.oracle.banner.tls.scts.timestamp"])["hour"]
	event["p1521__oracle__banner__tls__scts__timestamp_min"] = parse_timestamp(event["p1521.oracle.banner.tls.scts.timestamp"])["min"]
	event["p1521__oracle__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["p1521.oracle.banner.tls.scts.timestamp"])["sec"]
	event["p1521__oracle__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["p1521.oracle.banner.tls.scts.timestamp"])["yday"]
	event["p1521__oracle__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["p1521.oracle.banner.tls.scts.timestamp"])["wday"]
	event["p1521__oracle__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["p1521.oracle.banner.tls.scts.timestamp"])["isdst"]
	if event["p1521__oracle__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["p1521__oracle__banner__tls__scts__timestamp_yweek"] = (event["p1521__oracle__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["p1521__oracle__banner__tls__scts__timestamp_yquarter"] = (event["p1521__oracle__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["p1521__oracle__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["p1521__oracle__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["p1521__oracle__banner__tls__scts__timestamp_wday"])
	  event["p1521__oracle__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["p1521__oracle__banner__tls__scts__timestamp_wday"])
	end
	event["p1521__oracle__banner__tls__scts__timestamp"] = event["p1521.oracle.banner.tls.scts.timestamp"]
	event["1521__oracle__banner__tls__scts__timestamp"] = event["1521.oracle.banner.tls.scts.timestamp"]
	event["1521__oracle__banner__tls__scts__timestamp_year"] = parse_timestamp(event["1521.oracle.banner.tls.scts.timestamp"])["year"]
	event["1521__oracle__banner__tls__scts__timestamp_month"] = parse_timestamp(event["1521.oracle.banner.tls.scts.timestamp"])["month"]
	event["1521__oracle__banner__tls__scts__timestamp_day"] = parse_timestamp(event["1521.oracle.banner.tls.scts.timestamp"])["day"]
	event["1521__oracle__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["1521.oracle.banner.tls.scts.timestamp"])["hour"]
	event["1521__oracle__banner__tls__scts__timestamp_min"] = parse_timestamp(event["1521.oracle.banner.tls.scts.timestamp"])["min"]
	event["1521__oracle__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["1521.oracle.banner.tls.scts.timestamp"])["sec"]
	event["1521__oracle__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["1521.oracle.banner.tls.scts.timestamp"])["yday"]
	event["1521__oracle__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["1521.oracle.banner.tls.scts.timestamp"])["wday"]
	event["1521__oracle__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["1521.oracle.banner.tls.scts.timestamp"])["isdst"]
	if event["1521__oracle__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["1521__oracle__banner__tls__scts__timestamp_yweek"] = (event["1521__oracle__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["1521__oracle__banner__tls__scts__timestamp_yquarter"] = (event["1521__oracle__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["1521__oracle__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["1521__oracle__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["1521__oracle__banner__tls__scts__timestamp_wday"])
	  event["1521__oracle__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["1521__oracle__banner__tls__scts__timestamp_wday"])
	end
	event["1521__oracle__banner__tls__scts__timestamp"] = event["1521.oracle.banner.tls.scts.timestamp"]
	event["p1521__oracle__banner__tls__timestamp_year"] = parse_timestamp(event["p1521.oracle.banner.tls.timestamp"])["year"]
	event["p1521__oracle__banner__tls__timestamp_month"] = parse_timestamp(event["p1521.oracle.banner.tls.timestamp"])["month"]
	event["p1521__oracle__banner__tls__timestamp_day"] = parse_timestamp(event["p1521.oracle.banner.tls.timestamp"])["day"]
	event["p1521__oracle__banner__tls__timestamp_hour"] = parse_timestamp(event["p1521.oracle.banner.tls.timestamp"])["hour"]
	event["p1521__oracle__banner__tls__timestamp_min"] = parse_timestamp(event["p1521.oracle.banner.tls.timestamp"])["min"]
	event["p1521__oracle__banner__tls__timestamp_sec"] = parse_timestamp(event["p1521.oracle.banner.tls.timestamp"])["sec"]
	event["p1521__oracle__banner__tls__timestamp_yday"] = parse_timestamp(event["p1521.oracle.banner.tls.timestamp"])["yday"]
	event["p1521__oracle__banner__tls__timestamp_wday"] = parse_timestamp(event["p1521.oracle.banner.tls.timestamp"])["wday"]
	event["p1521__oracle__banner__tls__timestamp_isdst"] = parse_timestamp(event["p1521.oracle.banner.tls.timestamp"])["isdst"]
	if event["p1521__oracle__banner__tls__timestamp_yday"] ~= nil then
	  event["p1521__oracle__banner__tls__timestamp_yweek"] = (event["p1521__oracle__banner__tls__timestamp_yday"] // 7) + 1
	  event["p1521__oracle__banner__tls__timestamp_yquarter"] = (event["p1521__oracle__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["p1521__oracle__banner__tls__timestamp_wday"] ~= nil then
	  event["p1521__oracle__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p1521__oracle__banner__tls__timestamp_wday"])
	  event["p1521__oracle__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p1521__oracle__banner__tls__timestamp_wday"])
	end
	event["p1521__oracle__banner__tls__timestamp"] = event["p1521.oracle.banner.tls.timestamp"]
	event["1521__oracle__banner__tls__timestamp"] = event["1521.oracle.banner.tls.timestamp"]
	event["1521__oracle__banner__tls__timestamp_year"] = parse_timestamp(event["1521.oracle.banner.tls.timestamp"])["year"]
	event["1521__oracle__banner__tls__timestamp_month"] = parse_timestamp(event["1521.oracle.banner.tls.timestamp"])["month"]
	event["1521__oracle__banner__tls__timestamp_day"] = parse_timestamp(event["1521.oracle.banner.tls.timestamp"])["day"]
	event["1521__oracle__banner__tls__timestamp_hour"] = parse_timestamp(event["1521.oracle.banner.tls.timestamp"])["hour"]
	event["1521__oracle__banner__tls__timestamp_min"] = parse_timestamp(event["1521.oracle.banner.tls.timestamp"])["min"]
	event["1521__oracle__banner__tls__timestamp_sec"] = parse_timestamp(event["1521.oracle.banner.tls.timestamp"])["sec"]
	event["1521__oracle__banner__tls__timestamp_yday"] = parse_timestamp(event["1521.oracle.banner.tls.timestamp"])["yday"]
	event["1521__oracle__banner__tls__timestamp_wday"] = parse_timestamp(event["1521.oracle.banner.tls.timestamp"])["wday"]
	event["1521__oracle__banner__tls__timestamp_isdst"] = parse_timestamp(event["1521.oracle.banner.tls.timestamp"])["isdst"]
	if event["1521__oracle__banner__tls__timestamp_yday"] ~= nil then
	  event["1521__oracle__banner__tls__timestamp_yweek"] = (event["1521__oracle__banner__tls__timestamp_yday"] // 7) + 1
	  event["1521__oracle__banner__tls__timestamp_yquarter"] = (event["1521__oracle__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["1521__oracle__banner__tls__timestamp_wday"] ~= nil then
	  event["1521__oracle__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["1521__oracle__banner__tls__timestamp_wday"])
	  event["1521__oracle__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["1521__oracle__banner__tls__timestamp_wday"])
	end
	event["1521__oracle__banner__tls__timestamp"] = event["1521.oracle.banner.tls.timestamp"]
	event["p3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p3306.mysql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["3306.mysql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["3306__mysql__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["3306.mysql.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p3306__mysql__banner__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.validity.end"])["year"]
	event["p3306__mysql__banner__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.validity.end"])["month"]
	event["p3306__mysql__banner__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.validity.end"])["day"]
	event["p3306__mysql__banner__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.validity.end"])["hour"]
	event["p3306__mysql__banner__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.validity.end"])["min"]
	event["p3306__mysql__banner__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.validity.end"])["sec"]
	event["p3306__mysql__banner__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.validity.end"])["yday"]
	event["p3306__mysql__banner__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.validity.end"])["wday"]
	event["p3306__mysql__banner__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.validity.end"])["isdst"]
	if event["p3306__mysql__banner__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p3306__mysql__banner__tls__certificate__parsed__validity__end_yweek"] = (event["p3306__mysql__banner__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p3306__mysql__banner__tls__certificate__parsed__validity__end_yquarter"] = (event["p3306__mysql__banner__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p3306__mysql__banner__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p3306__mysql__banner__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p3306__mysql__banner__tls__certificate__parsed__validity__end_wday"])
	  event["p3306__mysql__banner__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p3306__mysql__banner__tls__certificate__parsed__validity__end_wday"])
	end
	event["p3306__mysql__banner__tls__certificate__parsed__validity__end"] = event["p3306.mysql.banner.tls.certificate.parsed.validity.end"]
	event["3306__mysql__banner__tls__certificate__parsed__validity__end"] = event["3306.mysql.banner.tls.certificate.parsed.validity.end"]
	event["3306__mysql__banner__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.validity.end"])["year"]
	event["3306__mysql__banner__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.validity.end"])["month"]
	event["3306__mysql__banner__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.validity.end"])["day"]
	event["3306__mysql__banner__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.validity.end"])["hour"]
	event["3306__mysql__banner__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.validity.end"])["min"]
	event["3306__mysql__banner__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.validity.end"])["sec"]
	event["3306__mysql__banner__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.validity.end"])["yday"]
	event["3306__mysql__banner__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.validity.end"])["wday"]
	event["3306__mysql__banner__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.validity.end"])["isdst"]
	if event["3306__mysql__banner__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["3306__mysql__banner__tls__certificate__parsed__validity__end_yweek"] = (event["3306__mysql__banner__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["3306__mysql__banner__tls__certificate__parsed__validity__end_yquarter"] = (event["3306__mysql__banner__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["3306__mysql__banner__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["3306__mysql__banner__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["3306__mysql__banner__tls__certificate__parsed__validity__end_wday"])
	  event["3306__mysql__banner__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["3306__mysql__banner__tls__certificate__parsed__validity__end_wday"])
	end
	event["3306__mysql__banner__tls__certificate__parsed__validity__end"] = event["3306.mysql.banner.tls.certificate.parsed.validity.end"]
	event["p3306__mysql__banner__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.validity.start"])["year"]
	event["p3306__mysql__banner__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.validity.start"])["month"]
	event["p3306__mysql__banner__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.validity.start"])["day"]
	event["p3306__mysql__banner__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.validity.start"])["hour"]
	event["p3306__mysql__banner__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.validity.start"])["min"]
	event["p3306__mysql__banner__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.validity.start"])["sec"]
	event["p3306__mysql__banner__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.validity.start"])["yday"]
	event["p3306__mysql__banner__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.validity.start"])["wday"]
	event["p3306__mysql__banner__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p3306.mysql.banner.tls.certificate.parsed.validity.start"])["isdst"]
	if event["p3306__mysql__banner__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p3306__mysql__banner__tls__certificate__parsed__validity__start_yweek"] = (event["p3306__mysql__banner__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p3306__mysql__banner__tls__certificate__parsed__validity__start_yquarter"] = (event["p3306__mysql__banner__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p3306__mysql__banner__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p3306__mysql__banner__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p3306__mysql__banner__tls__certificate__parsed__validity__start_wday"])
	  event["p3306__mysql__banner__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p3306__mysql__banner__tls__certificate__parsed__validity__start_wday"])
	end
	event["p3306__mysql__banner__tls__certificate__parsed__validity__start"] = event["p3306.mysql.banner.tls.certificate.parsed.validity.start"]
	event["3306__mysql__banner__tls__certificate__parsed__validity__start"] = event["3306.mysql.banner.tls.certificate.parsed.validity.start"]
	event["3306__mysql__banner__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.validity.start"])["year"]
	event["3306__mysql__banner__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.validity.start"])["month"]
	event["3306__mysql__banner__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.validity.start"])["day"]
	event["3306__mysql__banner__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.validity.start"])["hour"]
	event["3306__mysql__banner__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.validity.start"])["min"]
	event["3306__mysql__banner__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.validity.start"])["sec"]
	event["3306__mysql__banner__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.validity.start"])["yday"]
	event["3306__mysql__banner__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.validity.start"])["wday"]
	event["3306__mysql__banner__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["3306.mysql.banner.tls.certificate.parsed.validity.start"])["isdst"]
	if event["3306__mysql__banner__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["3306__mysql__banner__tls__certificate__parsed__validity__start_yweek"] = (event["3306__mysql__banner__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["3306__mysql__banner__tls__certificate__parsed__validity__start_yquarter"] = (event["3306__mysql__banner__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["3306__mysql__banner__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["3306__mysql__banner__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["3306__mysql__banner__tls__certificate__parsed__validity__start_wday"])
	  event["3306__mysql__banner__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["3306__mysql__banner__tls__certificate__parsed__validity__start_wday"])
	end
	event["3306__mysql__banner__tls__certificate__parsed__validity__start"] = event["3306.mysql.banner.tls.certificate.parsed.validity.start"]
	event["p3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p3306.mysql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["3306.mysql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["3306__mysql__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["3306.mysql.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p3306__mysql__banner__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.validity.end"])["year"]
	event["p3306__mysql__banner__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.validity.end"])["month"]
	event["p3306__mysql__banner__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.validity.end"])["day"]
	event["p3306__mysql__banner__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.validity.end"])["hour"]
	event["p3306__mysql__banner__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.validity.end"])["min"]
	event["p3306__mysql__banner__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.validity.end"])["sec"]
	event["p3306__mysql__banner__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.validity.end"])["yday"]
	event["p3306__mysql__banner__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.validity.end"])["wday"]
	event["p3306__mysql__banner__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.validity.end"])["isdst"]
	if event["p3306__mysql__banner__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["p3306__mysql__banner__tls__chain__parsed__validity__end_yweek"] = (event["p3306__mysql__banner__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["p3306__mysql__banner__tls__chain__parsed__validity__end_yquarter"] = (event["p3306__mysql__banner__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p3306__mysql__banner__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["p3306__mysql__banner__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p3306__mysql__banner__tls__chain__parsed__validity__end_wday"])
	  event["p3306__mysql__banner__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p3306__mysql__banner__tls__chain__parsed__validity__end_wday"])
	end
	event["p3306__mysql__banner__tls__chain__parsed__validity__end"] = event["p3306.mysql.banner.tls.chain.parsed.validity.end"]
	event["3306__mysql__banner__tls__chain__parsed__validity__end"] = event["3306.mysql.banner.tls.chain.parsed.validity.end"]
	event["3306__mysql__banner__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.validity.end"])["year"]
	event["3306__mysql__banner__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.validity.end"])["month"]
	event["3306__mysql__banner__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.validity.end"])["day"]
	event["3306__mysql__banner__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.validity.end"])["hour"]
	event["3306__mysql__banner__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.validity.end"])["min"]
	event["3306__mysql__banner__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.validity.end"])["sec"]
	event["3306__mysql__banner__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.validity.end"])["yday"]
	event["3306__mysql__banner__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.validity.end"])["wday"]
	event["3306__mysql__banner__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.validity.end"])["isdst"]
	if event["3306__mysql__banner__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["3306__mysql__banner__tls__chain__parsed__validity__end_yweek"] = (event["3306__mysql__banner__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["3306__mysql__banner__tls__chain__parsed__validity__end_yquarter"] = (event["3306__mysql__banner__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["3306__mysql__banner__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["3306__mysql__banner__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["3306__mysql__banner__tls__chain__parsed__validity__end_wday"])
	  event["3306__mysql__banner__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["3306__mysql__banner__tls__chain__parsed__validity__end_wday"])
	end
	event["3306__mysql__banner__tls__chain__parsed__validity__end"] = event["3306.mysql.banner.tls.chain.parsed.validity.end"]
	event["p3306__mysql__banner__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.validity.start"])["year"]
	event["p3306__mysql__banner__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.validity.start"])["month"]
	event["p3306__mysql__banner__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.validity.start"])["day"]
	event["p3306__mysql__banner__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.validity.start"])["hour"]
	event["p3306__mysql__banner__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.validity.start"])["min"]
	event["p3306__mysql__banner__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.validity.start"])["sec"]
	event["p3306__mysql__banner__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.validity.start"])["yday"]
	event["p3306__mysql__banner__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.validity.start"])["wday"]
	event["p3306__mysql__banner__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["p3306.mysql.banner.tls.chain.parsed.validity.start"])["isdst"]
	if event["p3306__mysql__banner__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["p3306__mysql__banner__tls__chain__parsed__validity__start_yweek"] = (event["p3306__mysql__banner__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["p3306__mysql__banner__tls__chain__parsed__validity__start_yquarter"] = (event["p3306__mysql__banner__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p3306__mysql__banner__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["p3306__mysql__banner__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p3306__mysql__banner__tls__chain__parsed__validity__start_wday"])
	  event["p3306__mysql__banner__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p3306__mysql__banner__tls__chain__parsed__validity__start_wday"])
	end
	event["p3306__mysql__banner__tls__chain__parsed__validity__start"] = event["p3306.mysql.banner.tls.chain.parsed.validity.start"]
	event["3306__mysql__banner__tls__chain__parsed__validity__start"] = event["3306.mysql.banner.tls.chain.parsed.validity.start"]
	event["3306__mysql__banner__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.validity.start"])["year"]
	event["3306__mysql__banner__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.validity.start"])["month"]
	event["3306__mysql__banner__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.validity.start"])["day"]
	event["3306__mysql__banner__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.validity.start"])["hour"]
	event["3306__mysql__banner__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.validity.start"])["min"]
	event["3306__mysql__banner__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.validity.start"])["sec"]
	event["3306__mysql__banner__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.validity.start"])["yday"]
	event["3306__mysql__banner__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.validity.start"])["wday"]
	event["3306__mysql__banner__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["3306.mysql.banner.tls.chain.parsed.validity.start"])["isdst"]
	if event["3306__mysql__banner__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["3306__mysql__banner__tls__chain__parsed__validity__start_yweek"] = (event["3306__mysql__banner__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["3306__mysql__banner__tls__chain__parsed__validity__start_yquarter"] = (event["3306__mysql__banner__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["3306__mysql__banner__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["3306__mysql__banner__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["3306__mysql__banner__tls__chain__parsed__validity__start_wday"])
	  event["3306__mysql__banner__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["3306__mysql__banner__tls__chain__parsed__validity__start_wday"])
	end
	event["3306__mysql__banner__tls__chain__parsed__validity__start"] = event["3306.mysql.banner.tls.chain.parsed.validity.start"]
	event["p3306__mysql__banner__tls__scts__timestamp_year"] = parse_timestamp(event["p3306.mysql.banner.tls.scts.timestamp"])["year"]
	event["p3306__mysql__banner__tls__scts__timestamp_month"] = parse_timestamp(event["p3306.mysql.banner.tls.scts.timestamp"])["month"]
	event["p3306__mysql__banner__tls__scts__timestamp_day"] = parse_timestamp(event["p3306.mysql.banner.tls.scts.timestamp"])["day"]
	event["p3306__mysql__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["p3306.mysql.banner.tls.scts.timestamp"])["hour"]
	event["p3306__mysql__banner__tls__scts__timestamp_min"] = parse_timestamp(event["p3306.mysql.banner.tls.scts.timestamp"])["min"]
	event["p3306__mysql__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["p3306.mysql.banner.tls.scts.timestamp"])["sec"]
	event["p3306__mysql__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["p3306.mysql.banner.tls.scts.timestamp"])["yday"]
	event["p3306__mysql__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["p3306.mysql.banner.tls.scts.timestamp"])["wday"]
	event["p3306__mysql__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["p3306.mysql.banner.tls.scts.timestamp"])["isdst"]
	if event["p3306__mysql__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["p3306__mysql__banner__tls__scts__timestamp_yweek"] = (event["p3306__mysql__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["p3306__mysql__banner__tls__scts__timestamp_yquarter"] = (event["p3306__mysql__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["p3306__mysql__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["p3306__mysql__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["p3306__mysql__banner__tls__scts__timestamp_wday"])
	  event["p3306__mysql__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["p3306__mysql__banner__tls__scts__timestamp_wday"])
	end
	event["p3306__mysql__banner__tls__scts__timestamp"] = event["p3306.mysql.banner.tls.scts.timestamp"]
	event["3306__mysql__banner__tls__scts__timestamp"] = event["3306.mysql.banner.tls.scts.timestamp"]
	event["3306__mysql__banner__tls__scts__timestamp_year"] = parse_timestamp(event["3306.mysql.banner.tls.scts.timestamp"])["year"]
	event["3306__mysql__banner__tls__scts__timestamp_month"] = parse_timestamp(event["3306.mysql.banner.tls.scts.timestamp"])["month"]
	event["3306__mysql__banner__tls__scts__timestamp_day"] = parse_timestamp(event["3306.mysql.banner.tls.scts.timestamp"])["day"]
	event["3306__mysql__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["3306.mysql.banner.tls.scts.timestamp"])["hour"]
	event["3306__mysql__banner__tls__scts__timestamp_min"] = parse_timestamp(event["3306.mysql.banner.tls.scts.timestamp"])["min"]
	event["3306__mysql__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["3306.mysql.banner.tls.scts.timestamp"])["sec"]
	event["3306__mysql__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["3306.mysql.banner.tls.scts.timestamp"])["yday"]
	event["3306__mysql__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["3306.mysql.banner.tls.scts.timestamp"])["wday"]
	event["3306__mysql__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["3306.mysql.banner.tls.scts.timestamp"])["isdst"]
	if event["3306__mysql__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["3306__mysql__banner__tls__scts__timestamp_yweek"] = (event["3306__mysql__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["3306__mysql__banner__tls__scts__timestamp_yquarter"] = (event["3306__mysql__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["3306__mysql__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["3306__mysql__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["3306__mysql__banner__tls__scts__timestamp_wday"])
	  event["3306__mysql__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["3306__mysql__banner__tls__scts__timestamp_wday"])
	end
	event["3306__mysql__banner__tls__scts__timestamp"] = event["3306.mysql.banner.tls.scts.timestamp"]
	event["p3306__mysql__banner__tls__timestamp_year"] = parse_timestamp(event["p3306.mysql.banner.tls.timestamp"])["year"]
	event["p3306__mysql__banner__tls__timestamp_month"] = parse_timestamp(event["p3306.mysql.banner.tls.timestamp"])["month"]
	event["p3306__mysql__banner__tls__timestamp_day"] = parse_timestamp(event["p3306.mysql.banner.tls.timestamp"])["day"]
	event["p3306__mysql__banner__tls__timestamp_hour"] = parse_timestamp(event["p3306.mysql.banner.tls.timestamp"])["hour"]
	event["p3306__mysql__banner__tls__timestamp_min"] = parse_timestamp(event["p3306.mysql.banner.tls.timestamp"])["min"]
	event["p3306__mysql__banner__tls__timestamp_sec"] = parse_timestamp(event["p3306.mysql.banner.tls.timestamp"])["sec"]
	event["p3306__mysql__banner__tls__timestamp_yday"] = parse_timestamp(event["p3306.mysql.banner.tls.timestamp"])["yday"]
	event["p3306__mysql__banner__tls__timestamp_wday"] = parse_timestamp(event["p3306.mysql.banner.tls.timestamp"])["wday"]
	event["p3306__mysql__banner__tls__timestamp_isdst"] = parse_timestamp(event["p3306.mysql.banner.tls.timestamp"])["isdst"]
	if event["p3306__mysql__banner__tls__timestamp_yday"] ~= nil then
	  event["p3306__mysql__banner__tls__timestamp_yweek"] = (event["p3306__mysql__banner__tls__timestamp_yday"] // 7) + 1
	  event["p3306__mysql__banner__tls__timestamp_yquarter"] = (event["p3306__mysql__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["p3306__mysql__banner__tls__timestamp_wday"] ~= nil then
	  event["p3306__mysql__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p3306__mysql__banner__tls__timestamp_wday"])
	  event["p3306__mysql__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p3306__mysql__banner__tls__timestamp_wday"])
	end
	event["p3306__mysql__banner__tls__timestamp"] = event["p3306.mysql.banner.tls.timestamp"]
	event["3306__mysql__banner__tls__timestamp"] = event["3306.mysql.banner.tls.timestamp"]
	event["3306__mysql__banner__tls__timestamp_year"] = parse_timestamp(event["3306.mysql.banner.tls.timestamp"])["year"]
	event["3306__mysql__banner__tls__timestamp_month"] = parse_timestamp(event["3306.mysql.banner.tls.timestamp"])["month"]
	event["3306__mysql__banner__tls__timestamp_day"] = parse_timestamp(event["3306.mysql.banner.tls.timestamp"])["day"]
	event["3306__mysql__banner__tls__timestamp_hour"] = parse_timestamp(event["3306.mysql.banner.tls.timestamp"])["hour"]
	event["3306__mysql__banner__tls__timestamp_min"] = parse_timestamp(event["3306.mysql.banner.tls.timestamp"])["min"]
	event["3306__mysql__banner__tls__timestamp_sec"] = parse_timestamp(event["3306.mysql.banner.tls.timestamp"])["sec"]
	event["3306__mysql__banner__tls__timestamp_yday"] = parse_timestamp(event["3306.mysql.banner.tls.timestamp"])["yday"]
	event["3306__mysql__banner__tls__timestamp_wday"] = parse_timestamp(event["3306.mysql.banner.tls.timestamp"])["wday"]
	event["3306__mysql__banner__tls__timestamp_isdst"] = parse_timestamp(event["3306.mysql.banner.tls.timestamp"])["isdst"]
	if event["3306__mysql__banner__tls__timestamp_yday"] ~= nil then
	  event["3306__mysql__banner__tls__timestamp_yweek"] = (event["3306__mysql__banner__tls__timestamp_yday"] // 7) + 1
	  event["3306__mysql__banner__tls__timestamp_yquarter"] = (event["3306__mysql__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["3306__mysql__banner__tls__timestamp_wday"] ~= nil then
	  event["3306__mysql__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["3306__mysql__banner__tls__timestamp_wday"])
	  event["3306__mysql__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["3306__mysql__banner__tls__timestamp_wday"])
	end
	event["3306__mysql__banner__tls__timestamp"] = event["3306.mysql.banner.tls.timestamp"]
	event["p5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p5432.postgres.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["5432.postgres.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["5432__postgres__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["5432.postgres.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p5432__postgres__banner__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.validity.end"])["year"]
	event["p5432__postgres__banner__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.validity.end"])["month"]
	event["p5432__postgres__banner__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.validity.end"])["day"]
	event["p5432__postgres__banner__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.validity.end"])["hour"]
	event["p5432__postgres__banner__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.validity.end"])["min"]
	event["p5432__postgres__banner__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.validity.end"])["sec"]
	event["p5432__postgres__banner__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.validity.end"])["yday"]
	event["p5432__postgres__banner__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.validity.end"])["wday"]
	event["p5432__postgres__banner__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.validity.end"])["isdst"]
	if event["p5432__postgres__banner__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p5432__postgres__banner__tls__certificate__parsed__validity__end_yweek"] = (event["p5432__postgres__banner__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p5432__postgres__banner__tls__certificate__parsed__validity__end_yquarter"] = (event["p5432__postgres__banner__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p5432__postgres__banner__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p5432__postgres__banner__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p5432__postgres__banner__tls__certificate__parsed__validity__end_wday"])
	  event["p5432__postgres__banner__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p5432__postgres__banner__tls__certificate__parsed__validity__end_wday"])
	end
	event["p5432__postgres__banner__tls__certificate__parsed__validity__end"] = event["p5432.postgres.banner.tls.certificate.parsed.validity.end"]
	event["5432__postgres__banner__tls__certificate__parsed__validity__end"] = event["5432.postgres.banner.tls.certificate.parsed.validity.end"]
	event["5432__postgres__banner__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.validity.end"])["year"]
	event["5432__postgres__banner__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.validity.end"])["month"]
	event["5432__postgres__banner__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.validity.end"])["day"]
	event["5432__postgres__banner__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.validity.end"])["hour"]
	event["5432__postgres__banner__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.validity.end"])["min"]
	event["5432__postgres__banner__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.validity.end"])["sec"]
	event["5432__postgres__banner__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.validity.end"])["yday"]
	event["5432__postgres__banner__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.validity.end"])["wday"]
	event["5432__postgres__banner__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.validity.end"])["isdst"]
	if event["5432__postgres__banner__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["5432__postgres__banner__tls__certificate__parsed__validity__end_yweek"] = (event["5432__postgres__banner__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["5432__postgres__banner__tls__certificate__parsed__validity__end_yquarter"] = (event["5432__postgres__banner__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["5432__postgres__banner__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["5432__postgres__banner__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["5432__postgres__banner__tls__certificate__parsed__validity__end_wday"])
	  event["5432__postgres__banner__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["5432__postgres__banner__tls__certificate__parsed__validity__end_wday"])
	end
	event["5432__postgres__banner__tls__certificate__parsed__validity__end"] = event["5432.postgres.banner.tls.certificate.parsed.validity.end"]
	event["p5432__postgres__banner__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.validity.start"])["year"]
	event["p5432__postgres__banner__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.validity.start"])["month"]
	event["p5432__postgres__banner__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.validity.start"])["day"]
	event["p5432__postgres__banner__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.validity.start"])["hour"]
	event["p5432__postgres__banner__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.validity.start"])["min"]
	event["p5432__postgres__banner__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.validity.start"])["sec"]
	event["p5432__postgres__banner__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.validity.start"])["yday"]
	event["p5432__postgres__banner__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.validity.start"])["wday"]
	event["p5432__postgres__banner__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p5432.postgres.banner.tls.certificate.parsed.validity.start"])["isdst"]
	if event["p5432__postgres__banner__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p5432__postgres__banner__tls__certificate__parsed__validity__start_yweek"] = (event["p5432__postgres__banner__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p5432__postgres__banner__tls__certificate__parsed__validity__start_yquarter"] = (event["p5432__postgres__banner__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p5432__postgres__banner__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p5432__postgres__banner__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p5432__postgres__banner__tls__certificate__parsed__validity__start_wday"])
	  event["p5432__postgres__banner__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p5432__postgres__banner__tls__certificate__parsed__validity__start_wday"])
	end
	event["p5432__postgres__banner__tls__certificate__parsed__validity__start"] = event["p5432.postgres.banner.tls.certificate.parsed.validity.start"]
	event["5432__postgres__banner__tls__certificate__parsed__validity__start"] = event["5432.postgres.banner.tls.certificate.parsed.validity.start"]
	event["5432__postgres__banner__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.validity.start"])["year"]
	event["5432__postgres__banner__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.validity.start"])["month"]
	event["5432__postgres__banner__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.validity.start"])["day"]
	event["5432__postgres__banner__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.validity.start"])["hour"]
	event["5432__postgres__banner__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.validity.start"])["min"]
	event["5432__postgres__banner__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.validity.start"])["sec"]
	event["5432__postgres__banner__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.validity.start"])["yday"]
	event["5432__postgres__banner__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.validity.start"])["wday"]
	event["5432__postgres__banner__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["5432.postgres.banner.tls.certificate.parsed.validity.start"])["isdst"]
	if event["5432__postgres__banner__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["5432__postgres__banner__tls__certificate__parsed__validity__start_yweek"] = (event["5432__postgres__banner__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["5432__postgres__banner__tls__certificate__parsed__validity__start_yquarter"] = (event["5432__postgres__banner__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["5432__postgres__banner__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["5432__postgres__banner__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["5432__postgres__banner__tls__certificate__parsed__validity__start_wday"])
	  event["5432__postgres__banner__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["5432__postgres__banner__tls__certificate__parsed__validity__start_wday"])
	end
	event["5432__postgres__banner__tls__certificate__parsed__validity__start"] = event["5432.postgres.banner.tls.certificate.parsed.validity.start"]
	event["p5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p5432.postgres.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["5432.postgres.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["5432__postgres__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["5432.postgres.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p5432__postgres__banner__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.validity.end"])["year"]
	event["p5432__postgres__banner__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.validity.end"])["month"]
	event["p5432__postgres__banner__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.validity.end"])["day"]
	event["p5432__postgres__banner__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.validity.end"])["hour"]
	event["p5432__postgres__banner__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.validity.end"])["min"]
	event["p5432__postgres__banner__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.validity.end"])["sec"]
	event["p5432__postgres__banner__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.validity.end"])["yday"]
	event["p5432__postgres__banner__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.validity.end"])["wday"]
	event["p5432__postgres__banner__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.validity.end"])["isdst"]
	if event["p5432__postgres__banner__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["p5432__postgres__banner__tls__chain__parsed__validity__end_yweek"] = (event["p5432__postgres__banner__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["p5432__postgres__banner__tls__chain__parsed__validity__end_yquarter"] = (event["p5432__postgres__banner__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p5432__postgres__banner__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["p5432__postgres__banner__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p5432__postgres__banner__tls__chain__parsed__validity__end_wday"])
	  event["p5432__postgres__banner__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p5432__postgres__banner__tls__chain__parsed__validity__end_wday"])
	end
	event["p5432__postgres__banner__tls__chain__parsed__validity__end"] = event["p5432.postgres.banner.tls.chain.parsed.validity.end"]
	event["5432__postgres__banner__tls__chain__parsed__validity__end"] = event["5432.postgres.banner.tls.chain.parsed.validity.end"]
	event["5432__postgres__banner__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.validity.end"])["year"]
	event["5432__postgres__banner__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.validity.end"])["month"]
	event["5432__postgres__banner__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.validity.end"])["day"]
	event["5432__postgres__banner__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.validity.end"])["hour"]
	event["5432__postgres__banner__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.validity.end"])["min"]
	event["5432__postgres__banner__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.validity.end"])["sec"]
	event["5432__postgres__banner__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.validity.end"])["yday"]
	event["5432__postgres__banner__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.validity.end"])["wday"]
	event["5432__postgres__banner__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.validity.end"])["isdst"]
	if event["5432__postgres__banner__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["5432__postgres__banner__tls__chain__parsed__validity__end_yweek"] = (event["5432__postgres__banner__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["5432__postgres__banner__tls__chain__parsed__validity__end_yquarter"] = (event["5432__postgres__banner__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["5432__postgres__banner__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["5432__postgres__banner__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["5432__postgres__banner__tls__chain__parsed__validity__end_wday"])
	  event["5432__postgres__banner__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["5432__postgres__banner__tls__chain__parsed__validity__end_wday"])
	end
	event["5432__postgres__banner__tls__chain__parsed__validity__end"] = event["5432.postgres.banner.tls.chain.parsed.validity.end"]
	event["p5432__postgres__banner__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.validity.start"])["year"]
	event["p5432__postgres__banner__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.validity.start"])["month"]
	event["p5432__postgres__banner__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.validity.start"])["day"]
	event["p5432__postgres__banner__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.validity.start"])["hour"]
	event["p5432__postgres__banner__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.validity.start"])["min"]
	event["p5432__postgres__banner__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.validity.start"])["sec"]
	event["p5432__postgres__banner__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.validity.start"])["yday"]
	event["p5432__postgres__banner__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.validity.start"])["wday"]
	event["p5432__postgres__banner__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["p5432.postgres.banner.tls.chain.parsed.validity.start"])["isdst"]
	if event["p5432__postgres__banner__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["p5432__postgres__banner__tls__chain__parsed__validity__start_yweek"] = (event["p5432__postgres__banner__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["p5432__postgres__banner__tls__chain__parsed__validity__start_yquarter"] = (event["p5432__postgres__banner__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p5432__postgres__banner__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["p5432__postgres__banner__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p5432__postgres__banner__tls__chain__parsed__validity__start_wday"])
	  event["p5432__postgres__banner__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p5432__postgres__banner__tls__chain__parsed__validity__start_wday"])
	end
	event["p5432__postgres__banner__tls__chain__parsed__validity__start"] = event["p5432.postgres.banner.tls.chain.parsed.validity.start"]
	event["5432__postgres__banner__tls__chain__parsed__validity__start"] = event["5432.postgres.banner.tls.chain.parsed.validity.start"]
	event["5432__postgres__banner__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.validity.start"])["year"]
	event["5432__postgres__banner__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.validity.start"])["month"]
	event["5432__postgres__banner__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.validity.start"])["day"]
	event["5432__postgres__banner__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.validity.start"])["hour"]
	event["5432__postgres__banner__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.validity.start"])["min"]
	event["5432__postgres__banner__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.validity.start"])["sec"]
	event["5432__postgres__banner__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.validity.start"])["yday"]
	event["5432__postgres__banner__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.validity.start"])["wday"]
	event["5432__postgres__banner__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["5432.postgres.banner.tls.chain.parsed.validity.start"])["isdst"]
	if event["5432__postgres__banner__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["5432__postgres__banner__tls__chain__parsed__validity__start_yweek"] = (event["5432__postgres__banner__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["5432__postgres__banner__tls__chain__parsed__validity__start_yquarter"] = (event["5432__postgres__banner__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["5432__postgres__banner__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["5432__postgres__banner__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["5432__postgres__banner__tls__chain__parsed__validity__start_wday"])
	  event["5432__postgres__banner__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["5432__postgres__banner__tls__chain__parsed__validity__start_wday"])
	end
	event["5432__postgres__banner__tls__chain__parsed__validity__start"] = event["5432.postgres.banner.tls.chain.parsed.validity.start"]
	event["p5432__postgres__banner__tls__scts__timestamp_year"] = parse_timestamp(event["p5432.postgres.banner.tls.scts.timestamp"])["year"]
	event["p5432__postgres__banner__tls__scts__timestamp_month"] = parse_timestamp(event["p5432.postgres.banner.tls.scts.timestamp"])["month"]
	event["p5432__postgres__banner__tls__scts__timestamp_day"] = parse_timestamp(event["p5432.postgres.banner.tls.scts.timestamp"])["day"]
	event["p5432__postgres__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["p5432.postgres.banner.tls.scts.timestamp"])["hour"]
	event["p5432__postgres__banner__tls__scts__timestamp_min"] = parse_timestamp(event["p5432.postgres.banner.tls.scts.timestamp"])["min"]
	event["p5432__postgres__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["p5432.postgres.banner.tls.scts.timestamp"])["sec"]
	event["p5432__postgres__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["p5432.postgres.banner.tls.scts.timestamp"])["yday"]
	event["p5432__postgres__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["p5432.postgres.banner.tls.scts.timestamp"])["wday"]
	event["p5432__postgres__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["p5432.postgres.banner.tls.scts.timestamp"])["isdst"]
	if event["p5432__postgres__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["p5432__postgres__banner__tls__scts__timestamp_yweek"] = (event["p5432__postgres__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["p5432__postgres__banner__tls__scts__timestamp_yquarter"] = (event["p5432__postgres__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["p5432__postgres__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["p5432__postgres__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["p5432__postgres__banner__tls__scts__timestamp_wday"])
	  event["p5432__postgres__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["p5432__postgres__banner__tls__scts__timestamp_wday"])
	end
	event["p5432__postgres__banner__tls__scts__timestamp"] = event["p5432.postgres.banner.tls.scts.timestamp"]
	event["5432__postgres__banner__tls__scts__timestamp"] = event["5432.postgres.banner.tls.scts.timestamp"]
	event["5432__postgres__banner__tls__scts__timestamp_year"] = parse_timestamp(event["5432.postgres.banner.tls.scts.timestamp"])["year"]
	event["5432__postgres__banner__tls__scts__timestamp_month"] = parse_timestamp(event["5432.postgres.banner.tls.scts.timestamp"])["month"]
	event["5432__postgres__banner__tls__scts__timestamp_day"] = parse_timestamp(event["5432.postgres.banner.tls.scts.timestamp"])["day"]
	event["5432__postgres__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["5432.postgres.banner.tls.scts.timestamp"])["hour"]
	event["5432__postgres__banner__tls__scts__timestamp_min"] = parse_timestamp(event["5432.postgres.banner.tls.scts.timestamp"])["min"]
	event["5432__postgres__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["5432.postgres.banner.tls.scts.timestamp"])["sec"]
	event["5432__postgres__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["5432.postgres.banner.tls.scts.timestamp"])["yday"]
	event["5432__postgres__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["5432.postgres.banner.tls.scts.timestamp"])["wday"]
	event["5432__postgres__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["5432.postgres.banner.tls.scts.timestamp"])["isdst"]
	if event["5432__postgres__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["5432__postgres__banner__tls__scts__timestamp_yweek"] = (event["5432__postgres__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["5432__postgres__banner__tls__scts__timestamp_yquarter"] = (event["5432__postgres__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["5432__postgres__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["5432__postgres__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["5432__postgres__banner__tls__scts__timestamp_wday"])
	  event["5432__postgres__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["5432__postgres__banner__tls__scts__timestamp_wday"])
	end
	event["5432__postgres__banner__tls__scts__timestamp"] = event["5432.postgres.banner.tls.scts.timestamp"]
	event["p5432__postgres__banner__tls__timestamp_year"] = parse_timestamp(event["p5432.postgres.banner.tls.timestamp"])["year"]
	event["p5432__postgres__banner__tls__timestamp_month"] = parse_timestamp(event["p5432.postgres.banner.tls.timestamp"])["month"]
	event["p5432__postgres__banner__tls__timestamp_day"] = parse_timestamp(event["p5432.postgres.banner.tls.timestamp"])["day"]
	event["p5432__postgres__banner__tls__timestamp_hour"] = parse_timestamp(event["p5432.postgres.banner.tls.timestamp"])["hour"]
	event["p5432__postgres__banner__tls__timestamp_min"] = parse_timestamp(event["p5432.postgres.banner.tls.timestamp"])["min"]
	event["p5432__postgres__banner__tls__timestamp_sec"] = parse_timestamp(event["p5432.postgres.banner.tls.timestamp"])["sec"]
	event["p5432__postgres__banner__tls__timestamp_yday"] = parse_timestamp(event["p5432.postgres.banner.tls.timestamp"])["yday"]
	event["p5432__postgres__banner__tls__timestamp_wday"] = parse_timestamp(event["p5432.postgres.banner.tls.timestamp"])["wday"]
	event["p5432__postgres__banner__tls__timestamp_isdst"] = parse_timestamp(event["p5432.postgres.banner.tls.timestamp"])["isdst"]
	if event["p5432__postgres__banner__tls__timestamp_yday"] ~= nil then
	  event["p5432__postgres__banner__tls__timestamp_yweek"] = (event["p5432__postgres__banner__tls__timestamp_yday"] // 7) + 1
	  event["p5432__postgres__banner__tls__timestamp_yquarter"] = (event["p5432__postgres__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["p5432__postgres__banner__tls__timestamp_wday"] ~= nil then
	  event["p5432__postgres__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p5432__postgres__banner__tls__timestamp_wday"])
	  event["p5432__postgres__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p5432__postgres__banner__tls__timestamp_wday"])
	end
	event["p5432__postgres__banner__tls__timestamp"] = event["p5432.postgres.banner.tls.timestamp"]
	event["5432__postgres__banner__tls__timestamp"] = event["5432.postgres.banner.tls.timestamp"]
	event["5432__postgres__banner__tls__timestamp_year"] = parse_timestamp(event["5432.postgres.banner.tls.timestamp"])["year"]
	event["5432__postgres__banner__tls__timestamp_month"] = parse_timestamp(event["5432.postgres.banner.tls.timestamp"])["month"]
	event["5432__postgres__banner__tls__timestamp_day"] = parse_timestamp(event["5432.postgres.banner.tls.timestamp"])["day"]
	event["5432__postgres__banner__tls__timestamp_hour"] = parse_timestamp(event["5432.postgres.banner.tls.timestamp"])["hour"]
	event["5432__postgres__banner__tls__timestamp_min"] = parse_timestamp(event["5432.postgres.banner.tls.timestamp"])["min"]
	event["5432__postgres__banner__tls__timestamp_sec"] = parse_timestamp(event["5432.postgres.banner.tls.timestamp"])["sec"]
	event["5432__postgres__banner__tls__timestamp_yday"] = parse_timestamp(event["5432.postgres.banner.tls.timestamp"])["yday"]
	event["5432__postgres__banner__tls__timestamp_wday"] = parse_timestamp(event["5432.postgres.banner.tls.timestamp"])["wday"]
	event["5432__postgres__banner__tls__timestamp_isdst"] = parse_timestamp(event["5432.postgres.banner.tls.timestamp"])["isdst"]
	if event["5432__postgres__banner__tls__timestamp_yday"] ~= nil then
	  event["5432__postgres__banner__tls__timestamp_yweek"] = (event["5432__postgres__banner__tls__timestamp_yday"] // 7) + 1
	  event["5432__postgres__banner__tls__timestamp_yquarter"] = (event["5432__postgres__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["5432__postgres__banner__tls__timestamp_wday"] ~= nil then
	  event["5432__postgres__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["5432__postgres__banner__tls__timestamp_wday"])
	  event["5432__postgres__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["5432__postgres__banner__tls__timestamp_wday"])
	end
	event["5432__postgres__banner__tls__timestamp"] = event["5432.postgres.banner.tls.timestamp"]
	event["p631__ipp__banner__attributes__values__dateTime_year"] = parse_timestamp(event["p631.ipp.banner.attributes.values.dateTime"])["year"]
	event["p631__ipp__banner__attributes__values__dateTime_month"] = parse_timestamp(event["p631.ipp.banner.attributes.values.dateTime"])["month"]
	event["p631__ipp__banner__attributes__values__dateTime_day"] = parse_timestamp(event["p631.ipp.banner.attributes.values.dateTime"])["day"]
	event["p631__ipp__banner__attributes__values__dateTime_hour"] = parse_timestamp(event["p631.ipp.banner.attributes.values.dateTime"])["hour"]
	event["p631__ipp__banner__attributes__values__dateTime_min"] = parse_timestamp(event["p631.ipp.banner.attributes.values.dateTime"])["min"]
	event["p631__ipp__banner__attributes__values__dateTime_sec"] = parse_timestamp(event["p631.ipp.banner.attributes.values.dateTime"])["sec"]
	event["p631__ipp__banner__attributes__values__dateTime_yday"] = parse_timestamp(event["p631.ipp.banner.attributes.values.dateTime"])["yday"]
	event["p631__ipp__banner__attributes__values__dateTime_wday"] = parse_timestamp(event["p631.ipp.banner.attributes.values.dateTime"])["wday"]
	event["p631__ipp__banner__attributes__values__dateTime_isdst"] = parse_timestamp(event["p631.ipp.banner.attributes.values.dateTime"])["isdst"]
	if event["p631__ipp__banner__attributes__values__dateTime_yday"] ~= nil then
	  event["p631__ipp__banner__attributes__values__dateTime_yweek"] = (event["p631__ipp__banner__attributes__values__dateTime_yday"] // 7) + 1
	  event["p631__ipp__banner__attributes__values__dateTime_yquarter"] = (event["p631__ipp__banner__attributes__values__dateTime_yday"] // 91) + 1
	end
	if event["p631__ipp__banner__attributes__values__dateTime_wday"] ~= nil then
	  event["p631__ipp__banner__attributes__values__dateTime_is_weekend"] = arr_has_value(weekends, event["p631__ipp__banner__attributes__values__dateTime_wday"])
	  event["p631__ipp__banner__attributes__values__dateTime_is_weekday"] = arr_has_value(weekdays, event["p631__ipp__banner__attributes__values__dateTime_wday"])
	end
	event["p631__ipp__banner__attributes__values__dateTime"] = event["p631.ipp.banner.attributes.values.dateTime"]
	event["631__ipp__banner__attributes__values__dateTime"] = event["631.ipp.banner.attributes.values.dateTime"]
	event["631__ipp__banner__attributes__values__dateTime_year"] = parse_timestamp(event["631.ipp.banner.attributes.values.dateTime"])["year"]
	event["631__ipp__banner__attributes__values__dateTime_month"] = parse_timestamp(event["631.ipp.banner.attributes.values.dateTime"])["month"]
	event["631__ipp__banner__attributes__values__dateTime_day"] = parse_timestamp(event["631.ipp.banner.attributes.values.dateTime"])["day"]
	event["631__ipp__banner__attributes__values__dateTime_hour"] = parse_timestamp(event["631.ipp.banner.attributes.values.dateTime"])["hour"]
	event["631__ipp__banner__attributes__values__dateTime_min"] = parse_timestamp(event["631.ipp.banner.attributes.values.dateTime"])["min"]
	event["631__ipp__banner__attributes__values__dateTime_sec"] = parse_timestamp(event["631.ipp.banner.attributes.values.dateTime"])["sec"]
	event["631__ipp__banner__attributes__values__dateTime_yday"] = parse_timestamp(event["631.ipp.banner.attributes.values.dateTime"])["yday"]
	event["631__ipp__banner__attributes__values__dateTime_wday"] = parse_timestamp(event["631.ipp.banner.attributes.values.dateTime"])["wday"]
	event["631__ipp__banner__attributes__values__dateTime_isdst"] = parse_timestamp(event["631.ipp.banner.attributes.values.dateTime"])["isdst"]
	if event["631__ipp__banner__attributes__values__dateTime_yday"] ~= nil then
	  event["631__ipp__banner__attributes__values__dateTime_yweek"] = (event["631__ipp__banner__attributes__values__dateTime_yday"] // 7) + 1
	  event["631__ipp__banner__attributes__values__dateTime_yquarter"] = (event["631__ipp__banner__attributes__values__dateTime_yday"] // 91) + 1
	end
	if event["631__ipp__banner__attributes__values__dateTime_wday"] ~= nil then
	  event["631__ipp__banner__attributes__values__dateTime_is_weekend"] = arr_has_value(weekends, event["631__ipp__banner__attributes__values__dateTime_wday"])
	  event["631__ipp__banner__attributes__values__dateTime_is_weekday"] = arr_has_value(weekdays, event["631__ipp__banner__attributes__values__dateTime_wday"])
	end
	event["631__ipp__banner__attributes__values__dateTime"] = event["631.ipp.banner.attributes.values.dateTime"]
	event["p631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p631.ipp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["631.ipp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["631__ipp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["631.ipp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p631__ipp__banner__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.validity.end"])["year"]
	event["p631__ipp__banner__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.validity.end"])["month"]
	event["p631__ipp__banner__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.validity.end"])["day"]
	event["p631__ipp__banner__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.validity.end"])["hour"]
	event["p631__ipp__banner__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.validity.end"])["min"]
	event["p631__ipp__banner__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.validity.end"])["sec"]
	event["p631__ipp__banner__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.validity.end"])["yday"]
	event["p631__ipp__banner__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.validity.end"])["wday"]
	event["p631__ipp__banner__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.validity.end"])["isdst"]
	if event["p631__ipp__banner__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p631__ipp__banner__tls__certificate__parsed__validity__end_yweek"] = (event["p631__ipp__banner__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p631__ipp__banner__tls__certificate__parsed__validity__end_yquarter"] = (event["p631__ipp__banner__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p631__ipp__banner__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p631__ipp__banner__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p631__ipp__banner__tls__certificate__parsed__validity__end_wday"])
	  event["p631__ipp__banner__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p631__ipp__banner__tls__certificate__parsed__validity__end_wday"])
	end
	event["p631__ipp__banner__tls__certificate__parsed__validity__end"] = event["p631.ipp.banner.tls.certificate.parsed.validity.end"]
	event["631__ipp__banner__tls__certificate__parsed__validity__end"] = event["631.ipp.banner.tls.certificate.parsed.validity.end"]
	event["631__ipp__banner__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.validity.end"])["year"]
	event["631__ipp__banner__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.validity.end"])["month"]
	event["631__ipp__banner__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.validity.end"])["day"]
	event["631__ipp__banner__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.validity.end"])["hour"]
	event["631__ipp__banner__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.validity.end"])["min"]
	event["631__ipp__banner__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.validity.end"])["sec"]
	event["631__ipp__banner__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.validity.end"])["yday"]
	event["631__ipp__banner__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.validity.end"])["wday"]
	event["631__ipp__banner__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.validity.end"])["isdst"]
	if event["631__ipp__banner__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["631__ipp__banner__tls__certificate__parsed__validity__end_yweek"] = (event["631__ipp__banner__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["631__ipp__banner__tls__certificate__parsed__validity__end_yquarter"] = (event["631__ipp__banner__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["631__ipp__banner__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["631__ipp__banner__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["631__ipp__banner__tls__certificate__parsed__validity__end_wday"])
	  event["631__ipp__banner__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["631__ipp__banner__tls__certificate__parsed__validity__end_wday"])
	end
	event["631__ipp__banner__tls__certificate__parsed__validity__end"] = event["631.ipp.banner.tls.certificate.parsed.validity.end"]
	event["p631__ipp__banner__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.validity.start"])["year"]
	event["p631__ipp__banner__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.validity.start"])["month"]
	event["p631__ipp__banner__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.validity.start"])["day"]
	event["p631__ipp__banner__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.validity.start"])["hour"]
	event["p631__ipp__banner__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.validity.start"])["min"]
	event["p631__ipp__banner__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.validity.start"])["sec"]
	event["p631__ipp__banner__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.validity.start"])["yday"]
	event["p631__ipp__banner__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.validity.start"])["wday"]
	event["p631__ipp__banner__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p631.ipp.banner.tls.certificate.parsed.validity.start"])["isdst"]
	if event["p631__ipp__banner__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p631__ipp__banner__tls__certificate__parsed__validity__start_yweek"] = (event["p631__ipp__banner__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p631__ipp__banner__tls__certificate__parsed__validity__start_yquarter"] = (event["p631__ipp__banner__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p631__ipp__banner__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p631__ipp__banner__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p631__ipp__banner__tls__certificate__parsed__validity__start_wday"])
	  event["p631__ipp__banner__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p631__ipp__banner__tls__certificate__parsed__validity__start_wday"])
	end
	event["p631__ipp__banner__tls__certificate__parsed__validity__start"] = event["p631.ipp.banner.tls.certificate.parsed.validity.start"]
	event["631__ipp__banner__tls__certificate__parsed__validity__start"] = event["631.ipp.banner.tls.certificate.parsed.validity.start"]
	event["631__ipp__banner__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.validity.start"])["year"]
	event["631__ipp__banner__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.validity.start"])["month"]
	event["631__ipp__banner__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.validity.start"])["day"]
	event["631__ipp__banner__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.validity.start"])["hour"]
	event["631__ipp__banner__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.validity.start"])["min"]
	event["631__ipp__banner__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.validity.start"])["sec"]
	event["631__ipp__banner__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.validity.start"])["yday"]
	event["631__ipp__banner__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.validity.start"])["wday"]
	event["631__ipp__banner__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["631.ipp.banner.tls.certificate.parsed.validity.start"])["isdst"]
	if event["631__ipp__banner__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["631__ipp__banner__tls__certificate__parsed__validity__start_yweek"] = (event["631__ipp__banner__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["631__ipp__banner__tls__certificate__parsed__validity__start_yquarter"] = (event["631__ipp__banner__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["631__ipp__banner__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["631__ipp__banner__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["631__ipp__banner__tls__certificate__parsed__validity__start_wday"])
	  event["631__ipp__banner__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["631__ipp__banner__tls__certificate__parsed__validity__start_wday"])
	end
	event["631__ipp__banner__tls__certificate__parsed__validity__start"] = event["631.ipp.banner.tls.certificate.parsed.validity.start"]
	event["p631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p631.ipp.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["631.ipp.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["631__ipp__banner__tls__chain__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["631.ipp.banner.tls.chain.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p631__ipp__banner__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.validity.end"])["year"]
	event["p631__ipp__banner__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.validity.end"])["month"]
	event["p631__ipp__banner__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.validity.end"])["day"]
	event["p631__ipp__banner__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.validity.end"])["hour"]
	event["p631__ipp__banner__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.validity.end"])["min"]
	event["p631__ipp__banner__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.validity.end"])["sec"]
	event["p631__ipp__banner__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.validity.end"])["yday"]
	event["p631__ipp__banner__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.validity.end"])["wday"]
	event["p631__ipp__banner__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.validity.end"])["isdst"]
	if event["p631__ipp__banner__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["p631__ipp__banner__tls__chain__parsed__validity__end_yweek"] = (event["p631__ipp__banner__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["p631__ipp__banner__tls__chain__parsed__validity__end_yquarter"] = (event["p631__ipp__banner__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p631__ipp__banner__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["p631__ipp__banner__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p631__ipp__banner__tls__chain__parsed__validity__end_wday"])
	  event["p631__ipp__banner__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p631__ipp__banner__tls__chain__parsed__validity__end_wday"])
	end
	event["p631__ipp__banner__tls__chain__parsed__validity__end"] = event["p631.ipp.banner.tls.chain.parsed.validity.end"]
	event["631__ipp__banner__tls__chain__parsed__validity__end"] = event["631.ipp.banner.tls.chain.parsed.validity.end"]
	event["631__ipp__banner__tls__chain__parsed__validity__end_year"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.validity.end"])["year"]
	event["631__ipp__banner__tls__chain__parsed__validity__end_month"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.validity.end"])["month"]
	event["631__ipp__banner__tls__chain__parsed__validity__end_day"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.validity.end"])["day"]
	event["631__ipp__banner__tls__chain__parsed__validity__end_hour"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.validity.end"])["hour"]
	event["631__ipp__banner__tls__chain__parsed__validity__end_min"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.validity.end"])["min"]
	event["631__ipp__banner__tls__chain__parsed__validity__end_sec"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.validity.end"])["sec"]
	event["631__ipp__banner__tls__chain__parsed__validity__end_yday"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.validity.end"])["yday"]
	event["631__ipp__banner__tls__chain__parsed__validity__end_wday"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.validity.end"])["wday"]
	event["631__ipp__banner__tls__chain__parsed__validity__end_isdst"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.validity.end"])["isdst"]
	if event["631__ipp__banner__tls__chain__parsed__validity__end_yday"] ~= nil then
	  event["631__ipp__banner__tls__chain__parsed__validity__end_yweek"] = (event["631__ipp__banner__tls__chain__parsed__validity__end_yday"] // 7) + 1
	  event["631__ipp__banner__tls__chain__parsed__validity__end_yquarter"] = (event["631__ipp__banner__tls__chain__parsed__validity__end_yday"] // 91) + 1
	end
	if event["631__ipp__banner__tls__chain__parsed__validity__end_wday"] ~= nil then
	  event["631__ipp__banner__tls__chain__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["631__ipp__banner__tls__chain__parsed__validity__end_wday"])
	  event["631__ipp__banner__tls__chain__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["631__ipp__banner__tls__chain__parsed__validity__end_wday"])
	end
	event["631__ipp__banner__tls__chain__parsed__validity__end"] = event["631.ipp.banner.tls.chain.parsed.validity.end"]
	event["p631__ipp__banner__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.validity.start"])["year"]
	event["p631__ipp__banner__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.validity.start"])["month"]
	event["p631__ipp__banner__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.validity.start"])["day"]
	event["p631__ipp__banner__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.validity.start"])["hour"]
	event["p631__ipp__banner__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.validity.start"])["min"]
	event["p631__ipp__banner__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.validity.start"])["sec"]
	event["p631__ipp__banner__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.validity.start"])["yday"]
	event["p631__ipp__banner__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.validity.start"])["wday"]
	event["p631__ipp__banner__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["p631.ipp.banner.tls.chain.parsed.validity.start"])["isdst"]
	if event["p631__ipp__banner__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["p631__ipp__banner__tls__chain__parsed__validity__start_yweek"] = (event["p631__ipp__banner__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["p631__ipp__banner__tls__chain__parsed__validity__start_yquarter"] = (event["p631__ipp__banner__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p631__ipp__banner__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["p631__ipp__banner__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p631__ipp__banner__tls__chain__parsed__validity__start_wday"])
	  event["p631__ipp__banner__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p631__ipp__banner__tls__chain__parsed__validity__start_wday"])
	end
	event["p631__ipp__banner__tls__chain__parsed__validity__start"] = event["p631.ipp.banner.tls.chain.parsed.validity.start"]
	event["631__ipp__banner__tls__chain__parsed__validity__start"] = event["631.ipp.banner.tls.chain.parsed.validity.start"]
	event["631__ipp__banner__tls__chain__parsed__validity__start_year"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.validity.start"])["year"]
	event["631__ipp__banner__tls__chain__parsed__validity__start_month"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.validity.start"])["month"]
	event["631__ipp__banner__tls__chain__parsed__validity__start_day"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.validity.start"])["day"]
	event["631__ipp__banner__tls__chain__parsed__validity__start_hour"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.validity.start"])["hour"]
	event["631__ipp__banner__tls__chain__parsed__validity__start_min"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.validity.start"])["min"]
	event["631__ipp__banner__tls__chain__parsed__validity__start_sec"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.validity.start"])["sec"]
	event["631__ipp__banner__tls__chain__parsed__validity__start_yday"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.validity.start"])["yday"]
	event["631__ipp__banner__tls__chain__parsed__validity__start_wday"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.validity.start"])["wday"]
	event["631__ipp__banner__tls__chain__parsed__validity__start_isdst"] = parse_timestamp(event["631.ipp.banner.tls.chain.parsed.validity.start"])["isdst"]
	if event["631__ipp__banner__tls__chain__parsed__validity__start_yday"] ~= nil then
	  event["631__ipp__banner__tls__chain__parsed__validity__start_yweek"] = (event["631__ipp__banner__tls__chain__parsed__validity__start_yday"] // 7) + 1
	  event["631__ipp__banner__tls__chain__parsed__validity__start_yquarter"] = (event["631__ipp__banner__tls__chain__parsed__validity__start_yday"] // 91) + 1
	end
	if event["631__ipp__banner__tls__chain__parsed__validity__start_wday"] ~= nil then
	  event["631__ipp__banner__tls__chain__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["631__ipp__banner__tls__chain__parsed__validity__start_wday"])
	  event["631__ipp__banner__tls__chain__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["631__ipp__banner__tls__chain__parsed__validity__start_wday"])
	end
	event["631__ipp__banner__tls__chain__parsed__validity__start"] = event["631.ipp.banner.tls.chain.parsed.validity.start"]
	event["p631__ipp__banner__tls__scts__timestamp_year"] = parse_timestamp(event["p631.ipp.banner.tls.scts.timestamp"])["year"]
	event["p631__ipp__banner__tls__scts__timestamp_month"] = parse_timestamp(event["p631.ipp.banner.tls.scts.timestamp"])["month"]
	event["p631__ipp__banner__tls__scts__timestamp_day"] = parse_timestamp(event["p631.ipp.banner.tls.scts.timestamp"])["day"]
	event["p631__ipp__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["p631.ipp.banner.tls.scts.timestamp"])["hour"]
	event["p631__ipp__banner__tls__scts__timestamp_min"] = parse_timestamp(event["p631.ipp.banner.tls.scts.timestamp"])["min"]
	event["p631__ipp__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["p631.ipp.banner.tls.scts.timestamp"])["sec"]
	event["p631__ipp__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["p631.ipp.banner.tls.scts.timestamp"])["yday"]
	event["p631__ipp__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["p631.ipp.banner.tls.scts.timestamp"])["wday"]
	event["p631__ipp__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["p631.ipp.banner.tls.scts.timestamp"])["isdst"]
	if event["p631__ipp__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["p631__ipp__banner__tls__scts__timestamp_yweek"] = (event["p631__ipp__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["p631__ipp__banner__tls__scts__timestamp_yquarter"] = (event["p631__ipp__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["p631__ipp__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["p631__ipp__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["p631__ipp__banner__tls__scts__timestamp_wday"])
	  event["p631__ipp__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["p631__ipp__banner__tls__scts__timestamp_wday"])
	end
	event["p631__ipp__banner__tls__scts__timestamp"] = event["p631.ipp.banner.tls.scts.timestamp"]
	event["631__ipp__banner__tls__scts__timestamp"] = event["631.ipp.banner.tls.scts.timestamp"]
	event["631__ipp__banner__tls__scts__timestamp_year"] = parse_timestamp(event["631.ipp.banner.tls.scts.timestamp"])["year"]
	event["631__ipp__banner__tls__scts__timestamp_month"] = parse_timestamp(event["631.ipp.banner.tls.scts.timestamp"])["month"]
	event["631__ipp__banner__tls__scts__timestamp_day"] = parse_timestamp(event["631.ipp.banner.tls.scts.timestamp"])["day"]
	event["631__ipp__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["631.ipp.banner.tls.scts.timestamp"])["hour"]
	event["631__ipp__banner__tls__scts__timestamp_min"] = parse_timestamp(event["631.ipp.banner.tls.scts.timestamp"])["min"]
	event["631__ipp__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["631.ipp.banner.tls.scts.timestamp"])["sec"]
	event["631__ipp__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["631.ipp.banner.tls.scts.timestamp"])["yday"]
	event["631__ipp__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["631.ipp.banner.tls.scts.timestamp"])["wday"]
	event["631__ipp__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["631.ipp.banner.tls.scts.timestamp"])["isdst"]
	if event["631__ipp__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["631__ipp__banner__tls__scts__timestamp_yweek"] = (event["631__ipp__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["631__ipp__banner__tls__scts__timestamp_yquarter"] = (event["631__ipp__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["631__ipp__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["631__ipp__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["631__ipp__banner__tls__scts__timestamp_wday"])
	  event["631__ipp__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["631__ipp__banner__tls__scts__timestamp_wday"])
	end
	event["631__ipp__banner__tls__scts__timestamp"] = event["631.ipp.banner.tls.scts.timestamp"]
	event["p631__ipp__banner__tls__timestamp_year"] = parse_timestamp(event["p631.ipp.banner.tls.timestamp"])["year"]
	event["p631__ipp__banner__tls__timestamp_month"] = parse_timestamp(event["p631.ipp.banner.tls.timestamp"])["month"]
	event["p631__ipp__banner__tls__timestamp_day"] = parse_timestamp(event["p631.ipp.banner.tls.timestamp"])["day"]
	event["p631__ipp__banner__tls__timestamp_hour"] = parse_timestamp(event["p631.ipp.banner.tls.timestamp"])["hour"]
	event["p631__ipp__banner__tls__timestamp_min"] = parse_timestamp(event["p631.ipp.banner.tls.timestamp"])["min"]
	event["p631__ipp__banner__tls__timestamp_sec"] = parse_timestamp(event["p631.ipp.banner.tls.timestamp"])["sec"]
	event["p631__ipp__banner__tls__timestamp_yday"] = parse_timestamp(event["p631.ipp.banner.tls.timestamp"])["yday"]
	event["p631__ipp__banner__tls__timestamp_wday"] = parse_timestamp(event["p631.ipp.banner.tls.timestamp"])["wday"]
	event["p631__ipp__banner__tls__timestamp_isdst"] = parse_timestamp(event["p631.ipp.banner.tls.timestamp"])["isdst"]
	if event["p631__ipp__banner__tls__timestamp_yday"] ~= nil then
	  event["p631__ipp__banner__tls__timestamp_yweek"] = (event["p631__ipp__banner__tls__timestamp_yday"] // 7) + 1
	  event["p631__ipp__banner__tls__timestamp_yquarter"] = (event["p631__ipp__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["p631__ipp__banner__tls__timestamp_wday"] ~= nil then
	  event["p631__ipp__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p631__ipp__banner__tls__timestamp_wday"])
	  event["p631__ipp__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p631__ipp__banner__tls__timestamp_wday"])
	end
	event["p631__ipp__banner__tls__timestamp"] = event["p631.ipp.banner.tls.timestamp"]
	event["631__ipp__banner__tls__timestamp"] = event["631.ipp.banner.tls.timestamp"]
	event["631__ipp__banner__tls__timestamp_year"] = parse_timestamp(event["631.ipp.banner.tls.timestamp"])["year"]
	event["631__ipp__banner__tls__timestamp_month"] = parse_timestamp(event["631.ipp.banner.tls.timestamp"])["month"]
	event["631__ipp__banner__tls__timestamp_day"] = parse_timestamp(event["631.ipp.banner.tls.timestamp"])["day"]
	event["631__ipp__banner__tls__timestamp_hour"] = parse_timestamp(event["631.ipp.banner.tls.timestamp"])["hour"]
	event["631__ipp__banner__tls__timestamp_min"] = parse_timestamp(event["631.ipp.banner.tls.timestamp"])["min"]
	event["631__ipp__banner__tls__timestamp_sec"] = parse_timestamp(event["631.ipp.banner.tls.timestamp"])["sec"]
	event["631__ipp__banner__tls__timestamp_yday"] = parse_timestamp(event["631.ipp.banner.tls.timestamp"])["yday"]
	event["631__ipp__banner__tls__timestamp_wday"] = parse_timestamp(event["631.ipp.banner.tls.timestamp"])["wday"]
	event["631__ipp__banner__tls__timestamp_isdst"] = parse_timestamp(event["631.ipp.banner.tls.timestamp"])["isdst"]
	if event["631__ipp__banner__tls__timestamp_yday"] ~= nil then
	  event["631__ipp__banner__tls__timestamp_yweek"] = (event["631__ipp__banner__tls__timestamp_yday"] // 7) + 1
	  event["631__ipp__banner__tls__timestamp_yquarter"] = (event["631__ipp__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["631__ipp__banner__tls__timestamp_wday"] ~= nil then
	  event["631__ipp__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["631__ipp__banner__tls__timestamp_wday"])
	  event["631__ipp__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["631__ipp__banner__tls__timestamp_wday"])
	end
	event["631__ipp__banner__tls__timestamp"] = event["631.ipp.banner.tls.timestamp"]
	event["p443__https__get__timestamp_year"] = parse_timestamp(event["p443.https.get.timestamp"])["year"]
	event["p443__https__get__timestamp_month"] = parse_timestamp(event["p443.https.get.timestamp"])["month"]
	event["p443__https__get__timestamp_day"] = parse_timestamp(event["p443.https.get.timestamp"])["day"]
	event["p443__https__get__timestamp_hour"] = parse_timestamp(event["p443.https.get.timestamp"])["hour"]
	event["p443__https__get__timestamp_min"] = parse_timestamp(event["p443.https.get.timestamp"])["min"]
	event["p443__https__get__timestamp_sec"] = parse_timestamp(event["p443.https.get.timestamp"])["sec"]
	event["p443__https__get__timestamp_yday"] = parse_timestamp(event["p443.https.get.timestamp"])["yday"]
	event["p443__https__get__timestamp_wday"] = parse_timestamp(event["p443.https.get.timestamp"])["wday"]
	event["p443__https__get__timestamp_isdst"] = parse_timestamp(event["p443.https.get.timestamp"])["isdst"]
	if event["p443__https__get__timestamp_yday"] ~= nil then
	  event["p443__https__get__timestamp_yweek"] = (event["p443__https__get__timestamp_yday"] // 7) + 1
	  event["p443__https__get__timestamp_yquarter"] = (event["p443__https__get__timestamp_yday"] // 91) + 1
	end
	if event["p443__https__get__timestamp_wday"] ~= nil then
	  event["p443__https__get__timestamp_is_weekend"] = arr_has_value(weekends, event["p443__https__get__timestamp_wday"])
	  event["p443__https__get__timestamp_is_weekday"] = arr_has_value(weekdays, event["p443__https__get__timestamp_wday"])
	end
	event["p443__https__get__timestamp"] = event["p443.https.get.timestamp"]
	event["443__https__get__timestamp"] = event["443.https.get.timestamp"]
	event["443__https__get__timestamp_year"] = parse_timestamp(event["443.https.get.timestamp"])["year"]
	event["443__https__get__timestamp_month"] = parse_timestamp(event["443.https.get.timestamp"])["month"]
	event["443__https__get__timestamp_day"] = parse_timestamp(event["443.https.get.timestamp"])["day"]
	event["443__https__get__timestamp_hour"] = parse_timestamp(event["443.https.get.timestamp"])["hour"]
	event["443__https__get__timestamp_min"] = parse_timestamp(event["443.https.get.timestamp"])["min"]
	event["443__https__get__timestamp_sec"] = parse_timestamp(event["443.https.get.timestamp"])["sec"]
	event["443__https__get__timestamp_yday"] = parse_timestamp(event["443.https.get.timestamp"])["yday"]
	event["443__https__get__timestamp_wday"] = parse_timestamp(event["443.https.get.timestamp"])["wday"]
	event["443__https__get__timestamp_isdst"] = parse_timestamp(event["443.https.get.timestamp"])["isdst"]
	if event["443__https__get__timestamp_yday"] ~= nil then
	  event["443__https__get__timestamp_yweek"] = (event["443__https__get__timestamp_yday"] // 7) + 1
	  event["443__https__get__timestamp_yquarter"] = (event["443__https__get__timestamp_yday"] // 91) + 1
	end
	if event["443__https__get__timestamp_wday"] ~= nil then
	  event["443__https__get__timestamp_is_weekend"] = arr_has_value(weekends, event["443__https__get__timestamp_wday"])
	  event["443__https__get__timestamp_is_weekday"] = arr_has_value(weekdays, event["443__https__get__timestamp_wday"])
	end
	event["443__https__get__timestamp"] = event["443.https.get.timestamp"]
	event["p465__smtp__tls__timestamp_year"] = parse_timestamp(event["p465.smtp.tls.timestamp"])["year"]
	event["p465__smtp__tls__timestamp_month"] = parse_timestamp(event["p465.smtp.tls.timestamp"])["month"]
	event["p465__smtp__tls__timestamp_day"] = parse_timestamp(event["p465.smtp.tls.timestamp"])["day"]
	event["p465__smtp__tls__timestamp_hour"] = parse_timestamp(event["p465.smtp.tls.timestamp"])["hour"]
	event["p465__smtp__tls__timestamp_min"] = parse_timestamp(event["p465.smtp.tls.timestamp"])["min"]
	event["p465__smtp__tls__timestamp_sec"] = parse_timestamp(event["p465.smtp.tls.timestamp"])["sec"]
	event["p465__smtp__tls__timestamp_yday"] = parse_timestamp(event["p465.smtp.tls.timestamp"])["yday"]
	event["p465__smtp__tls__timestamp_wday"] = parse_timestamp(event["p465.smtp.tls.timestamp"])["wday"]
	event["p465__smtp__tls__timestamp_isdst"] = parse_timestamp(event["p465.smtp.tls.timestamp"])["isdst"]
	if event["p465__smtp__tls__timestamp_yday"] ~= nil then
	  event["p465__smtp__tls__timestamp_yweek"] = (event["p465__smtp__tls__timestamp_yday"] // 7) + 1
	  event["p465__smtp__tls__timestamp_yquarter"] = (event["p465__smtp__tls__timestamp_yday"] // 91) + 1
	end
	if event["p465__smtp__tls__timestamp_wday"] ~= nil then
	  event["p465__smtp__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p465__smtp__tls__timestamp_wday"])
	  event["p465__smtp__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p465__smtp__tls__timestamp_wday"])
	end
	event["p465__smtp__tls__timestamp"] = event["p465.smtp.tls.timestamp"]
	event["465__smtp__tls__timestamp"] = event["465.smtp.tls.timestamp"]
	event["465__smtp__tls__timestamp_year"] = parse_timestamp(event["465.smtp.tls.timestamp"])["year"]
	event["465__smtp__tls__timestamp_month"] = parse_timestamp(event["465.smtp.tls.timestamp"])["month"]
	event["465__smtp__tls__timestamp_day"] = parse_timestamp(event["465.smtp.tls.timestamp"])["day"]
	event["465__smtp__tls__timestamp_hour"] = parse_timestamp(event["465.smtp.tls.timestamp"])["hour"]
	event["465__smtp__tls__timestamp_min"] = parse_timestamp(event["465.smtp.tls.timestamp"])["min"]
	event["465__smtp__tls__timestamp_sec"] = parse_timestamp(event["465.smtp.tls.timestamp"])["sec"]
	event["465__smtp__tls__timestamp_yday"] = parse_timestamp(event["465.smtp.tls.timestamp"])["yday"]
	event["465__smtp__tls__timestamp_wday"] = parse_timestamp(event["465.smtp.tls.timestamp"])["wday"]
	event["465__smtp__tls__timestamp_isdst"] = parse_timestamp(event["465.smtp.tls.timestamp"])["isdst"]
	if event["465__smtp__tls__timestamp_yday"] ~= nil then
	  event["465__smtp__tls__timestamp_yweek"] = (event["465__smtp__tls__timestamp_yday"] // 7) + 1
	  event["465__smtp__tls__timestamp_yquarter"] = (event["465__smtp__tls__timestamp_yday"] // 91) + 1
	end
	if event["465__smtp__tls__timestamp_wday"] ~= nil then
	  event["465__smtp__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["465__smtp__tls__timestamp_wday"])
	  event["465__smtp__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["465__smtp__tls__timestamp_wday"])
	end
	event["465__smtp__tls__timestamp"] = event["465.smtp.tls.timestamp"]
	event["p465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p465.smtp.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["465.smtp.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["465__smtp__tls__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["465.smtp.tls.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p465__smtp__tls__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.validity.end"])["year"]
	event["p465__smtp__tls__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.validity.end"])["month"]
	event["p465__smtp__tls__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.validity.end"])["day"]
	event["p465__smtp__tls__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.validity.end"])["hour"]
	event["p465__smtp__tls__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.validity.end"])["min"]
	event["p465__smtp__tls__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.validity.end"])["sec"]
	event["p465__smtp__tls__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.validity.end"])["yday"]
	event["p465__smtp__tls__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.validity.end"])["wday"]
	event["p465__smtp__tls__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.validity.end"])["isdst"]
	if event["p465__smtp__tls__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p465__smtp__tls__tls__certificate__parsed__validity__end_yweek"] = (event["p465__smtp__tls__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p465__smtp__tls__tls__certificate__parsed__validity__end_yquarter"] = (event["p465__smtp__tls__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p465__smtp__tls__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p465__smtp__tls__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p465__smtp__tls__tls__certificate__parsed__validity__end_wday"])
	  event["p465__smtp__tls__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p465__smtp__tls__tls__certificate__parsed__validity__end_wday"])
	end
	event["p465__smtp__tls__tls__certificate__parsed__validity__end"] = event["p465.smtp.tls.tls.certificate.parsed.validity.end"]
	event["465__smtp__tls__tls__certificate__parsed__validity__end"] = event["465.smtp.tls.tls.certificate.parsed.validity.end"]
	event["465__smtp__tls__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.validity.end"])["year"]
	event["465__smtp__tls__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.validity.end"])["month"]
	event["465__smtp__tls__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.validity.end"])["day"]
	event["465__smtp__tls__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.validity.end"])["hour"]
	event["465__smtp__tls__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.validity.end"])["min"]
	event["465__smtp__tls__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.validity.end"])["sec"]
	event["465__smtp__tls__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.validity.end"])["yday"]
	event["465__smtp__tls__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.validity.end"])["wday"]
	event["465__smtp__tls__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.validity.end"])["isdst"]
	if event["465__smtp__tls__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["465__smtp__tls__tls__certificate__parsed__validity__end_yweek"] = (event["465__smtp__tls__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["465__smtp__tls__tls__certificate__parsed__validity__end_yquarter"] = (event["465__smtp__tls__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["465__smtp__tls__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["465__smtp__tls__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["465__smtp__tls__tls__certificate__parsed__validity__end_wday"])
	  event["465__smtp__tls__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["465__smtp__tls__tls__certificate__parsed__validity__end_wday"])
	end
	event["465__smtp__tls__tls__certificate__parsed__validity__end"] = event["465.smtp.tls.tls.certificate.parsed.validity.end"]
	event["p465__smtp__tls__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.validity.start"])["year"]
	event["p465__smtp__tls__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.validity.start"])["month"]
	event["p465__smtp__tls__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.validity.start"])["day"]
	event["p465__smtp__tls__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.validity.start"])["hour"]
	event["p465__smtp__tls__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.validity.start"])["min"]
	event["p465__smtp__tls__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.validity.start"])["sec"]
	event["p465__smtp__tls__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.validity.start"])["yday"]
	event["p465__smtp__tls__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.validity.start"])["wday"]
	event["p465__smtp__tls__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p465.smtp.tls.tls.certificate.parsed.validity.start"])["isdst"]
	if event["p465__smtp__tls__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p465__smtp__tls__tls__certificate__parsed__validity__start_yweek"] = (event["p465__smtp__tls__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p465__smtp__tls__tls__certificate__parsed__validity__start_yquarter"] = (event["p465__smtp__tls__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p465__smtp__tls__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p465__smtp__tls__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p465__smtp__tls__tls__certificate__parsed__validity__start_wday"])
	  event["p465__smtp__tls__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p465__smtp__tls__tls__certificate__parsed__validity__start_wday"])
	end
	event["p465__smtp__tls__tls__certificate__parsed__validity__start"] = event["p465.smtp.tls.tls.certificate.parsed.validity.start"]
	event["465__smtp__tls__tls__certificate__parsed__validity__start"] = event["465.smtp.tls.tls.certificate.parsed.validity.start"]
	event["465__smtp__tls__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.validity.start"])["year"]
	event["465__smtp__tls__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.validity.start"])["month"]
	event["465__smtp__tls__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.validity.start"])["day"]
	event["465__smtp__tls__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.validity.start"])["hour"]
	event["465__smtp__tls__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.validity.start"])["min"]
	event["465__smtp__tls__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.validity.start"])["sec"]
	event["465__smtp__tls__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.validity.start"])["yday"]
	event["465__smtp__tls__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.validity.start"])["wday"]
	event["465__smtp__tls__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["465.smtp.tls.tls.certificate.parsed.validity.start"])["isdst"]
	if event["465__smtp__tls__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["465__smtp__tls__tls__certificate__parsed__validity__start_yweek"] = (event["465__smtp__tls__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["465__smtp__tls__tls__certificate__parsed__validity__start_yquarter"] = (event["465__smtp__tls__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["465__smtp__tls__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["465__smtp__tls__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["465__smtp__tls__tls__certificate__parsed__validity__start_wday"])
	  event["465__smtp__tls__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["465__smtp__tls__tls__certificate__parsed__validity__start_wday"])
	end
	event["465__smtp__tls__tls__certificate__parsed__validity__start"] = event["465.smtp.tls.tls.certificate.parsed.validity.start"]
	event["p465__smtp__tls__tls__scts__timestamp_year"] = parse_timestamp(event["p465.smtp.tls.tls.scts.timestamp"])["year"]
	event["p465__smtp__tls__tls__scts__timestamp_month"] = parse_timestamp(event["p465.smtp.tls.tls.scts.timestamp"])["month"]
	event["p465__smtp__tls__tls__scts__timestamp_day"] = parse_timestamp(event["p465.smtp.tls.tls.scts.timestamp"])["day"]
	event["p465__smtp__tls__tls__scts__timestamp_hour"] = parse_timestamp(event["p465.smtp.tls.tls.scts.timestamp"])["hour"]
	event["p465__smtp__tls__tls__scts__timestamp_min"] = parse_timestamp(event["p465.smtp.tls.tls.scts.timestamp"])["min"]
	event["p465__smtp__tls__tls__scts__timestamp_sec"] = parse_timestamp(event["p465.smtp.tls.tls.scts.timestamp"])["sec"]
	event["p465__smtp__tls__tls__scts__timestamp_yday"] = parse_timestamp(event["p465.smtp.tls.tls.scts.timestamp"])["yday"]
	event["p465__smtp__tls__tls__scts__timestamp_wday"] = parse_timestamp(event["p465.smtp.tls.tls.scts.timestamp"])["wday"]
	event["p465__smtp__tls__tls__scts__timestamp_isdst"] = parse_timestamp(event["p465.smtp.tls.tls.scts.timestamp"])["isdst"]
	if event["p465__smtp__tls__tls__scts__timestamp_yday"] ~= nil then
	  event["p465__smtp__tls__tls__scts__timestamp_yweek"] = (event["p465__smtp__tls__tls__scts__timestamp_yday"] // 7) + 1
	  event["p465__smtp__tls__tls__scts__timestamp_yquarter"] = (event["p465__smtp__tls__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["p465__smtp__tls__tls__scts__timestamp_wday"] ~= nil then
	  event["p465__smtp__tls__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["p465__smtp__tls__tls__scts__timestamp_wday"])
	  event["p465__smtp__tls__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["p465__smtp__tls__tls__scts__timestamp_wday"])
	end
	event["p465__smtp__tls__tls__scts__timestamp"] = event["p465.smtp.tls.tls.scts.timestamp"]
	event["465__smtp__tls__tls__scts__timestamp"] = event["465.smtp.tls.tls.scts.timestamp"]
	event["465__smtp__tls__tls__scts__timestamp_year"] = parse_timestamp(event["465.smtp.tls.tls.scts.timestamp"])["year"]
	event["465__smtp__tls__tls__scts__timestamp_month"] = parse_timestamp(event["465.smtp.tls.tls.scts.timestamp"])["month"]
	event["465__smtp__tls__tls__scts__timestamp_day"] = parse_timestamp(event["465.smtp.tls.tls.scts.timestamp"])["day"]
	event["465__smtp__tls__tls__scts__timestamp_hour"] = parse_timestamp(event["465.smtp.tls.tls.scts.timestamp"])["hour"]
	event["465__smtp__tls__tls__scts__timestamp_min"] = parse_timestamp(event["465.smtp.tls.tls.scts.timestamp"])["min"]
	event["465__smtp__tls__tls__scts__timestamp_sec"] = parse_timestamp(event["465.smtp.tls.tls.scts.timestamp"])["sec"]
	event["465__smtp__tls__tls__scts__timestamp_yday"] = parse_timestamp(event["465.smtp.tls.tls.scts.timestamp"])["yday"]
	event["465__smtp__tls__tls__scts__timestamp_wday"] = parse_timestamp(event["465.smtp.tls.tls.scts.timestamp"])["wday"]
	event["465__smtp__tls__tls__scts__timestamp_isdst"] = parse_timestamp(event["465.smtp.tls.tls.scts.timestamp"])["isdst"]
	if event["465__smtp__tls__tls__scts__timestamp_yday"] ~= nil then
	  event["465__smtp__tls__tls__scts__timestamp_yweek"] = (event["465__smtp__tls__tls__scts__timestamp_yday"] // 7) + 1
	  event["465__smtp__tls__tls__scts__timestamp_yquarter"] = (event["465__smtp__tls__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["465__smtp__tls__tls__scts__timestamp_wday"] ~= nil then
	  event["465__smtp__tls__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["465__smtp__tls__tls__scts__timestamp_wday"])
	  event["465__smtp__tls__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["465__smtp__tls__tls__scts__timestamp_wday"])
	end
	event["465__smtp__tls__tls__scts__timestamp"] = event["465.smtp.tls.tls.scts.timestamp"]
	event["p465__smtp__tls__tls__timestamp_year"] = parse_timestamp(event["p465.smtp.tls.tls.timestamp"])["year"]
	event["p465__smtp__tls__tls__timestamp_month"] = parse_timestamp(event["p465.smtp.tls.tls.timestamp"])["month"]
	event["p465__smtp__tls__tls__timestamp_day"] = parse_timestamp(event["p465.smtp.tls.tls.timestamp"])["day"]
	event["p465__smtp__tls__tls__timestamp_hour"] = parse_timestamp(event["p465.smtp.tls.tls.timestamp"])["hour"]
	event["p465__smtp__tls__tls__timestamp_min"] = parse_timestamp(event["p465.smtp.tls.tls.timestamp"])["min"]
	event["p465__smtp__tls__tls__timestamp_sec"] = parse_timestamp(event["p465.smtp.tls.tls.timestamp"])["sec"]
	event["p465__smtp__tls__tls__timestamp_yday"] = parse_timestamp(event["p465.smtp.tls.tls.timestamp"])["yday"]
	event["p465__smtp__tls__tls__timestamp_wday"] = parse_timestamp(event["p465.smtp.tls.tls.timestamp"])["wday"]
	event["p465__smtp__tls__tls__timestamp_isdst"] = parse_timestamp(event["p465.smtp.tls.tls.timestamp"])["isdst"]
	if event["p465__smtp__tls__tls__timestamp_yday"] ~= nil then
	  event["p465__smtp__tls__tls__timestamp_yweek"] = (event["p465__smtp__tls__tls__timestamp_yday"] // 7) + 1
	  event["p465__smtp__tls__tls__timestamp_yquarter"] = (event["p465__smtp__tls__tls__timestamp_yday"] // 91) + 1
	end
	if event["p465__smtp__tls__tls__timestamp_wday"] ~= nil then
	  event["p465__smtp__tls__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p465__smtp__tls__tls__timestamp_wday"])
	  event["p465__smtp__tls__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p465__smtp__tls__tls__timestamp_wday"])
	end
	event["p465__smtp__tls__tls__timestamp"] = event["p465.smtp.tls.tls.timestamp"]
	event["465__smtp__tls__tls__timestamp"] = event["465.smtp.tls.tls.timestamp"]
	event["465__smtp__tls__tls__timestamp_year"] = parse_timestamp(event["465.smtp.tls.tls.timestamp"])["year"]
	event["465__smtp__tls__tls__timestamp_month"] = parse_timestamp(event["465.smtp.tls.tls.timestamp"])["month"]
	event["465__smtp__tls__tls__timestamp_day"] = parse_timestamp(event["465.smtp.tls.tls.timestamp"])["day"]
	event["465__smtp__tls__tls__timestamp_hour"] = parse_timestamp(event["465.smtp.tls.tls.timestamp"])["hour"]
	event["465__smtp__tls__tls__timestamp_min"] = parse_timestamp(event["465.smtp.tls.tls.timestamp"])["min"]
	event["465__smtp__tls__tls__timestamp_sec"] = parse_timestamp(event["465.smtp.tls.tls.timestamp"])["sec"]
	event["465__smtp__tls__tls__timestamp_yday"] = parse_timestamp(event["465.smtp.tls.tls.timestamp"])["yday"]
	event["465__smtp__tls__tls__timestamp_wday"] = parse_timestamp(event["465.smtp.tls.tls.timestamp"])["wday"]
	event["465__smtp__tls__tls__timestamp_isdst"] = parse_timestamp(event["465.smtp.tls.tls.timestamp"])["isdst"]
	if event["465__smtp__tls__tls__timestamp_yday"] ~= nil then
	  event["465__smtp__tls__tls__timestamp_yweek"] = (event["465__smtp__tls__tls__timestamp_yday"] // 7) + 1
	  event["465__smtp__tls__tls__timestamp_yquarter"] = (event["465__smtp__tls__tls__timestamp_yday"] // 91) + 1
	end
	if event["465__smtp__tls__tls__timestamp_wday"] ~= nil then
	  event["465__smtp__tls__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["465__smtp__tls__tls__timestamp_wday"])
	  event["465__smtp__tls__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["465__smtp__tls__tls__timestamp_wday"])
	end
	event["465__smtp__tls__tls__timestamp"] = event["465.smtp.tls.tls.timestamp"]
	event["p16992__http__get__timestamp_year"] = parse_timestamp(event["p16992.http.get.timestamp"])["year"]
	event["p16992__http__get__timestamp_month"] = parse_timestamp(event["p16992.http.get.timestamp"])["month"]
	event["p16992__http__get__timestamp_day"] = parse_timestamp(event["p16992.http.get.timestamp"])["day"]
	event["p16992__http__get__timestamp_hour"] = parse_timestamp(event["p16992.http.get.timestamp"])["hour"]
	event["p16992__http__get__timestamp_min"] = parse_timestamp(event["p16992.http.get.timestamp"])["min"]
	event["p16992__http__get__timestamp_sec"] = parse_timestamp(event["p16992.http.get.timestamp"])["sec"]
	event["p16992__http__get__timestamp_yday"] = parse_timestamp(event["p16992.http.get.timestamp"])["yday"]
	event["p16992__http__get__timestamp_wday"] = parse_timestamp(event["p16992.http.get.timestamp"])["wday"]
	event["p16992__http__get__timestamp_isdst"] = parse_timestamp(event["p16992.http.get.timestamp"])["isdst"]
	if event["p16992__http__get__timestamp_yday"] ~= nil then
	  event["p16992__http__get__timestamp_yweek"] = (event["p16992__http__get__timestamp_yday"] // 7) + 1
	  event["p16992__http__get__timestamp_yquarter"] = (event["p16992__http__get__timestamp_yday"] // 91) + 1
	end
	if event["p16992__http__get__timestamp_wday"] ~= nil then
	  event["p16992__http__get__timestamp_is_weekend"] = arr_has_value(weekends, event["p16992__http__get__timestamp_wday"])
	  event["p16992__http__get__timestamp_is_weekday"] = arr_has_value(weekdays, event["p16992__http__get__timestamp_wday"])
	end
	event["p16992__http__get__timestamp"] = event["p16992.http.get.timestamp"]
	event["16992__http__get__timestamp"] = event["16992.http.get.timestamp"]
	event["16992__http__get__timestamp_year"] = parse_timestamp(event["16992.http.get.timestamp"])["year"]
	event["16992__http__get__timestamp_month"] = parse_timestamp(event["16992.http.get.timestamp"])["month"]
	event["16992__http__get__timestamp_day"] = parse_timestamp(event["16992.http.get.timestamp"])["day"]
	event["16992__http__get__timestamp_hour"] = parse_timestamp(event["16992.http.get.timestamp"])["hour"]
	event["16992__http__get__timestamp_min"] = parse_timestamp(event["16992.http.get.timestamp"])["min"]
	event["16992__http__get__timestamp_sec"] = parse_timestamp(event["16992.http.get.timestamp"])["sec"]
	event["16992__http__get__timestamp_yday"] = parse_timestamp(event["16992.http.get.timestamp"])["yday"]
	event["16992__http__get__timestamp_wday"] = parse_timestamp(event["16992.http.get.timestamp"])["wday"]
	event["16992__http__get__timestamp_isdst"] = parse_timestamp(event["16992.http.get.timestamp"])["isdst"]
	if event["16992__http__get__timestamp_yday"] ~= nil then
	  event["16992__http__get__timestamp_yweek"] = (event["16992__http__get__timestamp_yday"] // 7) + 1
	  event["16992__http__get__timestamp_yquarter"] = (event["16992__http__get__timestamp_yday"] // 91) + 1
	end
	if event["16992__http__get__timestamp_wday"] ~= nil then
	  event["16992__http__get__timestamp_is_weekend"] = arr_has_value(weekends, event["16992__http__get__timestamp_wday"])
	  event["16992__http__get__timestamp_is_weekday"] = arr_has_value(weekdays, event["16992__http__get__timestamp_wday"])
	end
	event["16992__http__get__timestamp"] = event["16992.http.get.timestamp"]
	event["p16993__https__get__timestamp_year"] = parse_timestamp(event["p16993.https.get.timestamp"])["year"]
	event["p16993__https__get__timestamp_month"] = parse_timestamp(event["p16993.https.get.timestamp"])["month"]
	event["p16993__https__get__timestamp_day"] = parse_timestamp(event["p16993.https.get.timestamp"])["day"]
	event["p16993__https__get__timestamp_hour"] = parse_timestamp(event["p16993.https.get.timestamp"])["hour"]
	event["p16993__https__get__timestamp_min"] = parse_timestamp(event["p16993.https.get.timestamp"])["min"]
	event["p16993__https__get__timestamp_sec"] = parse_timestamp(event["p16993.https.get.timestamp"])["sec"]
	event["p16993__https__get__timestamp_yday"] = parse_timestamp(event["p16993.https.get.timestamp"])["yday"]
	event["p16993__https__get__timestamp_wday"] = parse_timestamp(event["p16993.https.get.timestamp"])["wday"]
	event["p16993__https__get__timestamp_isdst"] = parse_timestamp(event["p16993.https.get.timestamp"])["isdst"]
	if event["p16993__https__get__timestamp_yday"] ~= nil then
	  event["p16993__https__get__timestamp_yweek"] = (event["p16993__https__get__timestamp_yday"] // 7) + 1
	  event["p16993__https__get__timestamp_yquarter"] = (event["p16993__https__get__timestamp_yday"] // 91) + 1
	end
	if event["p16993__https__get__timestamp_wday"] ~= nil then
	  event["p16993__https__get__timestamp_is_weekend"] = arr_has_value(weekends, event["p16993__https__get__timestamp_wday"])
	  event["p16993__https__get__timestamp_is_weekday"] = arr_has_value(weekdays, event["p16993__https__get__timestamp_wday"])
	end
	event["p16993__https__get__timestamp"] = event["p16993.https.get.timestamp"]
	event["16993__https__get__timestamp"] = event["16993.https.get.timestamp"]
	event["16993__https__get__timestamp_year"] = parse_timestamp(event["16993.https.get.timestamp"])["year"]
	event["16993__https__get__timestamp_month"] = parse_timestamp(event["16993.https.get.timestamp"])["month"]
	event["16993__https__get__timestamp_day"] = parse_timestamp(event["16993.https.get.timestamp"])["day"]
	event["16993__https__get__timestamp_hour"] = parse_timestamp(event["16993.https.get.timestamp"])["hour"]
	event["16993__https__get__timestamp_min"] = parse_timestamp(event["16993.https.get.timestamp"])["min"]
	event["16993__https__get__timestamp_sec"] = parse_timestamp(event["16993.https.get.timestamp"])["sec"]
	event["16993__https__get__timestamp_yday"] = parse_timestamp(event["16993.https.get.timestamp"])["yday"]
	event["16993__https__get__timestamp_wday"] = parse_timestamp(event["16993.https.get.timestamp"])["wday"]
	event["16993__https__get__timestamp_isdst"] = parse_timestamp(event["16993.https.get.timestamp"])["isdst"]
	if event["16993__https__get__timestamp_yday"] ~= nil then
	  event["16993__https__get__timestamp_yweek"] = (event["16993__https__get__timestamp_yday"] // 7) + 1
	  event["16993__https__get__timestamp_yquarter"] = (event["16993__https__get__timestamp_yday"] // 91) + 1
	end
	if event["16993__https__get__timestamp_wday"] ~= nil then
	  event["16993__https__get__timestamp_is_weekend"] = arr_has_value(weekends, event["16993__https__get__timestamp_wday"])
	  event["16993__https__get__timestamp_is_weekday"] = arr_has_value(weekdays, event["16993__https__get__timestamp_wday"])
	end
	event["16993__https__get__timestamp"] = event["16993.https.get.timestamp"]
	event["p3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p3389.rdp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["3389.rdp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["3389__rdp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["3389.rdp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p3389__rdp__banner__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.validity.end"])["year"]
	event["p3389__rdp__banner__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.validity.end"])["month"]
	event["p3389__rdp__banner__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.validity.end"])["day"]
	event["p3389__rdp__banner__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.validity.end"])["hour"]
	event["p3389__rdp__banner__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.validity.end"])["min"]
	event["p3389__rdp__banner__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.validity.end"])["sec"]
	event["p3389__rdp__banner__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.validity.end"])["yday"]
	event["p3389__rdp__banner__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.validity.end"])["wday"]
	event["p3389__rdp__banner__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.validity.end"])["isdst"]
	if event["p3389__rdp__banner__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p3389__rdp__banner__tls__certificate__parsed__validity__end_yweek"] = (event["p3389__rdp__banner__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p3389__rdp__banner__tls__certificate__parsed__validity__end_yquarter"] = (event["p3389__rdp__banner__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p3389__rdp__banner__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p3389__rdp__banner__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p3389__rdp__banner__tls__certificate__parsed__validity__end_wday"])
	  event["p3389__rdp__banner__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p3389__rdp__banner__tls__certificate__parsed__validity__end_wday"])
	end
	event["p3389__rdp__banner__tls__certificate__parsed__validity__end"] = event["p3389.rdp.banner.tls.certificate.parsed.validity.end"]
	event["3389__rdp__banner__tls__certificate__parsed__validity__end"] = event["3389.rdp.banner.tls.certificate.parsed.validity.end"]
	event["3389__rdp__banner__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.validity.end"])["year"]
	event["3389__rdp__banner__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.validity.end"])["month"]
	event["3389__rdp__banner__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.validity.end"])["day"]
	event["3389__rdp__banner__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.validity.end"])["hour"]
	event["3389__rdp__banner__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.validity.end"])["min"]
	event["3389__rdp__banner__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.validity.end"])["sec"]
	event["3389__rdp__banner__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.validity.end"])["yday"]
	event["3389__rdp__banner__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.validity.end"])["wday"]
	event["3389__rdp__banner__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.validity.end"])["isdst"]
	if event["3389__rdp__banner__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["3389__rdp__banner__tls__certificate__parsed__validity__end_yweek"] = (event["3389__rdp__banner__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["3389__rdp__banner__tls__certificate__parsed__validity__end_yquarter"] = (event["3389__rdp__banner__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["3389__rdp__banner__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["3389__rdp__banner__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["3389__rdp__banner__tls__certificate__parsed__validity__end_wday"])
	  event["3389__rdp__banner__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["3389__rdp__banner__tls__certificate__parsed__validity__end_wday"])
	end
	event["3389__rdp__banner__tls__certificate__parsed__validity__end"] = event["3389.rdp.banner.tls.certificate.parsed.validity.end"]
	event["p3389__rdp__banner__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.validity.start"])["year"]
	event["p3389__rdp__banner__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.validity.start"])["month"]
	event["p3389__rdp__banner__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.validity.start"])["day"]
	event["p3389__rdp__banner__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.validity.start"])["hour"]
	event["p3389__rdp__banner__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.validity.start"])["min"]
	event["p3389__rdp__banner__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.validity.start"])["sec"]
	event["p3389__rdp__banner__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.validity.start"])["yday"]
	event["p3389__rdp__banner__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.validity.start"])["wday"]
	event["p3389__rdp__banner__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p3389.rdp.banner.tls.certificate.parsed.validity.start"])["isdst"]
	if event["p3389__rdp__banner__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p3389__rdp__banner__tls__certificate__parsed__validity__start_yweek"] = (event["p3389__rdp__banner__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p3389__rdp__banner__tls__certificate__parsed__validity__start_yquarter"] = (event["p3389__rdp__banner__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p3389__rdp__banner__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p3389__rdp__banner__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p3389__rdp__banner__tls__certificate__parsed__validity__start_wday"])
	  event["p3389__rdp__banner__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p3389__rdp__banner__tls__certificate__parsed__validity__start_wday"])
	end
	event["p3389__rdp__banner__tls__certificate__parsed__validity__start"] = event["p3389.rdp.banner.tls.certificate.parsed.validity.start"]
	event["3389__rdp__banner__tls__certificate__parsed__validity__start"] = event["3389.rdp.banner.tls.certificate.parsed.validity.start"]
	event["3389__rdp__banner__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.validity.start"])["year"]
	event["3389__rdp__banner__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.validity.start"])["month"]
	event["3389__rdp__banner__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.validity.start"])["day"]
	event["3389__rdp__banner__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.validity.start"])["hour"]
	event["3389__rdp__banner__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.validity.start"])["min"]
	event["3389__rdp__banner__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.validity.start"])["sec"]
	event["3389__rdp__banner__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.validity.start"])["yday"]
	event["3389__rdp__banner__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.validity.start"])["wday"]
	event["3389__rdp__banner__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["3389.rdp.banner.tls.certificate.parsed.validity.start"])["isdst"]
	if event["3389__rdp__banner__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["3389__rdp__banner__tls__certificate__parsed__validity__start_yweek"] = (event["3389__rdp__banner__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["3389__rdp__banner__tls__certificate__parsed__validity__start_yquarter"] = (event["3389__rdp__banner__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["3389__rdp__banner__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["3389__rdp__banner__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["3389__rdp__banner__tls__certificate__parsed__validity__start_wday"])
	  event["3389__rdp__banner__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["3389__rdp__banner__tls__certificate__parsed__validity__start_wday"])
	end
	event["3389__rdp__banner__tls__certificate__parsed__validity__start"] = event["3389.rdp.banner.tls.certificate.parsed.validity.start"]
	event["p3389__rdp__banner__tls__scts__timestamp_year"] = parse_timestamp(event["p3389.rdp.banner.tls.scts.timestamp"])["year"]
	event["p3389__rdp__banner__tls__scts__timestamp_month"] = parse_timestamp(event["p3389.rdp.banner.tls.scts.timestamp"])["month"]
	event["p3389__rdp__banner__tls__scts__timestamp_day"] = parse_timestamp(event["p3389.rdp.banner.tls.scts.timestamp"])["day"]
	event["p3389__rdp__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["p3389.rdp.banner.tls.scts.timestamp"])["hour"]
	event["p3389__rdp__banner__tls__scts__timestamp_min"] = parse_timestamp(event["p3389.rdp.banner.tls.scts.timestamp"])["min"]
	event["p3389__rdp__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["p3389.rdp.banner.tls.scts.timestamp"])["sec"]
	event["p3389__rdp__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["p3389.rdp.banner.tls.scts.timestamp"])["yday"]
	event["p3389__rdp__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["p3389.rdp.banner.tls.scts.timestamp"])["wday"]
	event["p3389__rdp__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["p3389.rdp.banner.tls.scts.timestamp"])["isdst"]
	if event["p3389__rdp__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["p3389__rdp__banner__tls__scts__timestamp_yweek"] = (event["p3389__rdp__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["p3389__rdp__banner__tls__scts__timestamp_yquarter"] = (event["p3389__rdp__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["p3389__rdp__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["p3389__rdp__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["p3389__rdp__banner__tls__scts__timestamp_wday"])
	  event["p3389__rdp__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["p3389__rdp__banner__tls__scts__timestamp_wday"])
	end
	event["p3389__rdp__banner__tls__scts__timestamp"] = event["p3389.rdp.banner.tls.scts.timestamp"]
	event["3389__rdp__banner__tls__scts__timestamp"] = event["3389.rdp.banner.tls.scts.timestamp"]
	event["3389__rdp__banner__tls__scts__timestamp_year"] = parse_timestamp(event["3389.rdp.banner.tls.scts.timestamp"])["year"]
	event["3389__rdp__banner__tls__scts__timestamp_month"] = parse_timestamp(event["3389.rdp.banner.tls.scts.timestamp"])["month"]
	event["3389__rdp__banner__tls__scts__timestamp_day"] = parse_timestamp(event["3389.rdp.banner.tls.scts.timestamp"])["day"]
	event["3389__rdp__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["3389.rdp.banner.tls.scts.timestamp"])["hour"]
	event["3389__rdp__banner__tls__scts__timestamp_min"] = parse_timestamp(event["3389.rdp.banner.tls.scts.timestamp"])["min"]
	event["3389__rdp__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["3389.rdp.banner.tls.scts.timestamp"])["sec"]
	event["3389__rdp__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["3389.rdp.banner.tls.scts.timestamp"])["yday"]
	event["3389__rdp__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["3389.rdp.banner.tls.scts.timestamp"])["wday"]
	event["3389__rdp__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["3389.rdp.banner.tls.scts.timestamp"])["isdst"]
	if event["3389__rdp__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["3389__rdp__banner__tls__scts__timestamp_yweek"] = (event["3389__rdp__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["3389__rdp__banner__tls__scts__timestamp_yquarter"] = (event["3389__rdp__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["3389__rdp__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["3389__rdp__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["3389__rdp__banner__tls__scts__timestamp_wday"])
	  event["3389__rdp__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["3389__rdp__banner__tls__scts__timestamp_wday"])
	end
	event["3389__rdp__banner__tls__scts__timestamp"] = event["3389.rdp.banner.tls.scts.timestamp"]
	event["p3389__rdp__banner__tls__timestamp_year"] = parse_timestamp(event["p3389.rdp.banner.tls.timestamp"])["year"]
	event["p3389__rdp__banner__tls__timestamp_month"] = parse_timestamp(event["p3389.rdp.banner.tls.timestamp"])["month"]
	event["p3389__rdp__banner__tls__timestamp_day"] = parse_timestamp(event["p3389.rdp.banner.tls.timestamp"])["day"]
	event["p3389__rdp__banner__tls__timestamp_hour"] = parse_timestamp(event["p3389.rdp.banner.tls.timestamp"])["hour"]
	event["p3389__rdp__banner__tls__timestamp_min"] = parse_timestamp(event["p3389.rdp.banner.tls.timestamp"])["min"]
	event["p3389__rdp__banner__tls__timestamp_sec"] = parse_timestamp(event["p3389.rdp.banner.tls.timestamp"])["sec"]
	event["p3389__rdp__banner__tls__timestamp_yday"] = parse_timestamp(event["p3389.rdp.banner.tls.timestamp"])["yday"]
	event["p3389__rdp__banner__tls__timestamp_wday"] = parse_timestamp(event["p3389.rdp.banner.tls.timestamp"])["wday"]
	event["p3389__rdp__banner__tls__timestamp_isdst"] = parse_timestamp(event["p3389.rdp.banner.tls.timestamp"])["isdst"]
	if event["p3389__rdp__banner__tls__timestamp_yday"] ~= nil then
	  event["p3389__rdp__banner__tls__timestamp_yweek"] = (event["p3389__rdp__banner__tls__timestamp_yday"] // 7) + 1
	  event["p3389__rdp__banner__tls__timestamp_yquarter"] = (event["p3389__rdp__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["p3389__rdp__banner__tls__timestamp_wday"] ~= nil then
	  event["p3389__rdp__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p3389__rdp__banner__tls__timestamp_wday"])
	  event["p3389__rdp__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p3389__rdp__banner__tls__timestamp_wday"])
	end
	event["p3389__rdp__banner__tls__timestamp"] = event["p3389.rdp.banner.tls.timestamp"]
	event["3389__rdp__banner__tls__timestamp"] = event["3389.rdp.banner.tls.timestamp"]
	event["3389__rdp__banner__tls__timestamp_year"] = parse_timestamp(event["3389.rdp.banner.tls.timestamp"])["year"]
	event["3389__rdp__banner__tls__timestamp_month"] = parse_timestamp(event["3389.rdp.banner.tls.timestamp"])["month"]
	event["3389__rdp__banner__tls__timestamp_day"] = parse_timestamp(event["3389.rdp.banner.tls.timestamp"])["day"]
	event["3389__rdp__banner__tls__timestamp_hour"] = parse_timestamp(event["3389.rdp.banner.tls.timestamp"])["hour"]
	event["3389__rdp__banner__tls__timestamp_min"] = parse_timestamp(event["3389.rdp.banner.tls.timestamp"])["min"]
	event["3389__rdp__banner__tls__timestamp_sec"] = parse_timestamp(event["3389.rdp.banner.tls.timestamp"])["sec"]
	event["3389__rdp__banner__tls__timestamp_yday"] = parse_timestamp(event["3389.rdp.banner.tls.timestamp"])["yday"]
	event["3389__rdp__banner__tls__timestamp_wday"] = parse_timestamp(event["3389.rdp.banner.tls.timestamp"])["wday"]
	event["3389__rdp__banner__tls__timestamp_isdst"] = parse_timestamp(event["3389.rdp.banner.tls.timestamp"])["isdst"]
	if event["3389__rdp__banner__tls__timestamp_yday"] ~= nil then
	  event["3389__rdp__banner__tls__timestamp_yweek"] = (event["3389__rdp__banner__tls__timestamp_yday"] // 7) + 1
	  event["3389__rdp__banner__tls__timestamp_yquarter"] = (event["3389__rdp__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["3389__rdp__banner__tls__timestamp_wday"] ~= nil then
	  event["3389__rdp__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["3389__rdp__banner__tls__timestamp_wday"])
	  event["3389__rdp__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["3389__rdp__banner__tls__timestamp_wday"])
	end
	event["3389__rdp__banner__tls__timestamp"] = event["3389.rdp.banner.tls.timestamp"]
	event["p1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p1883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["1883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["1883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["1883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p1883__mqtt__banner__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.validity.end"])["year"]
	event["p1883__mqtt__banner__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.validity.end"])["month"]
	event["p1883__mqtt__banner__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.validity.end"])["day"]
	event["p1883__mqtt__banner__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.validity.end"])["hour"]
	event["p1883__mqtt__banner__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.validity.end"])["min"]
	event["p1883__mqtt__banner__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.validity.end"])["sec"]
	event["p1883__mqtt__banner__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.validity.end"])["yday"]
	event["p1883__mqtt__banner__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.validity.end"])["wday"]
	event["p1883__mqtt__banner__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.validity.end"])["isdst"]
	if event["p1883__mqtt__banner__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p1883__mqtt__banner__tls__certificate__parsed__validity__end_yweek"] = (event["p1883__mqtt__banner__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p1883__mqtt__banner__tls__certificate__parsed__validity__end_yquarter"] = (event["p1883__mqtt__banner__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p1883__mqtt__banner__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p1883__mqtt__banner__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p1883__mqtt__banner__tls__certificate__parsed__validity__end_wday"])
	  event["p1883__mqtt__banner__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p1883__mqtt__banner__tls__certificate__parsed__validity__end_wday"])
	end
	event["p1883__mqtt__banner__tls__certificate__parsed__validity__end"] = event["p1883.mqtt.banner.tls.certificate.parsed.validity.end"]
	event["1883__mqtt__banner__tls__certificate__parsed__validity__end"] = event["1883.mqtt.banner.tls.certificate.parsed.validity.end"]
	event["1883__mqtt__banner__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.validity.end"])["year"]
	event["1883__mqtt__banner__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.validity.end"])["month"]
	event["1883__mqtt__banner__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.validity.end"])["day"]
	event["1883__mqtt__banner__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.validity.end"])["hour"]
	event["1883__mqtt__banner__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.validity.end"])["min"]
	event["1883__mqtt__banner__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.validity.end"])["sec"]
	event["1883__mqtt__banner__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.validity.end"])["yday"]
	event["1883__mqtt__banner__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.validity.end"])["wday"]
	event["1883__mqtt__banner__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.validity.end"])["isdst"]
	if event["1883__mqtt__banner__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["1883__mqtt__banner__tls__certificate__parsed__validity__end_yweek"] = (event["1883__mqtt__banner__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["1883__mqtt__banner__tls__certificate__parsed__validity__end_yquarter"] = (event["1883__mqtt__banner__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["1883__mqtt__banner__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["1883__mqtt__banner__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["1883__mqtt__banner__tls__certificate__parsed__validity__end_wday"])
	  event["1883__mqtt__banner__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["1883__mqtt__banner__tls__certificate__parsed__validity__end_wday"])
	end
	event["1883__mqtt__banner__tls__certificate__parsed__validity__end"] = event["1883.mqtt.banner.tls.certificate.parsed.validity.end"]
	event["p1883__mqtt__banner__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.validity.start"])["year"]
	event["p1883__mqtt__banner__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.validity.start"])["month"]
	event["p1883__mqtt__banner__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.validity.start"])["day"]
	event["p1883__mqtt__banner__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.validity.start"])["hour"]
	event["p1883__mqtt__banner__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.validity.start"])["min"]
	event["p1883__mqtt__banner__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.validity.start"])["sec"]
	event["p1883__mqtt__banner__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.validity.start"])["yday"]
	event["p1883__mqtt__banner__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.validity.start"])["wday"]
	event["p1883__mqtt__banner__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p1883.mqtt.banner.tls.certificate.parsed.validity.start"])["isdst"]
	if event["p1883__mqtt__banner__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p1883__mqtt__banner__tls__certificate__parsed__validity__start_yweek"] = (event["p1883__mqtt__banner__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p1883__mqtt__banner__tls__certificate__parsed__validity__start_yquarter"] = (event["p1883__mqtt__banner__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p1883__mqtt__banner__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p1883__mqtt__banner__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p1883__mqtt__banner__tls__certificate__parsed__validity__start_wday"])
	  event["p1883__mqtt__banner__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p1883__mqtt__banner__tls__certificate__parsed__validity__start_wday"])
	end
	event["p1883__mqtt__banner__tls__certificate__parsed__validity__start"] = event["p1883.mqtt.banner.tls.certificate.parsed.validity.start"]
	event["1883__mqtt__banner__tls__certificate__parsed__validity__start"] = event["1883.mqtt.banner.tls.certificate.parsed.validity.start"]
	event["1883__mqtt__banner__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.validity.start"])["year"]
	event["1883__mqtt__banner__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.validity.start"])["month"]
	event["1883__mqtt__banner__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.validity.start"])["day"]
	event["1883__mqtt__banner__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.validity.start"])["hour"]
	event["1883__mqtt__banner__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.validity.start"])["min"]
	event["1883__mqtt__banner__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.validity.start"])["sec"]
	event["1883__mqtt__banner__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.validity.start"])["yday"]
	event["1883__mqtt__banner__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.validity.start"])["wday"]
	event["1883__mqtt__banner__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["1883.mqtt.banner.tls.certificate.parsed.validity.start"])["isdst"]
	if event["1883__mqtt__banner__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["1883__mqtt__banner__tls__certificate__parsed__validity__start_yweek"] = (event["1883__mqtt__banner__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["1883__mqtt__banner__tls__certificate__parsed__validity__start_yquarter"] = (event["1883__mqtt__banner__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["1883__mqtt__banner__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["1883__mqtt__banner__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["1883__mqtt__banner__tls__certificate__parsed__validity__start_wday"])
	  event["1883__mqtt__banner__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["1883__mqtt__banner__tls__certificate__parsed__validity__start_wday"])
	end
	event["1883__mqtt__banner__tls__certificate__parsed__validity__start"] = event["1883.mqtt.banner.tls.certificate.parsed.validity.start"]
	event["p1883__mqtt__banner__tls__scts__timestamp_year"] = parse_timestamp(event["p1883.mqtt.banner.tls.scts.timestamp"])["year"]
	event["p1883__mqtt__banner__tls__scts__timestamp_month"] = parse_timestamp(event["p1883.mqtt.banner.tls.scts.timestamp"])["month"]
	event["p1883__mqtt__banner__tls__scts__timestamp_day"] = parse_timestamp(event["p1883.mqtt.banner.tls.scts.timestamp"])["day"]
	event["p1883__mqtt__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["p1883.mqtt.banner.tls.scts.timestamp"])["hour"]
	event["p1883__mqtt__banner__tls__scts__timestamp_min"] = parse_timestamp(event["p1883.mqtt.banner.tls.scts.timestamp"])["min"]
	event["p1883__mqtt__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["p1883.mqtt.banner.tls.scts.timestamp"])["sec"]
	event["p1883__mqtt__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["p1883.mqtt.banner.tls.scts.timestamp"])["yday"]
	event["p1883__mqtt__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["p1883.mqtt.banner.tls.scts.timestamp"])["wday"]
	event["p1883__mqtt__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["p1883.mqtt.banner.tls.scts.timestamp"])["isdst"]
	if event["p1883__mqtt__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["p1883__mqtt__banner__tls__scts__timestamp_yweek"] = (event["p1883__mqtt__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["p1883__mqtt__banner__tls__scts__timestamp_yquarter"] = (event["p1883__mqtt__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["p1883__mqtt__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["p1883__mqtt__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["p1883__mqtt__banner__tls__scts__timestamp_wday"])
	  event["p1883__mqtt__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["p1883__mqtt__banner__tls__scts__timestamp_wday"])
	end
	event["p1883__mqtt__banner__tls__scts__timestamp"] = event["p1883.mqtt.banner.tls.scts.timestamp"]
	event["1883__mqtt__banner__tls__scts__timestamp"] = event["1883.mqtt.banner.tls.scts.timestamp"]
	event["1883__mqtt__banner__tls__scts__timestamp_year"] = parse_timestamp(event["1883.mqtt.banner.tls.scts.timestamp"])["year"]
	event["1883__mqtt__banner__tls__scts__timestamp_month"] = parse_timestamp(event["1883.mqtt.banner.tls.scts.timestamp"])["month"]
	event["1883__mqtt__banner__tls__scts__timestamp_day"] = parse_timestamp(event["1883.mqtt.banner.tls.scts.timestamp"])["day"]
	event["1883__mqtt__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["1883.mqtt.banner.tls.scts.timestamp"])["hour"]
	event["1883__mqtt__banner__tls__scts__timestamp_min"] = parse_timestamp(event["1883.mqtt.banner.tls.scts.timestamp"])["min"]
	event["1883__mqtt__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["1883.mqtt.banner.tls.scts.timestamp"])["sec"]
	event["1883__mqtt__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["1883.mqtt.banner.tls.scts.timestamp"])["yday"]
	event["1883__mqtt__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["1883.mqtt.banner.tls.scts.timestamp"])["wday"]
	event["1883__mqtt__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["1883.mqtt.banner.tls.scts.timestamp"])["isdst"]
	if event["1883__mqtt__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["1883__mqtt__banner__tls__scts__timestamp_yweek"] = (event["1883__mqtt__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["1883__mqtt__banner__tls__scts__timestamp_yquarter"] = (event["1883__mqtt__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["1883__mqtt__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["1883__mqtt__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["1883__mqtt__banner__tls__scts__timestamp_wday"])
	  event["1883__mqtt__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["1883__mqtt__banner__tls__scts__timestamp_wday"])
	end
	event["1883__mqtt__banner__tls__scts__timestamp"] = event["1883.mqtt.banner.tls.scts.timestamp"]
	event["p1883__mqtt__banner__tls__timestamp_year"] = parse_timestamp(event["p1883.mqtt.banner.tls.timestamp"])["year"]
	event["p1883__mqtt__banner__tls__timestamp_month"] = parse_timestamp(event["p1883.mqtt.banner.tls.timestamp"])["month"]
	event["p1883__mqtt__banner__tls__timestamp_day"] = parse_timestamp(event["p1883.mqtt.banner.tls.timestamp"])["day"]
	event["p1883__mqtt__banner__tls__timestamp_hour"] = parse_timestamp(event["p1883.mqtt.banner.tls.timestamp"])["hour"]
	event["p1883__mqtt__banner__tls__timestamp_min"] = parse_timestamp(event["p1883.mqtt.banner.tls.timestamp"])["min"]
	event["p1883__mqtt__banner__tls__timestamp_sec"] = parse_timestamp(event["p1883.mqtt.banner.tls.timestamp"])["sec"]
	event["p1883__mqtt__banner__tls__timestamp_yday"] = parse_timestamp(event["p1883.mqtt.banner.tls.timestamp"])["yday"]
	event["p1883__mqtt__banner__tls__timestamp_wday"] = parse_timestamp(event["p1883.mqtt.banner.tls.timestamp"])["wday"]
	event["p1883__mqtt__banner__tls__timestamp_isdst"] = parse_timestamp(event["p1883.mqtt.banner.tls.timestamp"])["isdst"]
	if event["p1883__mqtt__banner__tls__timestamp_yday"] ~= nil then
	  event["p1883__mqtt__banner__tls__timestamp_yweek"] = (event["p1883__mqtt__banner__tls__timestamp_yday"] // 7) + 1
	  event["p1883__mqtt__banner__tls__timestamp_yquarter"] = (event["p1883__mqtt__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["p1883__mqtt__banner__tls__timestamp_wday"] ~= nil then
	  event["p1883__mqtt__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p1883__mqtt__banner__tls__timestamp_wday"])
	  event["p1883__mqtt__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p1883__mqtt__banner__tls__timestamp_wday"])
	end
	event["p1883__mqtt__banner__tls__timestamp"] = event["p1883.mqtt.banner.tls.timestamp"]
	event["1883__mqtt__banner__tls__timestamp"] = event["1883.mqtt.banner.tls.timestamp"]
	event["1883__mqtt__banner__tls__timestamp_year"] = parse_timestamp(event["1883.mqtt.banner.tls.timestamp"])["year"]
	event["1883__mqtt__banner__tls__timestamp_month"] = parse_timestamp(event["1883.mqtt.banner.tls.timestamp"])["month"]
	event["1883__mqtt__banner__tls__timestamp_day"] = parse_timestamp(event["1883.mqtt.banner.tls.timestamp"])["day"]
	event["1883__mqtt__banner__tls__timestamp_hour"] = parse_timestamp(event["1883.mqtt.banner.tls.timestamp"])["hour"]
	event["1883__mqtt__banner__tls__timestamp_min"] = parse_timestamp(event["1883.mqtt.banner.tls.timestamp"])["min"]
	event["1883__mqtt__banner__tls__timestamp_sec"] = parse_timestamp(event["1883.mqtt.banner.tls.timestamp"])["sec"]
	event["1883__mqtt__banner__tls__timestamp_yday"] = parse_timestamp(event["1883.mqtt.banner.tls.timestamp"])["yday"]
	event["1883__mqtt__banner__tls__timestamp_wday"] = parse_timestamp(event["1883.mqtt.banner.tls.timestamp"])["wday"]
	event["1883__mqtt__banner__tls__timestamp_isdst"] = parse_timestamp(event["1883.mqtt.banner.tls.timestamp"])["isdst"]
	if event["1883__mqtt__banner__tls__timestamp_yday"] ~= nil then
	  event["1883__mqtt__banner__tls__timestamp_yweek"] = (event["1883__mqtt__banner__tls__timestamp_yday"] // 7) + 1
	  event["1883__mqtt__banner__tls__timestamp_yquarter"] = (event["1883__mqtt__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["1883__mqtt__banner__tls__timestamp_wday"] ~= nil then
	  event["1883__mqtt__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["1883__mqtt__banner__tls__timestamp_wday"])
	  event["1883__mqtt__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["1883__mqtt__banner__tls__timestamp_wday"])
	end
	event["1883__mqtt__banner__tls__timestamp"] = event["1883.mqtt.banner.tls.timestamp"]
	event["p5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p5672.amqp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["5672.amqp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["5672__amqp__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["5672.amqp.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p5672__amqp__banner__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.validity.end"])["year"]
	event["p5672__amqp__banner__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.validity.end"])["month"]
	event["p5672__amqp__banner__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.validity.end"])["day"]
	event["p5672__amqp__banner__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.validity.end"])["hour"]
	event["p5672__amqp__banner__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.validity.end"])["min"]
	event["p5672__amqp__banner__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.validity.end"])["sec"]
	event["p5672__amqp__banner__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.validity.end"])["yday"]
	event["p5672__amqp__banner__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.validity.end"])["wday"]
	event["p5672__amqp__banner__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.validity.end"])["isdst"]
	if event["p5672__amqp__banner__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p5672__amqp__banner__tls__certificate__parsed__validity__end_yweek"] = (event["p5672__amqp__banner__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p5672__amqp__banner__tls__certificate__parsed__validity__end_yquarter"] = (event["p5672__amqp__banner__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p5672__amqp__banner__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p5672__amqp__banner__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p5672__amqp__banner__tls__certificate__parsed__validity__end_wday"])
	  event["p5672__amqp__banner__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p5672__amqp__banner__tls__certificate__parsed__validity__end_wday"])
	end
	event["p5672__amqp__banner__tls__certificate__parsed__validity__end"] = event["p5672.amqp.banner.tls.certificate.parsed.validity.end"]
	event["5672__amqp__banner__tls__certificate__parsed__validity__end"] = event["5672.amqp.banner.tls.certificate.parsed.validity.end"]
	event["5672__amqp__banner__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.validity.end"])["year"]
	event["5672__amqp__banner__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.validity.end"])["month"]
	event["5672__amqp__banner__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.validity.end"])["day"]
	event["5672__amqp__banner__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.validity.end"])["hour"]
	event["5672__amqp__banner__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.validity.end"])["min"]
	event["5672__amqp__banner__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.validity.end"])["sec"]
	event["5672__amqp__banner__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.validity.end"])["yday"]
	event["5672__amqp__banner__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.validity.end"])["wday"]
	event["5672__amqp__banner__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.validity.end"])["isdst"]
	if event["5672__amqp__banner__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["5672__amqp__banner__tls__certificate__parsed__validity__end_yweek"] = (event["5672__amqp__banner__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["5672__amqp__banner__tls__certificate__parsed__validity__end_yquarter"] = (event["5672__amqp__banner__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["5672__amqp__banner__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["5672__amqp__banner__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["5672__amqp__banner__tls__certificate__parsed__validity__end_wday"])
	  event["5672__amqp__banner__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["5672__amqp__banner__tls__certificate__parsed__validity__end_wday"])
	end
	event["5672__amqp__banner__tls__certificate__parsed__validity__end"] = event["5672.amqp.banner.tls.certificate.parsed.validity.end"]
	event["p5672__amqp__banner__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.validity.start"])["year"]
	event["p5672__amqp__banner__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.validity.start"])["month"]
	event["p5672__amqp__banner__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.validity.start"])["day"]
	event["p5672__amqp__banner__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.validity.start"])["hour"]
	event["p5672__amqp__banner__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.validity.start"])["min"]
	event["p5672__amqp__banner__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.validity.start"])["sec"]
	event["p5672__amqp__banner__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.validity.start"])["yday"]
	event["p5672__amqp__banner__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.validity.start"])["wday"]
	event["p5672__amqp__banner__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p5672.amqp.banner.tls.certificate.parsed.validity.start"])["isdst"]
	if event["p5672__amqp__banner__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p5672__amqp__banner__tls__certificate__parsed__validity__start_yweek"] = (event["p5672__amqp__banner__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p5672__amqp__banner__tls__certificate__parsed__validity__start_yquarter"] = (event["p5672__amqp__banner__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p5672__amqp__banner__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p5672__amqp__banner__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p5672__amqp__banner__tls__certificate__parsed__validity__start_wday"])
	  event["p5672__amqp__banner__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p5672__amqp__banner__tls__certificate__parsed__validity__start_wday"])
	end
	event["p5672__amqp__banner__tls__certificate__parsed__validity__start"] = event["p5672.amqp.banner.tls.certificate.parsed.validity.start"]
	event["5672__amqp__banner__tls__certificate__parsed__validity__start"] = event["5672.amqp.banner.tls.certificate.parsed.validity.start"]
	event["5672__amqp__banner__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.validity.start"])["year"]
	event["5672__amqp__banner__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.validity.start"])["month"]
	event["5672__amqp__banner__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.validity.start"])["day"]
	event["5672__amqp__banner__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.validity.start"])["hour"]
	event["5672__amqp__banner__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.validity.start"])["min"]
	event["5672__amqp__banner__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.validity.start"])["sec"]
	event["5672__amqp__banner__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.validity.start"])["yday"]
	event["5672__amqp__banner__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.validity.start"])["wday"]
	event["5672__amqp__banner__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["5672.amqp.banner.tls.certificate.parsed.validity.start"])["isdst"]
	if event["5672__amqp__banner__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["5672__amqp__banner__tls__certificate__parsed__validity__start_yweek"] = (event["5672__amqp__banner__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["5672__amqp__banner__tls__certificate__parsed__validity__start_yquarter"] = (event["5672__amqp__banner__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["5672__amqp__banner__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["5672__amqp__banner__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["5672__amqp__banner__tls__certificate__parsed__validity__start_wday"])
	  event["5672__amqp__banner__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["5672__amqp__banner__tls__certificate__parsed__validity__start_wday"])
	end
	event["5672__amqp__banner__tls__certificate__parsed__validity__start"] = event["5672.amqp.banner.tls.certificate.parsed.validity.start"]
	event["p5672__amqp__banner__tls__scts__timestamp_year"] = parse_timestamp(event["p5672.amqp.banner.tls.scts.timestamp"])["year"]
	event["p5672__amqp__banner__tls__scts__timestamp_month"] = parse_timestamp(event["p5672.amqp.banner.tls.scts.timestamp"])["month"]
	event["p5672__amqp__banner__tls__scts__timestamp_day"] = parse_timestamp(event["p5672.amqp.banner.tls.scts.timestamp"])["day"]
	event["p5672__amqp__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["p5672.amqp.banner.tls.scts.timestamp"])["hour"]
	event["p5672__amqp__banner__tls__scts__timestamp_min"] = parse_timestamp(event["p5672.amqp.banner.tls.scts.timestamp"])["min"]
	event["p5672__amqp__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["p5672.amqp.banner.tls.scts.timestamp"])["sec"]
	event["p5672__amqp__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["p5672.amqp.banner.tls.scts.timestamp"])["yday"]
	event["p5672__amqp__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["p5672.amqp.banner.tls.scts.timestamp"])["wday"]
	event["p5672__amqp__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["p5672.amqp.banner.tls.scts.timestamp"])["isdst"]
	if event["p5672__amqp__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["p5672__amqp__banner__tls__scts__timestamp_yweek"] = (event["p5672__amqp__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["p5672__amqp__banner__tls__scts__timestamp_yquarter"] = (event["p5672__amqp__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["p5672__amqp__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["p5672__amqp__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["p5672__amqp__banner__tls__scts__timestamp_wday"])
	  event["p5672__amqp__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["p5672__amqp__banner__tls__scts__timestamp_wday"])
	end
	event["p5672__amqp__banner__tls__scts__timestamp"] = event["p5672.amqp.banner.tls.scts.timestamp"]
	event["5672__amqp__banner__tls__scts__timestamp"] = event["5672.amqp.banner.tls.scts.timestamp"]
	event["5672__amqp__banner__tls__scts__timestamp_year"] = parse_timestamp(event["5672.amqp.banner.tls.scts.timestamp"])["year"]
	event["5672__amqp__banner__tls__scts__timestamp_month"] = parse_timestamp(event["5672.amqp.banner.tls.scts.timestamp"])["month"]
	event["5672__amqp__banner__tls__scts__timestamp_day"] = parse_timestamp(event["5672.amqp.banner.tls.scts.timestamp"])["day"]
	event["5672__amqp__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["5672.amqp.banner.tls.scts.timestamp"])["hour"]
	event["5672__amqp__banner__tls__scts__timestamp_min"] = parse_timestamp(event["5672.amqp.banner.tls.scts.timestamp"])["min"]
	event["5672__amqp__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["5672.amqp.banner.tls.scts.timestamp"])["sec"]
	event["5672__amqp__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["5672.amqp.banner.tls.scts.timestamp"])["yday"]
	event["5672__amqp__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["5672.amqp.banner.tls.scts.timestamp"])["wday"]
	event["5672__amqp__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["5672.amqp.banner.tls.scts.timestamp"])["isdst"]
	if event["5672__amqp__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["5672__amqp__banner__tls__scts__timestamp_yweek"] = (event["5672__amqp__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["5672__amqp__banner__tls__scts__timestamp_yquarter"] = (event["5672__amqp__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["5672__amqp__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["5672__amqp__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["5672__amqp__banner__tls__scts__timestamp_wday"])
	  event["5672__amqp__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["5672__amqp__banner__tls__scts__timestamp_wday"])
	end
	event["5672__amqp__banner__tls__scts__timestamp"] = event["5672.amqp.banner.tls.scts.timestamp"]
	event["p5672__amqp__banner__tls__timestamp_year"] = parse_timestamp(event["p5672.amqp.banner.tls.timestamp"])["year"]
	event["p5672__amqp__banner__tls__timestamp_month"] = parse_timestamp(event["p5672.amqp.banner.tls.timestamp"])["month"]
	event["p5672__amqp__banner__tls__timestamp_day"] = parse_timestamp(event["p5672.amqp.banner.tls.timestamp"])["day"]
	event["p5672__amqp__banner__tls__timestamp_hour"] = parse_timestamp(event["p5672.amqp.banner.tls.timestamp"])["hour"]
	event["p5672__amqp__banner__tls__timestamp_min"] = parse_timestamp(event["p5672.amqp.banner.tls.timestamp"])["min"]
	event["p5672__amqp__banner__tls__timestamp_sec"] = parse_timestamp(event["p5672.amqp.banner.tls.timestamp"])["sec"]
	event["p5672__amqp__banner__tls__timestamp_yday"] = parse_timestamp(event["p5672.amqp.banner.tls.timestamp"])["yday"]
	event["p5672__amqp__banner__tls__timestamp_wday"] = parse_timestamp(event["p5672.amqp.banner.tls.timestamp"])["wday"]
	event["p5672__amqp__banner__tls__timestamp_isdst"] = parse_timestamp(event["p5672.amqp.banner.tls.timestamp"])["isdst"]
	if event["p5672__amqp__banner__tls__timestamp_yday"] ~= nil then
	  event["p5672__amqp__banner__tls__timestamp_yweek"] = (event["p5672__amqp__banner__tls__timestamp_yday"] // 7) + 1
	  event["p5672__amqp__banner__tls__timestamp_yquarter"] = (event["p5672__amqp__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["p5672__amqp__banner__tls__timestamp_wday"] ~= nil then
	  event["p5672__amqp__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p5672__amqp__banner__tls__timestamp_wday"])
	  event["p5672__amqp__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p5672__amqp__banner__tls__timestamp_wday"])
	end
	event["p5672__amqp__banner__tls__timestamp"] = event["p5672.amqp.banner.tls.timestamp"]
	event["5672__amqp__banner__tls__timestamp"] = event["5672.amqp.banner.tls.timestamp"]
	event["5672__amqp__banner__tls__timestamp_year"] = parse_timestamp(event["5672.amqp.banner.tls.timestamp"])["year"]
	event["5672__amqp__banner__tls__timestamp_month"] = parse_timestamp(event["5672.amqp.banner.tls.timestamp"])["month"]
	event["5672__amqp__banner__tls__timestamp_day"] = parse_timestamp(event["5672.amqp.banner.tls.timestamp"])["day"]
	event["5672__amqp__banner__tls__timestamp_hour"] = parse_timestamp(event["5672.amqp.banner.tls.timestamp"])["hour"]
	event["5672__amqp__banner__tls__timestamp_min"] = parse_timestamp(event["5672.amqp.banner.tls.timestamp"])["min"]
	event["5672__amqp__banner__tls__timestamp_sec"] = parse_timestamp(event["5672.amqp.banner.tls.timestamp"])["sec"]
	event["5672__amqp__banner__tls__timestamp_yday"] = parse_timestamp(event["5672.amqp.banner.tls.timestamp"])["yday"]
	event["5672__amqp__banner__tls__timestamp_wday"] = parse_timestamp(event["5672.amqp.banner.tls.timestamp"])["wday"]
	event["5672__amqp__banner__tls__timestamp_isdst"] = parse_timestamp(event["5672.amqp.banner.tls.timestamp"])["isdst"]
	if event["5672__amqp__banner__tls__timestamp_yday"] ~= nil then
	  event["5672__amqp__banner__tls__timestamp_yweek"] = (event["5672__amqp__banner__tls__timestamp_yday"] // 7) + 1
	  event["5672__amqp__banner__tls__timestamp_yquarter"] = (event["5672__amqp__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["5672__amqp__banner__tls__timestamp_wday"] ~= nil then
	  event["5672__amqp__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["5672__amqp__banner__tls__timestamp_wday"])
	  event["5672__amqp__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["5672__amqp__banner__tls__timestamp_wday"])
	end
	event["5672__amqp__banner__tls__timestamp"] = event["5672.amqp.banner.tls.timestamp"]
	event["p8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p8883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["8883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["8883__mqtt__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["8883.mqtt.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p8883__mqtt__banner__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.validity.end"])["year"]
	event["p8883__mqtt__banner__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.validity.end"])["month"]
	event["p8883__mqtt__banner__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.validity.end"])["day"]
	event["p8883__mqtt__banner__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.validity.end"])["hour"]
	event["p8883__mqtt__banner__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.validity.end"])["min"]
	event["p8883__mqtt__banner__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.validity.end"])["sec"]
	event["p8883__mqtt__banner__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.validity.end"])["yday"]
	event["p8883__mqtt__banner__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.validity.end"])["wday"]
	event["p8883__mqtt__banner__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.validity.end"])["isdst"]
	if event["p8883__mqtt__banner__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p8883__mqtt__banner__tls__certificate__parsed__validity__end_yweek"] = (event["p8883__mqtt__banner__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p8883__mqtt__banner__tls__certificate__parsed__validity__end_yquarter"] = (event["p8883__mqtt__banner__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p8883__mqtt__banner__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p8883__mqtt__banner__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p8883__mqtt__banner__tls__certificate__parsed__validity__end_wday"])
	  event["p8883__mqtt__banner__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p8883__mqtt__banner__tls__certificate__parsed__validity__end_wday"])
	end
	event["p8883__mqtt__banner__tls__certificate__parsed__validity__end"] = event["p8883.mqtt.banner.tls.certificate.parsed.validity.end"]
	event["8883__mqtt__banner__tls__certificate__parsed__validity__end"] = event["8883.mqtt.banner.tls.certificate.parsed.validity.end"]
	event["8883__mqtt__banner__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.validity.end"])["year"]
	event["8883__mqtt__banner__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.validity.end"])["month"]
	event["8883__mqtt__banner__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.validity.end"])["day"]
	event["8883__mqtt__banner__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.validity.end"])["hour"]
	event["8883__mqtt__banner__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.validity.end"])["min"]
	event["8883__mqtt__banner__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.validity.end"])["sec"]
	event["8883__mqtt__banner__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.validity.end"])["yday"]
	event["8883__mqtt__banner__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.validity.end"])["wday"]
	event["8883__mqtt__banner__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.validity.end"])["isdst"]
	if event["8883__mqtt__banner__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["8883__mqtt__banner__tls__certificate__parsed__validity__end_yweek"] = (event["8883__mqtt__banner__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["8883__mqtt__banner__tls__certificate__parsed__validity__end_yquarter"] = (event["8883__mqtt__banner__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["8883__mqtt__banner__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["8883__mqtt__banner__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["8883__mqtt__banner__tls__certificate__parsed__validity__end_wday"])
	  event["8883__mqtt__banner__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["8883__mqtt__banner__tls__certificate__parsed__validity__end_wday"])
	end
	event["8883__mqtt__banner__tls__certificate__parsed__validity__end"] = event["8883.mqtt.banner.tls.certificate.parsed.validity.end"]
	event["p8883__mqtt__banner__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.validity.start"])["year"]
	event["p8883__mqtt__banner__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.validity.start"])["month"]
	event["p8883__mqtt__banner__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.validity.start"])["day"]
	event["p8883__mqtt__banner__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.validity.start"])["hour"]
	event["p8883__mqtt__banner__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.validity.start"])["min"]
	event["p8883__mqtt__banner__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.validity.start"])["sec"]
	event["p8883__mqtt__banner__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.validity.start"])["yday"]
	event["p8883__mqtt__banner__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.validity.start"])["wday"]
	event["p8883__mqtt__banner__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p8883.mqtt.banner.tls.certificate.parsed.validity.start"])["isdst"]
	if event["p8883__mqtt__banner__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p8883__mqtt__banner__tls__certificate__parsed__validity__start_yweek"] = (event["p8883__mqtt__banner__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p8883__mqtt__banner__tls__certificate__parsed__validity__start_yquarter"] = (event["p8883__mqtt__banner__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p8883__mqtt__banner__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p8883__mqtt__banner__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p8883__mqtt__banner__tls__certificate__parsed__validity__start_wday"])
	  event["p8883__mqtt__banner__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p8883__mqtt__banner__tls__certificate__parsed__validity__start_wday"])
	end
	event["p8883__mqtt__banner__tls__certificate__parsed__validity__start"] = event["p8883.mqtt.banner.tls.certificate.parsed.validity.start"]
	event["8883__mqtt__banner__tls__certificate__parsed__validity__start"] = event["8883.mqtt.banner.tls.certificate.parsed.validity.start"]
	event["8883__mqtt__banner__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.validity.start"])["year"]
	event["8883__mqtt__banner__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.validity.start"])["month"]
	event["8883__mqtt__banner__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.validity.start"])["day"]
	event["8883__mqtt__banner__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.validity.start"])["hour"]
	event["8883__mqtt__banner__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.validity.start"])["min"]
	event["8883__mqtt__banner__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.validity.start"])["sec"]
	event["8883__mqtt__banner__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.validity.start"])["yday"]
	event["8883__mqtt__banner__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.validity.start"])["wday"]
	event["8883__mqtt__banner__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["8883.mqtt.banner.tls.certificate.parsed.validity.start"])["isdst"]
	if event["8883__mqtt__banner__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["8883__mqtt__banner__tls__certificate__parsed__validity__start_yweek"] = (event["8883__mqtt__banner__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["8883__mqtt__banner__tls__certificate__parsed__validity__start_yquarter"] = (event["8883__mqtt__banner__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["8883__mqtt__banner__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["8883__mqtt__banner__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["8883__mqtt__banner__tls__certificate__parsed__validity__start_wday"])
	  event["8883__mqtt__banner__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["8883__mqtt__banner__tls__certificate__parsed__validity__start_wday"])
	end
	event["8883__mqtt__banner__tls__certificate__parsed__validity__start"] = event["8883.mqtt.banner.tls.certificate.parsed.validity.start"]
	event["p8883__mqtt__banner__tls__scts__timestamp_year"] = parse_timestamp(event["p8883.mqtt.banner.tls.scts.timestamp"])["year"]
	event["p8883__mqtt__banner__tls__scts__timestamp_month"] = parse_timestamp(event["p8883.mqtt.banner.tls.scts.timestamp"])["month"]
	event["p8883__mqtt__banner__tls__scts__timestamp_day"] = parse_timestamp(event["p8883.mqtt.banner.tls.scts.timestamp"])["day"]
	event["p8883__mqtt__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["p8883.mqtt.banner.tls.scts.timestamp"])["hour"]
	event["p8883__mqtt__banner__tls__scts__timestamp_min"] = parse_timestamp(event["p8883.mqtt.banner.tls.scts.timestamp"])["min"]
	event["p8883__mqtt__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["p8883.mqtt.banner.tls.scts.timestamp"])["sec"]
	event["p8883__mqtt__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["p8883.mqtt.banner.tls.scts.timestamp"])["yday"]
	event["p8883__mqtt__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["p8883.mqtt.banner.tls.scts.timestamp"])["wday"]
	event["p8883__mqtt__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["p8883.mqtt.banner.tls.scts.timestamp"])["isdst"]
	if event["p8883__mqtt__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["p8883__mqtt__banner__tls__scts__timestamp_yweek"] = (event["p8883__mqtt__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["p8883__mqtt__banner__tls__scts__timestamp_yquarter"] = (event["p8883__mqtt__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["p8883__mqtt__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["p8883__mqtt__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["p8883__mqtt__banner__tls__scts__timestamp_wday"])
	  event["p8883__mqtt__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["p8883__mqtt__banner__tls__scts__timestamp_wday"])
	end
	event["p8883__mqtt__banner__tls__scts__timestamp"] = event["p8883.mqtt.banner.tls.scts.timestamp"]
	event["8883__mqtt__banner__tls__scts__timestamp"] = event["8883.mqtt.banner.tls.scts.timestamp"]
	event["8883__mqtt__banner__tls__scts__timestamp_year"] = parse_timestamp(event["8883.mqtt.banner.tls.scts.timestamp"])["year"]
	event["8883__mqtt__banner__tls__scts__timestamp_month"] = parse_timestamp(event["8883.mqtt.banner.tls.scts.timestamp"])["month"]
	event["8883__mqtt__banner__tls__scts__timestamp_day"] = parse_timestamp(event["8883.mqtt.banner.tls.scts.timestamp"])["day"]
	event["8883__mqtt__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["8883.mqtt.banner.tls.scts.timestamp"])["hour"]
	event["8883__mqtt__banner__tls__scts__timestamp_min"] = parse_timestamp(event["8883.mqtt.banner.tls.scts.timestamp"])["min"]
	event["8883__mqtt__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["8883.mqtt.banner.tls.scts.timestamp"])["sec"]
	event["8883__mqtt__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["8883.mqtt.banner.tls.scts.timestamp"])["yday"]
	event["8883__mqtt__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["8883.mqtt.banner.tls.scts.timestamp"])["wday"]
	event["8883__mqtt__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["8883.mqtt.banner.tls.scts.timestamp"])["isdst"]
	if event["8883__mqtt__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["8883__mqtt__banner__tls__scts__timestamp_yweek"] = (event["8883__mqtt__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["8883__mqtt__banner__tls__scts__timestamp_yquarter"] = (event["8883__mqtt__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["8883__mqtt__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["8883__mqtt__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["8883__mqtt__banner__tls__scts__timestamp_wday"])
	  event["8883__mqtt__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["8883__mqtt__banner__tls__scts__timestamp_wday"])
	end
	event["8883__mqtt__banner__tls__scts__timestamp"] = event["8883.mqtt.banner.tls.scts.timestamp"]
	event["p8883__mqtt__banner__tls__timestamp_year"] = parse_timestamp(event["p8883.mqtt.banner.tls.timestamp"])["year"]
	event["p8883__mqtt__banner__tls__timestamp_month"] = parse_timestamp(event["p8883.mqtt.banner.tls.timestamp"])["month"]
	event["p8883__mqtt__banner__tls__timestamp_day"] = parse_timestamp(event["p8883.mqtt.banner.tls.timestamp"])["day"]
	event["p8883__mqtt__banner__tls__timestamp_hour"] = parse_timestamp(event["p8883.mqtt.banner.tls.timestamp"])["hour"]
	event["p8883__mqtt__banner__tls__timestamp_min"] = parse_timestamp(event["p8883.mqtt.banner.tls.timestamp"])["min"]
	event["p8883__mqtt__banner__tls__timestamp_sec"] = parse_timestamp(event["p8883.mqtt.banner.tls.timestamp"])["sec"]
	event["p8883__mqtt__banner__tls__timestamp_yday"] = parse_timestamp(event["p8883.mqtt.banner.tls.timestamp"])["yday"]
	event["p8883__mqtt__banner__tls__timestamp_wday"] = parse_timestamp(event["p8883.mqtt.banner.tls.timestamp"])["wday"]
	event["p8883__mqtt__banner__tls__timestamp_isdst"] = parse_timestamp(event["p8883.mqtt.banner.tls.timestamp"])["isdst"]
	if event["p8883__mqtt__banner__tls__timestamp_yday"] ~= nil then
	  event["p8883__mqtt__banner__tls__timestamp_yweek"] = (event["p8883__mqtt__banner__tls__timestamp_yday"] // 7) + 1
	  event["p8883__mqtt__banner__tls__timestamp_yquarter"] = (event["p8883__mqtt__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["p8883__mqtt__banner__tls__timestamp_wday"] ~= nil then
	  event["p8883__mqtt__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p8883__mqtt__banner__tls__timestamp_wday"])
	  event["p8883__mqtt__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p8883__mqtt__banner__tls__timestamp_wday"])
	end
	event["p8883__mqtt__banner__tls__timestamp"] = event["p8883.mqtt.banner.tls.timestamp"]
	event["8883__mqtt__banner__tls__timestamp"] = event["8883.mqtt.banner.tls.timestamp"]
	event["8883__mqtt__banner__tls__timestamp_year"] = parse_timestamp(event["8883.mqtt.banner.tls.timestamp"])["year"]
	event["8883__mqtt__banner__tls__timestamp_month"] = parse_timestamp(event["8883.mqtt.banner.tls.timestamp"])["month"]
	event["8883__mqtt__banner__tls__timestamp_day"] = parse_timestamp(event["8883.mqtt.banner.tls.timestamp"])["day"]
	event["8883__mqtt__banner__tls__timestamp_hour"] = parse_timestamp(event["8883.mqtt.banner.tls.timestamp"])["hour"]
	event["8883__mqtt__banner__tls__timestamp_min"] = parse_timestamp(event["8883.mqtt.banner.tls.timestamp"])["min"]
	event["8883__mqtt__banner__tls__timestamp_sec"] = parse_timestamp(event["8883.mqtt.banner.tls.timestamp"])["sec"]
	event["8883__mqtt__banner__tls__timestamp_yday"] = parse_timestamp(event["8883.mqtt.banner.tls.timestamp"])["yday"]
	event["8883__mqtt__banner__tls__timestamp_wday"] = parse_timestamp(event["8883.mqtt.banner.tls.timestamp"])["wday"]
	event["8883__mqtt__banner__tls__timestamp_isdst"] = parse_timestamp(event["8883.mqtt.banner.tls.timestamp"])["isdst"]
	if event["8883__mqtt__banner__tls__timestamp_yday"] ~= nil then
	  event["8883__mqtt__banner__tls__timestamp_yweek"] = (event["8883__mqtt__banner__tls__timestamp_yday"] // 7) + 1
	  event["8883__mqtt__banner__tls__timestamp_yquarter"] = (event["8883__mqtt__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["8883__mqtt__banner__tls__timestamp_wday"] ~= nil then
	  event["8883__mqtt__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["8883__mqtt__banner__tls__timestamp_wday"])
	  event["8883__mqtt__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["8883__mqtt__banner__tls__timestamp_wday"])
	end
	event["8883__mqtt__banner__tls__timestamp"] = event["8883.mqtt.banner.tls.timestamp"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["p9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["p9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["p9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["p9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["p9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["p9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["p9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["p9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["p9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["p9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["p9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["p9200.elasticsearch.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["9200.elasticsearch.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_year"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["year"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_month"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["month"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_day"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["day"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_hour"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["hour"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_min"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["min"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_sec"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["sec"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["yday"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["wday"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_isdst"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"])["isdst"]
	if event["9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] ~= nil then
	  event["9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yweek"] = (event["9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 7) + 1
	  event["9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yquarter"] = (event["9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_yday"] // 91) + 1
	end
	if event["9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"] ~= nil then
	  event["9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekend"] = arr_has_value(weekends, event["9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	  event["9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_is_weekday"] = arr_has_value(weekdays, event["9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp_wday"])
	end
	event["9200__elasticsearch__banner__tls__certificate__parsed__extensions__signed_certificate_timestamps__timestamp"] = event["9200.elasticsearch.banner.tls.certificate.parsed.extensions.signed_certificate_timestamps.timestamp"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.validity.end"])["year"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.validity.end"])["month"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.validity.end"])["day"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.validity.end"])["hour"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.validity.end"])["min"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.validity.end"])["sec"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.validity.end"])["yday"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.validity.end"])["wday"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.validity.end"])["isdst"]
	if event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__end_yweek"] = (event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__end_yquarter"] = (event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__end_wday"])
	  event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__end_wday"])
	end
	event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__end"] = event["p9200.elasticsearch.banner.tls.certificate.parsed.validity.end"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__validity__end"] = event["9200.elasticsearch.banner.tls.certificate.parsed.validity.end"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__validity__end_year"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.validity.end"])["year"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__validity__end_month"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.validity.end"])["month"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__validity__end_day"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.validity.end"])["day"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__validity__end_hour"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.validity.end"])["hour"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__validity__end_min"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.validity.end"])["min"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__validity__end_sec"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.validity.end"])["sec"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__validity__end_yday"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.validity.end"])["yday"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__validity__end_wday"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.validity.end"])["wday"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__validity__end_isdst"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.validity.end"])["isdst"]
	if event["9200__elasticsearch__banner__tls__certificate__parsed__validity__end_yday"] ~= nil then
	  event["9200__elasticsearch__banner__tls__certificate__parsed__validity__end_yweek"] = (event["9200__elasticsearch__banner__tls__certificate__parsed__validity__end_yday"] // 7) + 1
	  event["9200__elasticsearch__banner__tls__certificate__parsed__validity__end_yquarter"] = (event["9200__elasticsearch__banner__tls__certificate__parsed__validity__end_yday"] // 91) + 1
	end
	if event["9200__elasticsearch__banner__tls__certificate__parsed__validity__end_wday"] ~= nil then
	  event["9200__elasticsearch__banner__tls__certificate__parsed__validity__end_is_weekend"] = arr_has_value(weekends, event["9200__elasticsearch__banner__tls__certificate__parsed__validity__end_wday"])
	  event["9200__elasticsearch__banner__tls__certificate__parsed__validity__end_is_weekday"] = arr_has_value(weekdays, event["9200__elasticsearch__banner__tls__certificate__parsed__validity__end_wday"])
	end
	event["9200__elasticsearch__banner__tls__certificate__parsed__validity__end"] = event["9200.elasticsearch.banner.tls.certificate.parsed.validity.end"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.validity.start"])["year"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.validity.start"])["month"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.validity.start"])["day"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.validity.start"])["hour"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.validity.start"])["min"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.validity.start"])["sec"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.validity.start"])["yday"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.validity.start"])["wday"]
	event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.certificate.parsed.validity.start"])["isdst"]
	if event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__start_yweek"] = (event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__start_yquarter"] = (event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__start_wday"])
	  event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__start_wday"])
	end
	event["p9200__elasticsearch__banner__tls__certificate__parsed__validity__start"] = event["p9200.elasticsearch.banner.tls.certificate.parsed.validity.start"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__validity__start"] = event["9200.elasticsearch.banner.tls.certificate.parsed.validity.start"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__validity__start_year"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.validity.start"])["year"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__validity__start_month"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.validity.start"])["month"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__validity__start_day"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.validity.start"])["day"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__validity__start_hour"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.validity.start"])["hour"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__validity__start_min"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.validity.start"])["min"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__validity__start_sec"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.validity.start"])["sec"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__validity__start_yday"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.validity.start"])["yday"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__validity__start_wday"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.validity.start"])["wday"]
	event["9200__elasticsearch__banner__tls__certificate__parsed__validity__start_isdst"] = parse_timestamp(event["9200.elasticsearch.banner.tls.certificate.parsed.validity.start"])["isdst"]
	if event["9200__elasticsearch__banner__tls__certificate__parsed__validity__start_yday"] ~= nil then
	  event["9200__elasticsearch__banner__tls__certificate__parsed__validity__start_yweek"] = (event["9200__elasticsearch__banner__tls__certificate__parsed__validity__start_yday"] // 7) + 1
	  event["9200__elasticsearch__banner__tls__certificate__parsed__validity__start_yquarter"] = (event["9200__elasticsearch__banner__tls__certificate__parsed__validity__start_yday"] // 91) + 1
	end
	if event["9200__elasticsearch__banner__tls__certificate__parsed__validity__start_wday"] ~= nil then
	  event["9200__elasticsearch__banner__tls__certificate__parsed__validity__start_is_weekend"] = arr_has_value(weekends, event["9200__elasticsearch__banner__tls__certificate__parsed__validity__start_wday"])
	  event["9200__elasticsearch__banner__tls__certificate__parsed__validity__start_is_weekday"] = arr_has_value(weekdays, event["9200__elasticsearch__banner__tls__certificate__parsed__validity__start_wday"])
	end
	event["9200__elasticsearch__banner__tls__certificate__parsed__validity__start"] = event["9200.elasticsearch.banner.tls.certificate.parsed.validity.start"]
	event["p9200__elasticsearch__banner__tls__scts__timestamp_year"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.scts.timestamp"])["year"]
	event["p9200__elasticsearch__banner__tls__scts__timestamp_month"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.scts.timestamp"])["month"]
	event["p9200__elasticsearch__banner__tls__scts__timestamp_day"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.scts.timestamp"])["day"]
	event["p9200__elasticsearch__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.scts.timestamp"])["hour"]
	event["p9200__elasticsearch__banner__tls__scts__timestamp_min"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.scts.timestamp"])["min"]
	event["p9200__elasticsearch__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.scts.timestamp"])["sec"]
	event["p9200__elasticsearch__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.scts.timestamp"])["yday"]
	event["p9200__elasticsearch__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.scts.timestamp"])["wday"]
	event["p9200__elasticsearch__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.scts.timestamp"])["isdst"]
	if event["p9200__elasticsearch__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["p9200__elasticsearch__banner__tls__scts__timestamp_yweek"] = (event["p9200__elasticsearch__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["p9200__elasticsearch__banner__tls__scts__timestamp_yquarter"] = (event["p9200__elasticsearch__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["p9200__elasticsearch__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["p9200__elasticsearch__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["p9200__elasticsearch__banner__tls__scts__timestamp_wday"])
	  event["p9200__elasticsearch__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["p9200__elasticsearch__banner__tls__scts__timestamp_wday"])
	end
	event["p9200__elasticsearch__banner__tls__scts__timestamp"] = event["p9200.elasticsearch.banner.tls.scts.timestamp"]
	event["9200__elasticsearch__banner__tls__scts__timestamp"] = event["9200.elasticsearch.banner.tls.scts.timestamp"]
	event["9200__elasticsearch__banner__tls__scts__timestamp_year"] = parse_timestamp(event["9200.elasticsearch.banner.tls.scts.timestamp"])["year"]
	event["9200__elasticsearch__banner__tls__scts__timestamp_month"] = parse_timestamp(event["9200.elasticsearch.banner.tls.scts.timestamp"])["month"]
	event["9200__elasticsearch__banner__tls__scts__timestamp_day"] = parse_timestamp(event["9200.elasticsearch.banner.tls.scts.timestamp"])["day"]
	event["9200__elasticsearch__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["9200.elasticsearch.banner.tls.scts.timestamp"])["hour"]
	event["9200__elasticsearch__banner__tls__scts__timestamp_min"] = parse_timestamp(event["9200.elasticsearch.banner.tls.scts.timestamp"])["min"]
	event["9200__elasticsearch__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["9200.elasticsearch.banner.tls.scts.timestamp"])["sec"]
	event["9200__elasticsearch__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["9200.elasticsearch.banner.tls.scts.timestamp"])["yday"]
	event["9200__elasticsearch__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["9200.elasticsearch.banner.tls.scts.timestamp"])["wday"]
	event["9200__elasticsearch__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["9200.elasticsearch.banner.tls.scts.timestamp"])["isdst"]
	if event["9200__elasticsearch__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["9200__elasticsearch__banner__tls__scts__timestamp_yweek"] = (event["9200__elasticsearch__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["9200__elasticsearch__banner__tls__scts__timestamp_yquarter"] = (event["9200__elasticsearch__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["9200__elasticsearch__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["9200__elasticsearch__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["9200__elasticsearch__banner__tls__scts__timestamp_wday"])
	  event["9200__elasticsearch__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["9200__elasticsearch__banner__tls__scts__timestamp_wday"])
	end
	event["9200__elasticsearch__banner__tls__scts__timestamp"] = event["9200.elasticsearch.banner.tls.scts.timestamp"]
	event["p9200__elasticsearch__banner__tls__timestamp_year"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.timestamp"])["year"]
	event["p9200__elasticsearch__banner__tls__timestamp_month"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.timestamp"])["month"]
	event["p9200__elasticsearch__banner__tls__timestamp_day"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.timestamp"])["day"]
	event["p9200__elasticsearch__banner__tls__timestamp_hour"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.timestamp"])["hour"]
	event["p9200__elasticsearch__banner__tls__timestamp_min"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.timestamp"])["min"]
	event["p9200__elasticsearch__banner__tls__timestamp_sec"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.timestamp"])["sec"]
	event["p9200__elasticsearch__banner__tls__timestamp_yday"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.timestamp"])["yday"]
	event["p9200__elasticsearch__banner__tls__timestamp_wday"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.timestamp"])["wday"]
	event["p9200__elasticsearch__banner__tls__timestamp_isdst"] = parse_timestamp(event["p9200.elasticsearch.banner.tls.timestamp"])["isdst"]
	if event["p9200__elasticsearch__banner__tls__timestamp_yday"] ~= nil then
	  event["p9200__elasticsearch__banner__tls__timestamp_yweek"] = (event["p9200__elasticsearch__banner__tls__timestamp_yday"] // 7) + 1
	  event["p9200__elasticsearch__banner__tls__timestamp_yquarter"] = (event["p9200__elasticsearch__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["p9200__elasticsearch__banner__tls__timestamp_wday"] ~= nil then
	  event["p9200__elasticsearch__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p9200__elasticsearch__banner__tls__timestamp_wday"])
	  event["p9200__elasticsearch__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p9200__elasticsearch__banner__tls__timestamp_wday"])
	end
	event["p9200__elasticsearch__banner__tls__timestamp"] = event["p9200.elasticsearch.banner.tls.timestamp"]
	event["9200__elasticsearch__banner__tls__timestamp"] = event["9200.elasticsearch.banner.tls.timestamp"]
	event["9200__elasticsearch__banner__tls__timestamp_year"] = parse_timestamp(event["9200.elasticsearch.banner.tls.timestamp"])["year"]
	event["9200__elasticsearch__banner__tls__timestamp_month"] = parse_timestamp(event["9200.elasticsearch.banner.tls.timestamp"])["month"]
	event["9200__elasticsearch__banner__tls__timestamp_day"] = parse_timestamp(event["9200.elasticsearch.banner.tls.timestamp"])["day"]
	event["9200__elasticsearch__banner__tls__timestamp_hour"] = parse_timestamp(event["9200.elasticsearch.banner.tls.timestamp"])["hour"]
	event["9200__elasticsearch__banner__tls__timestamp_min"] = parse_timestamp(event["9200.elasticsearch.banner.tls.timestamp"])["min"]
	event["9200__elasticsearch__banner__tls__timestamp_sec"] = parse_timestamp(event["9200.elasticsearch.banner.tls.timestamp"])["sec"]
	event["9200__elasticsearch__banner__tls__timestamp_yday"] = parse_timestamp(event["9200.elasticsearch.banner.tls.timestamp"])["yday"]
	event["9200__elasticsearch__banner__tls__timestamp_wday"] = parse_timestamp(event["9200.elasticsearch.banner.tls.timestamp"])["wday"]
	event["9200__elasticsearch__banner__tls__timestamp_isdst"] = parse_timestamp(event["9200.elasticsearch.banner.tls.timestamp"])["isdst"]
	if event["9200__elasticsearch__banner__tls__timestamp_yday"] ~= nil then
	  event["9200__elasticsearch__banner__tls__timestamp_yweek"] = (event["9200__elasticsearch__banner__tls__timestamp_yday"] // 7) + 1
	  event["9200__elasticsearch__banner__tls__timestamp_yquarter"] = (event["9200__elasticsearch__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["9200__elasticsearch__banner__tls__timestamp_wday"] ~= nil then
	  event["9200__elasticsearch__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["9200__elasticsearch__banner__tls__timestamp_wday"])
	  event["9200__elasticsearch__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["9200__elasticsearch__banner__tls__timestamp_wday"])
	end
	event["9200__elasticsearch__banner__tls__timestamp"] = event["9200.elasticsearch.banner.tls.timestamp"]
	event["p6443__kubernetes__banner__tls__scts__timestamp_year"] = parse_timestamp(event["p6443.kubernetes.banner.tls.scts.timestamp"])["year"]
	event["p6443__kubernetes__banner__tls__scts__timestamp_month"] = parse_timestamp(event["p6443.kubernetes.banner.tls.scts.timestamp"])["month"]
	event["p6443__kubernetes__banner__tls__scts__timestamp_day"] = parse_timestamp(event["p6443.kubernetes.banner.tls.scts.timestamp"])["day"]
	event["p6443__kubernetes__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["p6443.kubernetes.banner.tls.scts.timestamp"])["hour"]
	event["p6443__kubernetes__banner__tls__scts__timestamp_min"] = parse_timestamp(event["p6443.kubernetes.banner.tls.scts.timestamp"])["min"]
	event["p6443__kubernetes__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["p6443.kubernetes.banner.tls.scts.timestamp"])["sec"]
	event["p6443__kubernetes__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["p6443.kubernetes.banner.tls.scts.timestamp"])["yday"]
	event["p6443__kubernetes__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["p6443.kubernetes.banner.tls.scts.timestamp"])["wday"]
	event["p6443__kubernetes__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["p6443.kubernetes.banner.tls.scts.timestamp"])["isdst"]
	if event["p6443__kubernetes__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["p6443__kubernetes__banner__tls__scts__timestamp_yweek"] = (event["p6443__kubernetes__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["p6443__kubernetes__banner__tls__scts__timestamp_yquarter"] = (event["p6443__kubernetes__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["p6443__kubernetes__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["p6443__kubernetes__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["p6443__kubernetes__banner__tls__scts__timestamp_wday"])
	  event["p6443__kubernetes__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["p6443__kubernetes__banner__tls__scts__timestamp_wday"])
	end
	event["p6443__kubernetes__banner__tls__scts__timestamp"] = event["p6443.kubernetes.banner.tls.scts.timestamp"]
	event["6443__kubernetes__banner__tls__scts__timestamp"] = event["6443.kubernetes.banner.tls.scts.timestamp"]
	event["6443__kubernetes__banner__tls__scts__timestamp_year"] = parse_timestamp(event["6443.kubernetes.banner.tls.scts.timestamp"])["year"]
	event["6443__kubernetes__banner__tls__scts__timestamp_month"] = parse_timestamp(event["6443.kubernetes.banner.tls.scts.timestamp"])["month"]
	event["6443__kubernetes__banner__tls__scts__timestamp_day"] = parse_timestamp(event["6443.kubernetes.banner.tls.scts.timestamp"])["day"]
	event["6443__kubernetes__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["6443.kubernetes.banner.tls.scts.timestamp"])["hour"]
	event["6443__kubernetes__banner__tls__scts__timestamp_min"] = parse_timestamp(event["6443.kubernetes.banner.tls.scts.timestamp"])["min"]
	event["6443__kubernetes__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["6443.kubernetes.banner.tls.scts.timestamp"])["sec"]
	event["6443__kubernetes__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["6443.kubernetes.banner.tls.scts.timestamp"])["yday"]
	event["6443__kubernetes__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["6443.kubernetes.banner.tls.scts.timestamp"])["wday"]
	event["6443__kubernetes__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["6443.kubernetes.banner.tls.scts.timestamp"])["isdst"]
	if event["6443__kubernetes__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["6443__kubernetes__banner__tls__scts__timestamp_yweek"] = (event["6443__kubernetes__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["6443__kubernetes__banner__tls__scts__timestamp_yquarter"] = (event["6443__kubernetes__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["6443__kubernetes__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["6443__kubernetes__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["6443__kubernetes__banner__tls__scts__timestamp_wday"])
	  event["6443__kubernetes__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["6443__kubernetes__banner__tls__scts__timestamp_wday"])
	end
	event["6443__kubernetes__banner__tls__scts__timestamp"] = event["6443.kubernetes.banner.tls.scts.timestamp"]
	event["p6443__kubernetes__banner__tls__timestamp_year"] = parse_timestamp(event["p6443.kubernetes.banner.tls.timestamp"])["year"]
	event["p6443__kubernetes__banner__tls__timestamp_month"] = parse_timestamp(event["p6443.kubernetes.banner.tls.timestamp"])["month"]
	event["p6443__kubernetes__banner__tls__timestamp_day"] = parse_timestamp(event["p6443.kubernetes.banner.tls.timestamp"])["day"]
	event["p6443__kubernetes__banner__tls__timestamp_hour"] = parse_timestamp(event["p6443.kubernetes.banner.tls.timestamp"])["hour"]
	event["p6443__kubernetes__banner__tls__timestamp_min"] = parse_timestamp(event["p6443.kubernetes.banner.tls.timestamp"])["min"]
	event["p6443__kubernetes__banner__tls__timestamp_sec"] = parse_timestamp(event["p6443.kubernetes.banner.tls.timestamp"])["sec"]
	event["p6443__kubernetes__banner__tls__timestamp_yday"] = parse_timestamp(event["p6443.kubernetes.banner.tls.timestamp"])["yday"]
	event["p6443__kubernetes__banner__tls__timestamp_wday"] = parse_timestamp(event["p6443.kubernetes.banner.tls.timestamp"])["wday"]
	event["p6443__kubernetes__banner__tls__timestamp_isdst"] = parse_timestamp(event["p6443.kubernetes.banner.tls.timestamp"])["isdst"]
	if event["p6443__kubernetes__banner__tls__timestamp_yday"] ~= nil then
	  event["p6443__kubernetes__banner__tls__timestamp_yweek"] = (event["p6443__kubernetes__banner__tls__timestamp_yday"] // 7) + 1
	  event["p6443__kubernetes__banner__tls__timestamp_yquarter"] = (event["p6443__kubernetes__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["p6443__kubernetes__banner__tls__timestamp_wday"] ~= nil then
	  event["p6443__kubernetes__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p6443__kubernetes__banner__tls__timestamp_wday"])
	  event["p6443__kubernetes__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p6443__kubernetes__banner__tls__timestamp_wday"])
	end
	event["p6443__kubernetes__banner__tls__timestamp"] = event["p6443.kubernetes.banner.tls.timestamp"]
	event["6443__kubernetes__banner__tls__timestamp"] = event["6443.kubernetes.banner.tls.timestamp"]
	event["6443__kubernetes__banner__tls__timestamp_year"] = parse_timestamp(event["6443.kubernetes.banner.tls.timestamp"])["year"]
	event["6443__kubernetes__banner__tls__timestamp_month"] = parse_timestamp(event["6443.kubernetes.banner.tls.timestamp"])["month"]
	event["6443__kubernetes__banner__tls__timestamp_day"] = parse_timestamp(event["6443.kubernetes.banner.tls.timestamp"])["day"]
	event["6443__kubernetes__banner__tls__timestamp_hour"] = parse_timestamp(event["6443.kubernetes.banner.tls.timestamp"])["hour"]
	event["6443__kubernetes__banner__tls__timestamp_min"] = parse_timestamp(event["6443.kubernetes.banner.tls.timestamp"])["min"]
	event["6443__kubernetes__banner__tls__timestamp_sec"] = parse_timestamp(event["6443.kubernetes.banner.tls.timestamp"])["sec"]
	event["6443__kubernetes__banner__tls__timestamp_yday"] = parse_timestamp(event["6443.kubernetes.banner.tls.timestamp"])["yday"]
	event["6443__kubernetes__banner__tls__timestamp_wday"] = parse_timestamp(event["6443.kubernetes.banner.tls.timestamp"])["wday"]
	event["6443__kubernetes__banner__tls__timestamp_isdst"] = parse_timestamp(event["6443.kubernetes.banner.tls.timestamp"])["isdst"]
	if event["6443__kubernetes__banner__tls__timestamp_yday"] ~= nil then
	  event["6443__kubernetes__banner__tls__timestamp_yweek"] = (event["6443__kubernetes__banner__tls__timestamp_yday"] // 7) + 1
	  event["6443__kubernetes__banner__tls__timestamp_yquarter"] = (event["6443__kubernetes__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["6443__kubernetes__banner__tls__timestamp_wday"] ~= nil then
	  event["6443__kubernetes__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["6443__kubernetes__banner__tls__timestamp_wday"])
	  event["6443__kubernetes__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["6443__kubernetes__banner__tls__timestamp_wday"])
	end
	event["6443__kubernetes__banner__tls__timestamp"] = event["6443.kubernetes.banner.tls.timestamp"]
	event["p9090__prometheus__banner__tls__scts__timestamp_year"] = parse_timestamp(event["p9090.prometheus.banner.tls.scts.timestamp"])["year"]
	event["p9090__prometheus__banner__tls__scts__timestamp_month"] = parse_timestamp(event["p9090.prometheus.banner.tls.scts.timestamp"])["month"]
	event["p9090__prometheus__banner__tls__scts__timestamp_day"] = parse_timestamp(event["p9090.prometheus.banner.tls.scts.timestamp"])["day"]
	event["p9090__prometheus__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["p9090.prometheus.banner.tls.scts.timestamp"])["hour"]
	event["p9090__prometheus__banner__tls__scts__timestamp_min"] = parse_timestamp(event["p9090.prometheus.banner.tls.scts.timestamp"])["min"]
	event["p9090__prometheus__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["p9090.prometheus.banner.tls.scts.timestamp"])["sec"]
	event["p9090__prometheus__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["p9090.prometheus.banner.tls.scts.timestamp"])["yday"]
	event["p9090__prometheus__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["p9090.prometheus.banner.tls.scts.timestamp"])["wday"]
	event["p9090__prometheus__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["p9090.prometheus.banner.tls.scts.timestamp"])["isdst"]
	if event["p9090__prometheus__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["p9090__prometheus__banner__tls__scts__timestamp_yweek"] = (event["p9090__prometheus__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["p9090__prometheus__banner__tls__scts__timestamp_yquarter"] = (event["p9090__prometheus__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["p9090__prometheus__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["p9090__prometheus__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["p9090__prometheus__banner__tls__scts__timestamp_wday"])
	  event["p9090__prometheus__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["p9090__prometheus__banner__tls__scts__timestamp_wday"])
	end
	event["p9090__prometheus__banner__tls__scts__timestamp"] = event["p9090.prometheus.banner.tls.scts.timestamp"]
	event["9090__prometheus__banner__tls__scts__timestamp"] = event["9090.prometheus.banner.tls.scts.timestamp"]
	event["9090__prometheus__banner__tls__scts__timestamp_year"] = parse_timestamp(event["9090.prometheus.banner.tls.scts.timestamp"])["year"]
	event["9090__prometheus__banner__tls__scts__timestamp_month"] = parse_timestamp(event["9090.prometheus.banner.tls.scts.timestamp"])["month"]
	event["9090__prometheus__banner__tls__scts__timestamp_day"] = parse_timestamp(event["9090.prometheus.banner.tls.scts.timestamp"])["day"]
	event["9090__prometheus__banner__tls__scts__timestamp_hour"] = parse_timestamp(event["9090.prometheus.banner.tls.scts.timestamp"])["hour"]
	event["9090__prometheus__banner__tls__scts__timestamp_min"] = parse_timestamp(event["9090.prometheus.banner.tls.scts.timestamp"])["min"]
	event["9090__prometheus__banner__tls__scts__timestamp_sec"] = parse_timestamp(event["9090.prometheus.banner.tls.scts.timestamp"])["sec"]
	event["9090__prometheus__banner__tls__scts__timestamp_yday"] = parse_timestamp(event["9090.prometheus.banner.tls.scts.timestamp"])["yday"]
	event["9090__prometheus__banner__tls__scts__timestamp_wday"] = parse_timestamp(event["9090.prometheus.banner.tls.scts.timestamp"])["wday"]
	event["9090__prometheus__banner__tls__scts__timestamp_isdst"] = parse_timestamp(event["9090.prometheus.banner.tls.scts.timestamp"])["isdst"]
	if event["9090__prometheus__banner__tls__scts__timestamp_yday"] ~= nil then
	  event["9090__prometheus__banner__tls__scts__timestamp_yweek"] = (event["9090__prometheus__banner__tls__scts__timestamp_yday"] // 7) + 1
	  event["9090__prometheus__banner__tls__scts__timestamp_yquarter"] = (event["9090__prometheus__banner__tls__scts__timestamp_yday"] // 91) + 1
	end
	if event["9090__prometheus__banner__tls__scts__timestamp_wday"] ~= nil then
	  event["9090__prometheus__banner__tls__scts__timestamp_is_weekend"] = arr_has_value(weekends, event["9090__prometheus__banner__tls__scts__timestamp_wday"])
	  event["9090__prometheus__banner__tls__scts__timestamp_is_weekday"] = arr_has_value(weekdays, event["9090__prometheus__banner__tls__scts__timestamp_wday"])
	end
	event["9090__prometheus__banner__tls__scts__timestamp"] = event["9090.prometheus.banner.tls.scts.timestamp"]
	event["p9090__prometheus__banner__tls__timestamp_year"] = parse_timestamp(event["p9090.prometheus.banner.tls.timestamp"])["year"]
	event["p9090__prometheus__banner__tls__timestamp_month"] = parse_timestamp(event["p9090.prometheus.banner.tls.timestamp"])["month"]
	event["p9090__prometheus__banner__tls__timestamp_day"] = parse_timestamp(event["p9090.prometheus.banner.tls.timestamp"])["day"]
	event["p9090__prometheus__banner__tls__timestamp_hour"] = parse_timestamp(event["p9090.prometheus.banner.tls.timestamp"])["hour"]
	event["p9090__prometheus__banner__tls__timestamp_min"] = parse_timestamp(event["p9090.prometheus.banner.tls.timestamp"])["min"]
	event["p9090__prometheus__banner__tls__timestamp_sec"] = parse_timestamp(event["p9090.prometheus.banner.tls.timestamp"])["sec"]
	event["p9090__prometheus__banner__tls__timestamp_yday"] = parse_timestamp(event["p9090.prometheus.banner.tls.timestamp"])["yday"]
	event["p9090__prometheus__banner__tls__timestamp_wday"] = parse_timestamp(event["p9090.prometheus.banner.tls.timestamp"])["wday"]
	event["p9090__prometheus__banner__tls__timestamp_isdst"] = parse_timestamp(event["p9090.prometheus.banner.tls.timestamp"])["isdst"]
	if event["p9090__prometheus__banner__tls__timestamp_yday"] ~= nil then
	  event["p9090__prometheus__banner__tls__timestamp_yweek"] = (event["p9090__prometheus__banner__tls__timestamp_yday"] // 7) + 1
	  event["p9090__prometheus__banner__tls__timestamp_yquarter"] = (event["p9090__prometheus__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["p9090__prometheus__banner__tls__timestamp_wday"] ~= nil then
	  event["p9090__prometheus__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["p9090__prometheus__banner__tls__timestamp_wday"])
	  event["p9090__prometheus__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["p9090__prometheus__banner__tls__timestamp_wday"])
	end
	event["p9090__prometheus__banner__tls__timestamp"] = event["p9090.prometheus.banner.tls.timestamp"]
	event["9090__prometheus__banner__tls__timestamp"] = event["9090.prometheus.banner.tls.timestamp"]
	event["9090__prometheus__banner__tls__timestamp_year"] = parse_timestamp(event["9090.prometheus.banner.tls.timestamp"])["year"]
	event["9090__prometheus__banner__tls__timestamp_month"] = parse_timestamp(event["9090.prometheus.banner.tls.timestamp"])["month"]
	event["9090__prometheus__banner__tls__timestamp_day"] = parse_timestamp(event["9090.prometheus.banner.tls.timestamp"])["day"]
	event["9090__prometheus__banner__tls__timestamp_hour"] = parse_timestamp(event["9090.prometheus.banner.tls.timestamp"])["hour"]
	event["9090__prometheus__banner__tls__timestamp_min"] = parse_timestamp(event["9090.prometheus.banner.tls.timestamp"])["min"]
	event["9090__prometheus__banner__tls__timestamp_sec"] = parse_timestamp(event["9090.prometheus.banner.tls.timestamp"])["sec"]
	event["9090__prometheus__banner__tls__timestamp_yday"] = parse_timestamp(event["9090.prometheus.banner.tls.timestamp"])["yday"]
	event["9090__prometheus__banner__tls__timestamp_wday"] = parse_timestamp(event["9090.prometheus.banner.tls.timestamp"])["wday"]
	event["9090__prometheus__banner__tls__timestamp_isdst"] = parse_timestamp(event["9090.prometheus.banner.tls.timestamp"])["isdst"]
	if event["9090__prometheus__banner__tls__timestamp_yday"] ~= nil then
	  event["9090__prometheus__banner__tls__timestamp_yweek"] = (event["9090__prometheus__banner__tls__timestamp_yday"] // 7) + 1
	  event["9090__prometheus__banner__tls__timestamp_yquarter"] = (event["9090__prometheus__banner__tls__timestamp_yday"] // 91) + 1
	end
	if event["9090__prometheus__banner__tls__timestamp_wday"] ~= nil then
	  event["9090__prometheus__banner__tls__timestamp_is_weekend"] = arr_has_value(weekends, event["9090__prometheus__banner__tls__timestamp_wday"])
	  event["9090__prometheus__banner__tls__timestamp_is_weekday"] = arr_has_value(weekdays, event["9090__prometheus__banner__tls__timestamp_wday"])
	end
	event["9090__prometheus__banner__tls__timestamp"] = event["9090.prometheus.banner.tls.timestamp"]
end