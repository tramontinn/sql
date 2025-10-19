WITH tb_cliente_primeiro_dia AS (
    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE substr(dtCriacao,1,10) = '2025-08-25'
),

tb_cliente_ultimo_dia AS (
    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE substr(dtCriacao,1,10) = '2025-08-29'
),

tb_join AS (
    SELECT t1.idCliente as primCliente, 
            t2.idCliente as ultCliente 
    FROM tb_cliente_primeiro_dia as t1
    LEFT JOIN tb_cliente_ultimo_dia as t2
    ON t1.idCliente = t2.idCliente
)

select count(primCliente), count(ultCliente), 1. * count(ultCliente)/count(primCliente)
from tb_join
