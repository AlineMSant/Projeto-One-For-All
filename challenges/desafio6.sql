SELECT
	  ROUND(MIN(p.valor), 2) AS faturmaento_minimo,
    MAX(p.valor) AS faturamento_maximo,
    ROUND(AVG(p.valor), 2) AS faturamento_medio,
    ROUND(SUM(p.valor), 2) AS faturamento_total
FROM
	  planos AS p
    INNER JOIN usuarios AS u ON u.plano_id = p.id;