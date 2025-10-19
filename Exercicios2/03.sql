--Qual cliente fez mais transações em 2024?

select idCliente,count(*)

from transacoes

where DtCriacao >= '2024-01-01' and DtCriacao < '2025-01-01'

--where strftime('%Y', substr(DtCriacao,1,19)) = '2024'

--where substr(DtCriacao,1,4) = '2024'

group by idCliente

ORDER BY count(*) DESC