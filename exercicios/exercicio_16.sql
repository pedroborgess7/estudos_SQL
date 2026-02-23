-- Qual o produto mais transacionado?

SELECT IdProduto,
        sum(QtdeProduto) AS totalQuantidade

FROM transacao_produto

GROUP BY IdProduto
ORDER BY totalQuantidade DESC

LIMIT 1