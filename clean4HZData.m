function t4HZ = clean4HZData(t4HZ)
	% Fill outliers
	t4HZ = filloutliers(t4HZ,"linear","movmedian",minutes(5.8),...
	    "DataVariables",["ExhaustTemperature","FuelFlow","FanSpeed"]);
	% Fill outliers
	t4HZ = filloutliers(t4HZ,"linear","movmedian",minutes(13),...
	    "DataVariables",["WindDirection","WindSpeed"]);
	% Smooth input data
	t4HZ = smoothdata(t4HZ,"movmean","SmoothingFactor",0.25,...
	    "DataVariables",["ExhaustTemperature","FuelFlow","FanSpeed"]);
end