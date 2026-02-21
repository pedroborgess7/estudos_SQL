--Listar todas as transações adicionando uma coluna nova sinalizando alto. medio e baixo para o valor dos pontos <10;<500;>=500

SELECT * 
FROM transacoes
WHERE qtdePontos > 500 
