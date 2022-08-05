SELECT
  can.cancao
AS
  nome,
  COUNT(*)
AS
  reproducoes
FROM
  reproducao rep
JOIN
  cancao can
ON
  can.cancao_id = rep.cancao_id
JOIN
  usuario usu
ON
  usu.usuario_id = rep.usuario_id
AND
  (usu.plano_id = 1 OR usu.plano_id = 3)
GROUP BY
  rep.cancao_id
ORDER BY
  can.cancao;