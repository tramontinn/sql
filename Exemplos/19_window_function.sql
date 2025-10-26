--Acumulado por clientes nos dias de curso

WITH tb_cliente_dia AS (
    select idCliente, substr(DtCriacao,1,10) as dtDia,
            count (DISTINCT IdTransacao) as qtTransacao

    from transacoes

    where DtCriacao >= '2025-08-25'
    and DtCriacao < '2025-08-30'

    GROUP BY idCliente, dtDia
),

tb_lag AS (select *, 
        sum(qtTransacao) OVER (PARTITION BY IdCliente ORDER BY dtDia) AS acum,
        lag(qtTransacao) OVER (PARTITION BY IdCliente ORDER BY dtDia) AS lagTransacao

from tb_cliente_dia
),

tb_engajamento AS (

select *,
        1. * qtTransacao / lagTransacao
from tb_lag
)