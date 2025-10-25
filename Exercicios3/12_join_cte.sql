-- Dentre os clientes de janeiro de 2025. Quantos assistiram o curso de SQL?

WITH tb_clientes_janeiro AS (
    select DISTINCT idCliente
    from transacoes
    where DtCriacao >= '2025-01-01'
    and DtCriacao < '2025-02-01'
),

tb_clientes_curso AS (
    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE DtCriacao >= '2025-08-25'
    AND DtCriacao < '2025-08-30'
)

SELECT count(t1.idCliente) as clienteJaneiro, count(t2.idCliente) as clienteCurso
from tb_clientes_janeiro as t1

LEFT JOIN tb_clientes_curso as t2
ON t1.idCliente = t2.idCliente
