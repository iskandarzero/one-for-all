SELECT
  art.artista,
  alb.album,
  COUNT(seg.usuario_id) AS seguidores
FROM
  seguidores seg
JOIN
  artista art
ON
  seg.artista_id = art.artista_id
JOIN
  album alb
ON
  art.artista_id = alb.artista_id
GROUP BY
  seg.artista_id, alb.album;