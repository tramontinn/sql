select sum(qtdePontos),

        sum(CASE
            WHEN qtdePontos > 0 THEN qtdePontos
        END) as qtdePontosPos,

        sum(CASE 
            WHEN qtdePontos < 0 THEN qtdePontos
            ELSE 0
        END) AS qtdePontosNegativos,

        count(CASE 
            WHEN qtdePontos < 0 THEN qtdePontos
        END) AS transacoesNegativas

from transacoes

where DtCriacao >= '2025-07-01'
and DtCriacao < '2025-08-01'