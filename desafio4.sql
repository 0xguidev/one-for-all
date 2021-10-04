CREATE VIEW top_3_artistas AS
SELECT
  a.artista AS artista,
  count(s.id_usuario) AS seguidores
from
  artistas as a
  inner join seguindo as s ON a.id_artista = s.id_artista
  GROUP BY 1
  ORDER BY 2 desc, 1
  LIMIT 3;
