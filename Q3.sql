SELECT  *
	FROM pgcensustract  
	WHERE ST_Contains(geom, ST_GeometryFromText('POINT(417108 129547)', 26985));

