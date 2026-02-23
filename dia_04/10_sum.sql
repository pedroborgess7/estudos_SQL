SELECT 
        sum(qtdePontos),

        2
        
        sum(CASE 
            WHEN qtdePontos>0 THEN qtdePontos
            END) AS qtdePontosPositivos,

        sum(CASE
            WHEN qtdePontos < 0 THEN qtdePontos
            ELSE 0   
            END) AS qtdePontosNegativos,
        count(CASE
              WHEN qtdePontos < 0 THEN  qtdePontos
              ELSE 0
              END) AS qtdeTransacaoNegativas

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'
