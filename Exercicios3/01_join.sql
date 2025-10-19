--Quais clientes mais perderam pontos por lover?

select t1.idCliente,sum(t1.qtdePontos) as totalPontos

from transacoes as t1

LEFT JOIN transacao_produto as t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos as t3
ON t2.IdProduto = t3.IdProduto

WHERE t3.DescCategoriaProduto = 'lovers'

GROUP BY t1.idCliente

ORDER BY totalPontos