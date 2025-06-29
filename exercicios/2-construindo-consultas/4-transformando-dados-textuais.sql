-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras
SELECT 
CustomerId, 
FirstName, 
LastName, 
Address
FROM customers
WHERE Country LIKE 'Bra%';
-- Na consulta anterior, converta o sobrenome para letras maiúsculas
SELECT 
CustomerId, 
FirstName, 
UPPER (LastName), 
Address
FROM customers
WHERE Country LIKE 'Bra%';

-- Na consulta anterior, converta o nome para letras minúsculas
SELECT 
CustomerId, 
LOWER (FirstName) AS nome, 
UPPER (LastName) AS  sobrenome, 
Address AS endereço
FROM customers
WHERE Country LIKE 'Bra%';


-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome
SELECT 
CustomerId, 
LOWER (FirstName) AS nome, 
UPPER (LastName) AS  sobrenome, 
FirstName || ' ' || LastName as nome_completo,
Address AS endereço
FROM customers
WHERE Country LIKE 'Bra%';


-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço
SELECT 
CustomerId, 
LOWER (FirstName) AS nome, 
UPPER (LastName) AS  sobrenome, 
FirstName || ' ' || LastName as nome_completo,
replace (Address, 'Av.', 'Avenida') AS endereço
FROM customers
WHERE Country LIKE 'Bra%';


-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais
