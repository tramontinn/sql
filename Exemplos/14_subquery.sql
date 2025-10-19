--Lista de produtos com o produto "Resgatar Ponei"

select * 

from transacao_produto as t1

where t1.IdProduto IN (
    select IdProduto
    from produtos
    where DescNomeProduto = 'Resgatar Ponei'
)