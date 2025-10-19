--Lista de pedidos realizar no fim de semana

select IdTransacao, 
        DtCriacao, 
        strftime('%w',(DtCriacao)) as diaSemana
from transacoes
where diaSemana in ('0','6')