--DROP TABLE IF EXISTS clientes_d28;

CREATE TABLE IF NOT EXISTS clientes_d28 (
    idCliente varchar(250) PRIMARY KEY,
    qtdeTransacoes INTEGER
);

DELETE FROM clientes_d28;

INSERT INTO clientes_d28
SELECT idCliente,
        count(DISTINCT IdTransacao) as qtdeTransacoes

FROM transacoes

WHERE julianday('now') - julianday(substr(DtCriacao,1,10)) <= 28

GROUP BY IdCliente;

select * from clientes_d28;