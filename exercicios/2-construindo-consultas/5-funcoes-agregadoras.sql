-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma das compras realizadas nele, bem como o valor da compra mínima e máxima, a quantidade de compras realizadas e o ticket médio de cada compra.

SELECT
BillingCountry as pais,
SUM(Total) as soma_compras,
MIN(Total) as menor_compra,
MAX(Total) as maior_compra,
COUNT(Total) as qnt_compras_realizadas,
round(AVG(Total),2) as media_compras

FROM invoices
Where BillingCountry = 'Austria'