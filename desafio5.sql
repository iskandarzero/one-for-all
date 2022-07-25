SELECT
  can.cancao AS cancao,
  COUNT(rep.cancao_id) AS reproducoes
FROM
  cancao can
JOIN
  reproducao rep
ON
  rep.cancao_id = can.cancao_id
GROUP BY
  rep.cancao_id
ORDER BY
  reproducoes DESC, can.cancao
LIMIT 2;