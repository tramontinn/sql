--Quantidade de usuários cadastrados (absoluto e acumulado) ao longo do tempo?

WITH user_cad AS (
    select 
        count(DISTINCT idCliente) as clientes,
        substr(DtCriacao,1,10) as dtDia

    from clientes

    GROUP BY dtDia
),

tb_acum AS (
    select *,
        sum(clientes) OVER (ORDER BY dtDia) AS qtTransacaoAcumulada
    from user_cad
)

select * from tb_acum
ORDER BY dtDia