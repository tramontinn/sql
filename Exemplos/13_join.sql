SELECT t1.*, t2.DescNomeProduto
FROM transacao_produto as t1
INNER JOIN produtos as t2
on t1.IdProduto = t2.IdProduto
