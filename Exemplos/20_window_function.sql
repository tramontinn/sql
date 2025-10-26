--De quanto em quanto tempo as pessoas voltam?
WITH cliente_dia AS (
    select DISTINCT idCliente, 
            substr(DtCriacao,1,10) as dtDia
    from transacoes

    where substr(DtCriacao,1,4) = '2025'

    ORDER BY idCliente, dtDia
),

tb_lag AS (
        SELECT *,
                lag(dtDia) OVER (PARTITION BY idCliente ORDER BY dtDia) as lagDia

        FROM cliente_dia
),

tb_diff_dt AS (
    SELECT *,
            julianday(dtDia) - julianday(lagDia) as dtDiff
    FROM tb_lag
),

avg_cliente AS (
    select idCliente, avg(dtDiff) as avgDia
    from tb_diff_dt
    GROUP BY idCliente
)

select avg(avgDia) from avg_cliente