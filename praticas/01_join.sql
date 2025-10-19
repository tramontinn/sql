--Qual categoria de produtos mais vendidos?

select t2.DescCategoriaProduto,
        count(DISTINCT t1.IdTransacao)

from transacao_produto as t1

LEFT JOIN produtos as t2

ON t1.IdProduto = t2.IdProduto

GROUP BY DescCategoriaProduto 