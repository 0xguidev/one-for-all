CREATE VIEW estatisticas_musicais AS
SELECT
  COUNT(*) AS cancoes,
  (select COUNT(*) from artistas) AS artistas,
  (select COUNT(*) from albuns) AS albuns
from
  cancoes;
