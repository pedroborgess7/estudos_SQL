-- Lista de pedidos realizados no fim de semana

SELECT idCliente, DtCriacao

DtCriacao,
datetime(substr(DtCriacao, 1,19)) AS dataF,
strftime('%w', datetime(substr(DtCriacao, 1,19))) AS diaDaSemana

FROM transacoes


WHERE diaDaSemana IN ('0', '6');