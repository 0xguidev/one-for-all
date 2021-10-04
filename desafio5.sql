CREATE VIEW top_2_hits_do_momento AS
SELECT
  c.cancao as cancao,
  COUNT(h.id_cancao) AS reproducoes
from
  cancoes AS c
  inner join historicos AS h ON c.id_cancao = h.id_cancao
  GROUP BY 1
  ORDER BY 2 DESC, 1
  LIMIT 2;
