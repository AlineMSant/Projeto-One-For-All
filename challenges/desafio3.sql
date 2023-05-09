SELECT
	CONCAT(u.nome,' ',u.sobrenome) AS pessoa_usuaria,
    COUNT(h.usuario_id) AS musicas_ouvidas,
    ROUND(SUM(c.duracao / 60), 2) AS total_minutos
FROM
  usuarios AS u
    INNER JOIN historico AS h ON u.id = h.usuario_id
    INNER JOIN cancoes AS c ON h.cancao_id = c.id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;