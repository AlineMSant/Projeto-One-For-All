SELECT
	c.cancao AS cancao,
	COUNT(c.cancao) AS reproducoes
FROM
	cancoes AS c
    INNER JOIN historico AS h ON c.id = h.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;