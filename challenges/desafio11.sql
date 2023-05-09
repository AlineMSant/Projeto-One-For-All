SELECT
	a.album AS album,
    COUNT(f.cancao_id) AS favoritadas
FROM
	albuns AS a
    JOIN cancoes AS c ON c.album_id = a.id
    JOIN favoritos AS f ON c.id = f.cancao_id
GROUP BY album
ORDER BY favoritadas DESC
LIMIT 3;