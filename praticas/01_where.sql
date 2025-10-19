/* Selecione todos os clientes com e-mail cadastrado

select * from clientes
where flEmail = 1

*/

/* Selecione todas as transações de 50 pontos (exatos) 

select * from transacoes
where qtdePontos = 50


*/


/* Selecione todos os clientes com mais de 500 pontos

select * from clientes
where qtdePontos >= 500

*/


/* Selecione todos produtos que contêm 'churn' no nome 

select * from produtos
where DescCategoriaProduto LIKE '%churn%'
*/