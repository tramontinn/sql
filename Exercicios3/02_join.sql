--Quais clientes assinaram a lista de presença no dia 2025/08/25?

select t3.idCliente, count(*), substr(t3.DtCriacao,1,10) as dtLista

from transacao_produto as t1

LEFT JOIN produtos as t2
ON t1.IdProduto = t2.IdProduto

LEFT JOIN transacoes as t3
ON t1.IdTransacao = t3.IdTransacao

WHERE dtLista = '2025-08-25'
and t2.DescNomeProduto = 'Lista de presença'

GROUP BY t3.idCliente