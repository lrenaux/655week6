SELECT  *
	FROM publicschools 
	WHERE ST_Equals(geom, ST_GeometryFromText('POINT(413797.2016872928 124604.24301644415)', 26985));

