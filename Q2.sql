SELECT  *
	FROM publicschools 
	WHERE ST_DWithin(geom, ST_GeometryFromText('POINT(413797 124604.)', 26985), 1000);

