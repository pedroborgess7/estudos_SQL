-- Quais clientes mais perderam pontos por Lover?

SELECT  t1.idCliente, 
        sum(t1.qtdePontos) AS totalPontos
        
FROM  transacoes AS t1

LEFT JOIN transacao_produto AS t2 -- Todas as transações 
ON t1.idTransacao=t2.IdTransacao

LEFT JOIN produtos AS t3 -- qual é o produto e qual a categoria 
ON t2.IdProduto = t3.IdProduto

WHERE t3.DescCategoriaProduto = 'lovers'
GROUP BY t1.idCliente -- Agrupa todas as linhas por cliente
ORDER BY sum(t1.qtdePontos) ASC
