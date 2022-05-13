function t1HZ = clean1HZData(t1HZ)
	% Fill missing data
	t1HZ = fillmissing(t1HZ,"linear","DataVariables","FuelQuantity");
	% Fill outliers
	t1HZ = filloutliers(t1HZ,"linear","movmedian",seconds(8),...
	    "DataVariables",["OilPressure","OilTemperature"]);
	% Fill outliers
	t1HZ = filloutliers(t1HZ,"previous",...
	    "DataVariables",["LatitudePosition","LongitudePosition"]);
end