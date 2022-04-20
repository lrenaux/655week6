SELECT  *
	FROM pgroads  
	WHERE ST_DWithin(geom, ST_GeometryFromText('POINT(406286 124178)', 26985), 5000);	



