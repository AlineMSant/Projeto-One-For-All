SELECT
	CONCAT(u.nome, ' ', u.sobrenome) AS pessoa_usuaria,
    IF(MAX(YEAR(h.data_reproducao)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM
	usuarios AS u
    INNER JOIN historico AS h ON u.id = h.usuario_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;