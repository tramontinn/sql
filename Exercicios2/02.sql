--Qual cliente juntou mais pontos positivos em 2025-05?

select idCliente,sum(qtdePontos) AS totalPontos

from transacoes

where DtCriacao >= '2025-05-01' and DtCriacao < '2025-06-01'

group by idCliente

ORDER BY sum(qtdePontos) DESC

LIMIT 1