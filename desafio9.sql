SELECT
  COUNT(*)
AS
  quantidade_musicas_no_historico
FROM
  reproducao rep 
JOIN
  usuario usu
ON
  usu.usuario_id = rep.usuario_id 
WHERE
  usu.usuario = 'Bill';