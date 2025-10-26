--Qual o dia da semana mais ativo de cada usuário?

WITH tb_cliente_semana AS (
    select idCliente, 
            IdTransacao,    
            strftime('%w',substr(DtCriacao,1,10)) as dtDiaSemana,
            count(DISTINCT IdTransacao) as qtTransacao

    from transacoes

    GROUP BY idCliente, dtDiaSemana
),

tb_rn AS (
    select *,
        ROW_NUMBER() OVER (PARTITION BY idCliente ORDER BY qtTransacao DESC) as RN

    from tb_cliente_semana
)

select * from tb_rn where rn = 1