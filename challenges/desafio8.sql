SELECT
	ar.artista AS artista,
  al.album AS album
FROM
	artistas AS ar
  INNER JOIN albuns AS al ON ar.id = al.artista_id
GROUP BY album
HAVING artista = "Elis Regina";