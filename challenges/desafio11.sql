SELECT
	a.album AS album,
    COUNT(f.cancoes_favoritas) AS favoritadas
FROM
	favoritos AS f
    INNER JOIN albuns AS a ON a.id = f.album_id
GROUP BY album
ORDER BY favoritadas DESC
LIMIT 3;