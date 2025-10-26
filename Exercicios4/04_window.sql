-- Saldo de pontos acumulado de cada usuário

WITH tb_cliente_dia AS (
    select idCliente,
            substr(DtCriacao,1,10) as dtDia,
            sum(qtdePontos) as totalPontos,
            sum(CASE WHEN QtdePontos > 0 THEN QtdePontos ELSE 0 END) as pontosPositivos

    from transacoes

    GROUP BY idCliente, dtDia
)

SELECT *,
        sum(totalPontos) OVER (PARTITION BY idCliente ORDER BY dtDia) as saldoPontos,
        sum(pontosPositivos) OVER (PARTITION BY idCliente ORDER BY dtDia) as totalPontosP
from tb_cliente_dia