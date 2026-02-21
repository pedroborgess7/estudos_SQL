--Lista de clientes com 100 a 200 pontos(inclusive ambos)
--Melhor o AND ja que precisa se submeter a duas condições

SELECT idCliente, qtdePontos

FROM clientes

WHERE qtdePontos >=100 AND QtdePontos <= 200
