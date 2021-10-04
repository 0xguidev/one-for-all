CREATE VIEW perfil_artistas AS
SELECT
  a.artista AS artista,
  b.album AS album,
  COUNT(s.id_artista) AS seguidores
FROM
  artistas AS a
  INNER JOIN albuns AS b ON a.id_artista = b.id_artista
  INNER JOIN seguindo as s ON a.id_artista = s.id_artista
  GROUP BY 2
  ORDER BY 3 DESC, 1, 2;
