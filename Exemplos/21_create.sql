
DROP TABLE IF EXISTS relatorio_diario;

CREATE TABLE IF NOT EXISTS relatorio_diario AS

WITH tb_diario AS (
    select
        substr(DtCriacao,1,10) as dtDia,
        count(DISTINCT IdTransacao) as transacao

    from transacoes

    GROUP BY dtDia
    ORDER BY dtDia
    ),
    
    tb_acum AS (
    select *,
            sum(transacao) OVER (ORDER BY dtDia) AS qtTransacaoAcumulada
    from tb_diario
    )

    select * from tb_acum;