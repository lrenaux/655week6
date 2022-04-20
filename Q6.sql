SELECT cen.geodesc, COUNT(sch.school_nam) AS schools
	FROM pgcensustract AS cen
	JOIN publicschools AS sch
		ON ST_Contains(
			cen.geom,
			sch.geom
		)
	GROUP BY cen.geodesc
	ORDER BY schools DESC;
