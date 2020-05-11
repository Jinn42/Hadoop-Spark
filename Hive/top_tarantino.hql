SELECT primarytitle, averagerating 
FROM 
	(SELECT tconst 
	FROM imdb_title_crew 
	WHERE array_contains(director,( 
		SELECT nconst 
		FROM imdb_name_basics 
		WHERE primaryname LIKE 'Quentin Tarantino') 
		) 
	) AS qt 
JOIN 
	imdb_title_basics ON qt.tconst = imdb_title_basics.tconst 
JOIN 
	imdb_title_ratings ON imdb_title_ratings.tconst = imdb_title_basics.tconst 
WHERE 
	imdb_title_basics.titletype = 'movie' 
ORDER BY averagerating DESC 
LIMIT 10;
