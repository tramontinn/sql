--Qual mes tivemos mais lista de presença assinada?
select substr(t1.DtCriacao,1,7) as anoMes,
count(DISTINCT t1.IdTransacao) as qtdeTransacao

from transacoes as t1

left join transacao_produto as t2
ON t1.IdTransacao = t2.IdTransacao

left join produtos as t3
on t2.IdProduto = t3.IdProduto

where DescNomeProduto = 'Lista de presença'

GROUP BY substr(t1.DtCriacao,1,7)

ORDER BY qtdeTransacao DESC