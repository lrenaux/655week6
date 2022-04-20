SELECT sch.school_nam, ST_AREA(cen.geom) AS tract_area, MIN(ST_Distance(sch.geom, pgr.geom)) AS closest_rd_dst
	FROM publicschools AS sch
	JOIN pgcensustract AS cen
		ON ST_Contains(
			cen.geom,
			sch.geom
		)
	JOIN pgroads AS pgr
		ON ST_Contains(
			cen.geom,
			pgr.geom
		)
	WHERE sch.category = 'public high school'
	GROUP BY sch.school_nam, tract_area