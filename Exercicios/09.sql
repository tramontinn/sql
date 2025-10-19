select IdTransacao,IdCliente,QtdePontos,
        CASE 
                WHEN qtdePontos < 10 THEN 'Baixo'
                WHEN qtdePontos < 500 THEN 'Médio'
                ELSE 'Alto'
        END AS Pontos
from transacoes