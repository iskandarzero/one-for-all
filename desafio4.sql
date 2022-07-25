SELECT
  usu.usuario AS usuario,
  IF(MAX(YEAR(rep.data_reproducao)) > 2020, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM
  usuario usu
JOIN
  reproducao rep
ON
  rep.usuario_id = usu.usuario_id
GROUP BY
  usu.usuario_id
ORDER BY
  usu.usuario;