-- select IdProduto,count(*)

-- from transacao_produto

-- GROUP BY IdProduto

select IdCliente,
        sum(qtdePontos),
        count(IdTransacao)
FROM transacoes
WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01'

GROUP BY IdCliente
HAVING sum(qtdePontos) >= 4000

ORDER BY sum(qtdePontos) DESC