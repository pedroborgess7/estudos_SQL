-- Qual o produto com mais pontos transacionados?

-- .tables

SELECT  IdProduto,
    sum(QtdeProduto * vlProduto) AS total_transicionado
        
FROM transacao_produto

GROUP BY IdProduto
ORDER BY total_transicionado DESC
LIMIT 1
