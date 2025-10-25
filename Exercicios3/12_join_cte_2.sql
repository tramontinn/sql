WITH tb_clientes_janeiro AS (
    select DISTINCT idCliente
    from transacoes
    where DtCriacao >= '2025-01-01'
    AND DtCriacao < '2025-02-01'
)

SELECT count(DISTINCT t1.idCliente), count(DISTINCT t2.idCliente)

from tb_clientes_janeiro as t1

LEFT JOIN transacoes as t2
on t1.idCliente = t2.idCliente
and t2.DtCriacao >= '2025-08-25'
AND t2.DtCriacao < '2025-08-30'