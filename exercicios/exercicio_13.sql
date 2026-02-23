-- Quantos produtos são de rpg?
-- WHERE DescCategoriaProduto = 'rpg'
-- sum(DescCategoriaProduto)


SELECT count(*)
FROM produtos
WHERE DescCategoriaProduto = 'rpg' ; 

-- Conta somente RPG

SELECT DescCategoriaProduto ,
    count(*)

FROM produtos 

GROUP BY DescCategoriaProduto;

-- Conta todos