CREATE VIEW historico_reproducao_usuarios AS
SELECT
  a.usuario AS usuario,
  c.cancao AS nome
from
  usuarios AS a
  inner join historicos as b ON a.id_usuario = b.id_usuario
  inner join cancoes AS c ON b.id_cancao = c.id_cancao
  order by 1, 2;
