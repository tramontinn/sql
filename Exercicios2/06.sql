--Qual dia da semana que mais tem pedidos em 2025?

select 
    strftime('%w',substr(DtCriacao,1,10)) as diaSemana,
    count(IdTransacao) as qtdeTransacao

from transacoes

where substr(DtCriacao,1,4) = '2025'

group by 1