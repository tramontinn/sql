select count(*),count(DISTINCT idCliente)

FROM transacoes

where DtCriacao >= '2025-06-01'
AND DtCriacao < '2025-08-01'