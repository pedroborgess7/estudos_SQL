-- Quantos produtos são de rpg?


SELECT  
    DescCategoriaProduto,
    COUNT (*) AS totalProdutos

FROM produtos
WHERE DescCategoriaProduto = 'rpg'
GROUP BY    DescCategoriaProduto

