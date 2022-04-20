SELECT  school_nam, city, ST_X(geom), ST_y(geom)
	FROM publicschools 
	WHERE school_nam = 'Baden' AND city = 'Brandywine'