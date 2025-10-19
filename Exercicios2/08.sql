--Qual o produto com mais pontos transacionados?

select IdProduto,
        sum(vlProduto * QtdeProduto) AS totalPontos,
        sum(vlProduto) as qtdevenda

from transacao_produto

GROUP BY IdProduto
ORDER BY sum(vlProduto) DESC