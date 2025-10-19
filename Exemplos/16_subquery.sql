select * 

from (
    select *
    from transacoes as t1
    where dtCriacao > '2025-01-01'
)

where DtCriacao < '2025-07-01'