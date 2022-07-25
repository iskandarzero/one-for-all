SELECT art.artista, alb.album FROM artista art
JOIN album alb ON alb.artista_id = art.artista_id
WHERE art.artista = 'Walter Phoenix';