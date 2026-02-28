-- Qual cliente fez mais transações no ano de 2024?

SELECT 
    idCliente, 
    count(IdTransacao) AS somaTransacoes

FROM transacoes
WHERE DtCriacao >= '2024-01-01' AND DtCriacao < '2025-05-01'
GROUP BY idCliente
ORDER BY somaTransacoes DESC
LIMIT 1;