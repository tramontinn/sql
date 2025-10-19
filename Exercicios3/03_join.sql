/* Do inicio ao fim do curso (2025/08/25 a 2025/08/29), quantos assinaram 
a lista de presença? */

select idCliente

from produtos as t1

LEFT JOIN transacao_produto as t2
ON t1.IdProduto = t2.IdProduto

LEFT JOIN transacoes as t3
ON t2.IdTransacao = t3.IdTransacao

WHERE substr(t3.dtCriacao,1,10) BETWEEN '2025-08-25' and '2025-08-29'
AND t1.DescNomeProduto = 'Lista de presença'

GROUP BY t3.idCliente