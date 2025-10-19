select count(DISTINCT idCliente)

from transacoes as t1

where t1.idCliente IN(
    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE substr(DtCriacao,1,10) = '2025-08-25'
)
AND substr(t1.DtCriacao,1,10) = '2025-08-29'
