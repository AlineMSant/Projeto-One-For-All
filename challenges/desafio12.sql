SELECT
	a.artista AS artista,
    CASE
		WHEN COUNT(f.cancao_id) >= 5 THEN 'A'
        WHEN COUNT(f.cancao_id) BETWEEN 3 AND 4 THEN 'B'
        WHEN COUNT(f.cancao_id) BETWEEN 1 AND 2 THEN 'C'
        ELSE '-'
	END AS ranking
FROM
	artistas AS a
    JOIN albuns AS al ON al.artista_id = a.id
	JOIN cancoes AS c ON c.album_id	= al.id
    LEFT JOIN favoritos AS f ON f.cancao_id = c.id
GROUP BY artista
ORDER BY COUNT(f.cancao_id) DESC, artista;