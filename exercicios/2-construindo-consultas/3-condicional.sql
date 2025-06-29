-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros
SELECT distinct 
Country as pais,
State as estado_sigla,

CASE
WHEN State = 'SP' THEN 'São Paulo'
WHEN State = 'RJ' THEN 'Rio de Janeiro'
WHEN State = 'DF' THEN 'Distrito Federal'
ELSE 'Estado desconhecido'
END AS estado

FROM customers
where pais like 'Brazil'