-- Lista de produtos com o nome de 'Venda de'

SELECT IdProduto, DescNomeProduto
FROM produtos
WHERE DescNomeProduto LIKE 'Venda de%'
