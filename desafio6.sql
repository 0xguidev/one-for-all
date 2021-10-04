CREATE VIEW faturamento_atual AS
SELECT
  ROUND(MIN(p.valor_plano), 2) AS `faturamento_minimo`,
  ROUND(MAX(p.valor_plano), 2) AS `faturamento_maximo`,
  ROUND(AVG(p.valor_plano), 2) AS `faturamento_medio`,
  ROUND(SUM(p.valor_plano), 2) AS `faturamento_total`
from
  planos AS p
  inner join usuarios AS u ON p.id_plano = u.id_plano;
