function handle_general(event)
	-- Remove all fields where the value is " "
	    -- for f,v in ipairs(event) do
	    --    if v == " " then
	    --        event[f] = nil
	    --    end
	    -- end
	    
	event["__restricted_location"], event["Left_Over.__restricted_location"] = nil, event["__restricted_location"]
	event["p110"], event["Left_Over.p110"] = nil, event["p110"]
	event["110"], event["Left_over.110"] = nil, event["110"]
	event["p80"], event["Left_Over.p80"] = nil, event["p80"]
	event["80"], event["Left_over.80"] = nil, event["80"]
	event["p25"], event["Left_Over.p25"] = nil, event["p25"]
	event["25"], event["Left_over.25"] = nil, event["25"]
	event["p20"], event["Left_Over.p20"] = nil, event["p20"]
	event["20"], event["Left_over.20"] = nil, event["20"]
	event["p23"], event["Left_Over.p23"] = nil, event["p23"]
	event["23"], event["Left_over.23"] = nil, event["23"]
	event["location"], event["Left_Over.location"] = nil, event["location"]
	event["p502"], event["Left_Over.p502"] = nil, event["p502"]
	event["502"], event["Left_over.502"] = nil, event["502"]
	event["metadata"], event["Left_Over.metadata"] = nil, event["metadata"]
	event["p995"], event["Left_Over.p995"] = nil, event["p995"]
	event["995"], event["Left_over.995"] = nil, event["995"]
	event["p143"], event["Left_Over.p143"] = nil, event["p143"]
	event["143"], event["Left_over.143"] = nil, event["143"]
	event["p993"], event["Left_Over.p993"] = nil, event["p993"]
	event["993"], event["Left_over.993"] = nil, event["993"]
	event["p443"], event["Left_Over.p443"] = nil, event["p443"]
	event["443"], event["Left_over.443"] = nil, event["443"]
	event["autonomous_system"], event["Left_Over.autonomous_system"] = nil, event["autonomous_system"]
	event["p22"], event["Left_Over.p22"] = nil, event["p22"]
	event["22"], event["Left_over.22"] = nil, event["22"]
	event["p53"], event["Left_Over.p53"] = nil, event["p53"]
	event["53"], event["Left_over.53"] = nil, event["53"]
	event["p21"], event["Left_Over.p21"] = nil, event["p21"]
	event["21"], event["Left_over.21"] = nil, event["21"]
	event["p47808"], event["Left_Over.p47808"] = nil, event["p47808"]
	event["47808"], event["Left_over.47808"] = nil, event["47808"]
	event["p20000"], event["Left_Over.p20000"] = nil, event["p20000"]
	event["20000"], event["Left_over.20000"] = nil, event["20000"]
	event["p1911"], event["Left_Over.p1911"] = nil, event["p1911"]
	event["1911"], event["Left_over.1911"] = nil, event["1911"]
	event["p102"], event["Left_Over.p102"] = nil, event["p102"]
	event["102"], event["Left_over.102"] = nil, event["102"]
	event["p587"], event["Left_Over.p587"] = nil, event["p587"]
	event["587"], event["Left_over.587"] = nil, event["587"]
	event["p7547"], event["Left_Over.p7547"] = nil, event["p7547"]
	event["7547"], event["Left_over.7547"] = nil, event["7547"]
	event["p445"], event["Left_Over.p445"] = nil, event["p445"]
	event["445"], event["Left_over.445"] = nil, event["445"]
	event["p8888"], event["Left_Over.p8888"] = nil, event["p8888"]
	event["8888"], event["Left_over.8888"] = nil, event["8888"]
	event["p2323"], event["Left_Over.p2323"] = nil, event["p2323"]
	event["2323"], event["Left_over.2323"] = nil, event["2323"]
	event["p8080"], event["Left_Over.p8080"] = nil, event["p8080"]
	event["8080"], event["Left_over.8080"] = nil, event["8080"]
	event["p1433"], event["Left_Over.p1433"] = nil, event["p1433"]
	event["1433"], event["Left_over.1433"] = nil, event["1433"]
	event["p1521"], event["Left_Over.p1521"] = nil, event["p1521"]
	event["1521"], event["Left_over.1521"] = nil, event["1521"]
	event["p1900"], event["Left_Over.p1900"] = nil, event["p1900"]
	event["1900"], event["Left_over.1900"] = nil, event["1900"]
	event["p3306"], event["Left_Over.p3306"] = nil, event["p3306"]
	event["3306"], event["Left_over.3306"] = nil, event["3306"]
	event["p5432"], event["Left_Over.p5432"] = nil, event["p5432"]
	event["5432"], event["Left_over.5432"] = nil, event["5432"]
	event["p631"], event["Left_Over.p631"] = nil, event["p631"]
	event["631"], event["Left_over.631"] = nil, event["631"]
	event["p27017"], event["Left_Over.p27017"] = nil, event["p27017"]
	event["27017"], event["Left_over.27017"] = nil, event["27017"]
	event["p5900"], event["Left_Over.p5900"] = nil, event["p5900"]
	event["5900"], event["Left_over.5900"] = nil, event["5900"]
	event["p5901"], event["Left_Over.p5901"] = nil, event["p5901"]
	event["5901"], event["Left_over.5901"] = nil, event["5901"]
	event["p5902"], event["Left_Over.p5902"] = nil, event["p5902"]
	event["5902"], event["Left_over.5902"] = nil, event["5902"]
	event["p5903"], event["Left_Over.p5903"] = nil, event["p5903"]
	event["5903"], event["Left_over.5903"] = nil, event["5903"]
	event["p465"], event["Left_Over.p465"] = nil, event["p465"]
	event["465"], event["Left_over.465"] = nil, event["465"]
	event["p623"], event["Left_Over.p623"] = nil, event["p623"]
	event["623"], event["Left_over.623"] = nil, event["623"]
	event["p3389"], event["Left_Over.p3389"] = nil, event["p3389"]
	event["3389"], event["Left_over.3389"] = nil, event["3389"]
	event["p16992"], event["Left_Over.p16992"] = nil, event["p16992"]
	event["16992"], event["Left_over.16992"] = nil, event["16992"]
	event["p16993"], event["Left_Over.p16993"] = nil, event["p16993"]
	event["16993"], event["Left_over.16993"] = nil, event["16993"]
	event["p1883"], event["Left_Over.p1883"] = nil, event["p1883"]
	event["1883"], event["Left_over.1883"] = nil, event["1883"]
	event["p5632"], event["Left_Over.p5632"] = nil, event["p5632"]
	event["5632"], event["Left_over.5632"] = nil, event["5632"]
	event["p5672"], event["Left_Over.p5672"] = nil, event["p5672"]
	event["5672"], event["Left_over.5672"] = nil, event["5672"]
	event["p8883"], event["Left_Over.p8883"] = nil, event["p8883"]
	event["8883"], event["Left_over.8883"] = nil, event["8883"]
	event["p9200"], event["Left_Over.p9200"] = nil, event["p9200"]
	event["9200"], event["Left_over.9200"] = nil, event["9200"]
	event["p6443"], event["Left_Over.p6443"] = nil, event["p6443"]
	event["6443"], event["Left_over.6443"] = nil, event["6443"]
	event["p9090"], event["Left_Over.p9090"] = nil, event["p9090"]
	event["9090"], event["Left_over.9090"] = nil, event["9090"]
	event["p161"], event["Left_Over.p161"] = nil, event["p161"]
	event["161"], event["Left_over.161"] = nil, event["161"]
	event["p11211"], event["Left_Over.p11211"] = nil, event["p11211"]
	event["11211"], event["Left_over.11211"] = nil, event["11211"]
	event["p6379"], event["Left_Over.p6379"] = nil, event["p6379"]
	event["6379"], event["Left_over.6379"] = nil, event["6379"]
end