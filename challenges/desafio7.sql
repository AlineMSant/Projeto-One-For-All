SELECT
	ar.artista AS artista,
  al.album AS album,
	COUNT(s.artista_id) AS pessoas_seguidoras
FROM
	artistas AS ar
  INNER JOIN albuns AS al ON ar.id = al.artista_id
  INNER JOIN seguindo AS s ON al.artista_id = s.artista_id
GROUP BY album
ORDER BY pessoas_seguidoras DESC;