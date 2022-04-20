SELECT  ST_X(geom), ST_Y(geom)
	FROM publicschools 
	WHERE school_nam = 'James Madison';
