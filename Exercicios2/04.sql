--Quantos produtos são de RPG?

select DescCategoriaProduto,count(*) 

from produtos

GROUP BY DescCategoriaProduto