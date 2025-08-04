-- Selecionar todos os clientes cadastrados na base
select * from clientes;

-- Seleciona todos os pedidos do cliente com um determinado id
select * from pedidos where cliente_id = 1;

-- Seleciona nome, email de clientes que se cadastraram após uma data determinada
select nome, email from clientes where data_cadastro > '2023-04-01';

-- Seleciona nome e preco de produtos que custam menos que um determinado preco.
select nome_produto, preco from produtos where preco < 100.00;

-- Seleciona o valor total de todos os pedidos de cada cliente
select cliente_id, sum(valor_total) as valor_total_pedidos 
from pedidos
group by cliente_id;

-- Seleciona a quantidade de pedidos que cada cliente fez
select cliente_id, count(pedido_id) as quantidade_pedidos
from pedidos
group by cliente_id;

-- Seleciona os clientes que não fizeram nenhum pedido
select c.* from clientes c
left join pedidos p on c.cliente_id = p.cliente_id
where p.pedido_id is null;

-- Seleciona os clientes que compraram determinado produto
select p.pedido_id, c.nome, pdts.nome_produto
from clientes c
left join pedidos p on c.cliente_id = p.cliente_id
left join itenspedido itns on p.pedido_id = itns.pedido_id
left join produtos pdts on pdts.produto_id = itns.produto_id
where pdts.nome_produto = 'Notebook';

-- Seleciona a média do valor total dos pedidos
select round(avg(valor_total), 2) as media_valor_pedidos from pedidos;

-- Seleciona o cliente com maior valor total de pedidos
select c.nome as nome_cliente, sum(itns.quantidade * prdts.preco) as total_gasto
from clientes c
left join pedidos p on c.cliente_id = p.cliente_id
left join itenspedido itns on p.pedido_id = itns.pedido_id
left join produtos prdts on itns.produto_id = prdts.produto_id
group by c.nome
-- ordena do maior para o menor 
order by total_gasto desc
-- seleciona apenas a primeira linha
limit 1;

-- Seleciona os produtos mais vendidos ordenados pela quantidade total de itens vendidos
select prdts.nome_produto, sum(itns.quantidade) as quantidade_vendas from itenspedido itns
left join produtos prdts on itns.produto_id = prdts.produto_id
group by itns.produto_id
order by quantidade_vendas desc;

-- Seleciona nome e email dos clientes que fizeram mais de um pedido
select c.nome, c.email, count(c.cliente_id) as quantidade_pedidos from clientes c
left join pedidos p on c.cliente_id = p.cliente_id
group by c.nome, c.email
having quantidade_pedidos > 1;

-- Seleciona a quantidade de pedidos por mes
select month(data_pedido) as mes, count(*) as quantidade_pedidos from pedidos
group by month(data_pedido)
order by mes;

-- Seleciona detalhes de um pedido como nome do cliente, data do pedido, nome do produto, quantidade por produto, valor total por item
select c.nome, p.data_pedido, prdt.nome_produto, itns.quantidade, sum(itns.quantidade * prdt.preco) as valor_total_item from clientes c
left join pedidos p on c.cliente_id = p.cliente_id
left join itenspedido itns on p.pedido_id = itns.pedido_id
left join produtos prdt on itns.produto_id = prdt.produto_id
where p.pedido_id = 1
group by c.nome, p.data_pedido, prdt.nome_produto, itns.quantidade;











