--Qual o produto mais transacionado?

select idProduto, count(*) 

from transacao_produto

GROUP BY IdProduto

ORDER BY count(*) DESC