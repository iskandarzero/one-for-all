SELECT
  usu.usuario AS usuario,
  COUNT(rep.usuario_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(can.duracao_segundos) / 60, 2) AS total_minutos
FROM
  usuario usu
JOIN
  reproducao rep
ON
  usu.usuario_id = rep.usuario_id
JOIN
  cancao can
ON
  rep.cancao_id = can.cancao_id
GROUP BY
  usu.usuario_id
ORDER BY
  usu.usuario;