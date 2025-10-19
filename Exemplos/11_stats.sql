select round(avg(qtdePontos),2) as mediaCarteira,
        1. * sum(qtdePontos) / count(idCliente) as mediaCarteiraRoots,
        min(qtdePontos) as minCarteira,
        max(qtdePontos) as maxCarteira,
        sum(flTwitch),
        sum(flEmail)

from clientes