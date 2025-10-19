--Em 2024, quantas transações de lovers tiveram??

--,t1.idCliente,t2.IdProduto,t3.DescCategoriaProduto
select count(DISTINCT t1.IdTransacao)

from transacoes as t1

LEFT JOIN transacao_produto as t2
ON t1.IdTransacao = t2.idTransacao

LEFT JOIN produtos as t3
ON t2.IdProduto = t3.IdProduto

where t1.DtCriacao >= '2024-01-01' and t1.DtCriacao < '2025-01-01'
and t3.DescCategoriaProduto = 'lovers'