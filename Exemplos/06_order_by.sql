-- select * from clientes
-- order BY qtdePontos DESC
-- limit 10;

select * 
from clientes
where flTwitch = 1
order by DtCriacao ASC, QtdePontos DESC