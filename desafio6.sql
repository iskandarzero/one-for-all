SELECT
  MIN(pla.valor_plano) AS faturamento_minimo,
  MAX(pla.valor_plano) AS faturamento_maximo,
  ROUND(AVG(pla.valor_plano), 2) AS faturamento_medio,
  SUM(pla.valor_plano) AS faturamento_total
FROM
  plano pla
JOIN
  usuario usu
ON
  usu.plano_id = pla.plano_id;