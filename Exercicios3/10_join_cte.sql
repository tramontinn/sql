/* Como foi a curva de Churn do curso?

Foi restringido usando os clientes do primeiro dia, 
a verificação dos que estavam no restante do curso para ter uma curva de Churn
mais fiel

*/

WITH tb_clientes_d1 AS (

    SELECT DISTINCT IdCliente

    FROM transacoes

    WHERE DtCriacao >= '2025-08-25'
    and DtCriacao < '2025-08-26'
),

tb_join AS(

    select substr(t2.DtCriacao,1,10) as Dtdia, 
            count(DISTINCT t1.idCliente) as qtdeCliente,
            1.* count(DISTINCT t1.idCliente) / (SELECT count(*) from tb_clientes_d1) as pctRetencao,
            1 - 1. * count(DISTINCT t1.idCliente) / (SELECT count(*) from tb_clientes_d1) as pctChurn

    from tb_clientes_d1 as t1

    left JOIN transacoes as t2
    on t1.idCliente = t2.idCliente

    where DtCriacao >= '2025-08-25'
    and DtCriacao < '2025-08-30'

    GROUP BY dtDia
)

SELECT * FROM tb_join