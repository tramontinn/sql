select idCliente,
        -- QtdePontos, 
        -- QtdePontos + 10 AS qtdePontosPlus10,
        -- QtdePontos * 2 AS qtdePontosDouble,
        DtCriacao,
        datetime(substr(DtCriacao,1,19)) AS dtCriacaoNova,
        strftime('%w', datetime(substr(DtCriacao,1,19)))  AS diaSemana

from clientes
