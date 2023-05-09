SELECT
	COUNT(h.usuario_id) AS musicas_no_historico
FROM
	usuarios AS u
  INNER JOIN SpotifyClone.historico AS h ON u.id = h.usuario_id
WHERE u.nome = "Barbara";