--Qual o valor médio de pontos positivos por dia?

select sum(qtdePontos) AS totalpontos,
        count(DISTINCT substr(DtCriacao,1,10)) as qtDiasUnicos,
        sum(qtdePontos) / count(DISTINCT substr(DtCriacao,1,10))

from transacoes

where qtdePontos > 0