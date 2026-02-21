SELECT idCliente, 
        -- (qtdePontos,)
        -- (qtdePontos + 10 AS QtdePontosPlus10,) -- adiciona 10 pontos na quantidade de pontos e altera o nome usando AS
        -- (qtdePontos * 2 AS QtdePontosDouble,) -- multiplica os pontos por 2
        DtCriacao,

        datetime(substr(DtCriacao,1,19)) AS dataF,

        strftime('%w', datetime(substr(DtCriacao,1,19))) AS dia_Semana
        
FROM clientes

