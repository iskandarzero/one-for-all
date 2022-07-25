SELECT
  COUNT(can.cancao) AS cancoes,
  COUNT(DISTINCT(art.artista)) AS artistas,
  COUNT(DISTINCT(alb.album)) AS albuns
FROM
  album alb
JOIN
  cancao can
ON 
  can.album_id = alb.album_id
JOIN
  artista art
ON
  art.artista_id = alb.artista_id;