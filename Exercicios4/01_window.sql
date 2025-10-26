--Quantidade de transacoes acumuladas ao longo do tempo?

WITH tb_acum AS (
    select
        substr(DtCriacao,1,10) as dtDia,
        count(DISTINCT IdTransacao) as transacao

    from transacoes

    GROUP BY dtDia
)

select *,
        sum(transacao) OVER (ORDER BY dtDia) AS qtTransacaoAcumulada
from tb_acum