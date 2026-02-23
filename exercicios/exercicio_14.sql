-- Qual o valor médio de pontos positivos por dia?


SELECT  sum(qtdePontos) AS totalpontos, 
        count(DISTINCT substr(DtCriacao,1,10)) AS DiasUnicos,

        sum(qtdePontos) / count(DISTINCT substr(DtCriacao,1,10)) AS avgPontosDias
FROM transacoes
WHERE qtdePontos>0;

SELECT substr(DtCriacao,1,10) AS dtDia,

        AVG(qtdePontos) AS avgpontosDia

FROM transacoes

WHERE qtdePontos > 0
GROUP BY 1
ORDER BY 2
;
