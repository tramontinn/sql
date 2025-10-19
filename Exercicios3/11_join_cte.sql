-- Quem iniciou o curso no primeiro dia, em média assitiu quantas aulas?

--participantes primeira aula
WITH tb_prim_dia AS (
    select DISTINCT IdCliente
    from transacoes
    where substr(dtCriacao,1,10) = '2025-08-25'
),


tb_dias_curso AS (
    SELECT DISTINCT idCliente, substr(DtCriacao,1,10) as presente_dia
    FROM transacoes
    WHERE DtCriacao >= '2025-08-25'
    AND DtCriacao < '2025-08-30'

    ORDER BY idCliente, presente_dia
),

tb_cliente_dias AS (
    select t1.idCliente, count(DISTINCT t2.presente_dia) as qtd_dias

    from tb_prim_dia as t1

    LEFT JOIN tb_dias_curso as t2
    ON t1.idCliente = t2.idCliente

    GROUP BY t1.idCliente
)

SELECT avg(qtd_dias) FROM tb_cliente_dias 