WITH tb_sumario_dias AS (

    select substr(DtCriacao,1,10) as dtDia,
            count(DISTINCT IdTransacao) as qtdeTransacao

    from transacoes

    where DtCriacao >= '2025-08-25'
    and DtCriacao < '2025-08-30'

    GROUP BY dtDia
)

select *,
        sum(qtdeTransacao) OVER (ORDER BY dtDia) AS qtTransacaoAcumulada

from tb_sumario_dias