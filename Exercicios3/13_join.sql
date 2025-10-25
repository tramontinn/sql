--Qual dia com maior engajamento de cada aluno que iniciou dia 1?

WITH alunos_dia01 AS (
    select DISTINCT idCliente
    from transacoes
    where substr(DtCriacao,1,10) = '2025-08-25'
),

tb_dia_cliente AS (
    select t1.idCliente,
            substr(t2.DtCriacao,1,10) as dtDia,
            count(*) as qtInteracoes

    from alunos_dia01 as t1

    LEFT JOIN transacoes as t2
    on t1.idCliente = t2.idCliente
    AND t2.DtCriacao >= '2025-08-25'
    AND t2.DtCriacao < '2025-08-30'
    
    GROUP BY t1.idCliente, dtDia
    ORDER BY t1.idCliente, dtDia
),

tb_rn AS (
    select *, 
            row_number() OVER (PARTITION BY idCliente ORDER BY qtInteracoes DESC, dtDia) as rn

    from tb_dia_cliente
)

SELECT * from tb_rn
WHERE rn = 1