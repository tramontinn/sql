--Clientes mais antigos, tem mais frequencia de transação?

select t1.idCliente, 
        julianday('now') - julianday(substr(t1.DtCriacao,1,19)) as idadeBase,
        count(t2.IdTransacao) as qtdeTransacoes

from clientes as t1

LEFT JOIN transacoes as t2
ON t1.idCliente = t2.idCliente

GROUP BY t1.idCliente