DELIMITER $$ 
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(45))
BEGIN
SELECT
  a.artista AS artista,
  l.album AS album
from
  artistas AS a
  inner join albuns AS l on a.id_artista = l.id_artista
where
  a.artista = nome
group by 2, 1
order by 2;
END $$
DELIMITER ;
