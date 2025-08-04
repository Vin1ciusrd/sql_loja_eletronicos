use loja_eletronicos;

-- Inserindo dados na tabela Clientes
INSERT INTO Clientes (nome, email, data_cadastro) VALUES
('Vinicius Santos', 'vinicius.santos@email.com', '2022-12-20'),
('Ana Silva', 'ana.silva@email.com', '2023-01-15'),
('Bruno Mendes', 'bruno.mendes@email.com', '2023-02-20'),
('Carla Souza', 'carla.souza@email.com', '2023-03-10'),
('Daniel Costa', 'daniel.costa@email.com', '2023-04-05'),
('Eduarda Pereira', 'eduarda.pereira@email.com', '2023-05-12'),
('Fernanda Lima', 'fernanda.lima@email.com', '2023-06-01'),
('Gustavo Oliveira', 'gustavo.oliveira@email.com', '2023-07-19'),
('Helena Santos', 'helena.santos@email.com', '2023-08-25');

-- Inserindo dados na tabela Pedidos
INSERT INTO Pedidos (cliente_id, data_pedido, valor_total) VALUES
(1, '2023-01-20', 2500.00),
(1, '2023-03-01', 25.00),
(2, '2023-02-25', 10000.00),
(3, '2023-03-15', 300.00),
(4, '2023-04-10', 890.90),
(1, '2023-05-05', 70.00),
(5, '2023-05-20', 10000.00),
(6, '2023-06-05', 50.00),
(2, '2023-07-01', 1500.00),
(7, '2023-07-25', 2500.00),
(8, '2023-08-30', 50.00),
(3, '2023-09-01', 50.00);

-- Inserindo dados na tabela Produtos
INSERT INTO Produtos (nome_produto, preco) VALUES
('Notebook', 2500.00),
('Mouse', 25.00),
('Teclado', 70.00),
('Monitor', 300.00),
('Webcam', 50.00),
('Cadeira Gamer', 890.90),
('Iphone 16', 10000.00),
('AirPods Pro', 1500.00);

-- Inserir dados na tabela ItensPedido
INSERT INTO ItensPedido (pedido_id, produto_id, quantidade) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 3, 2),
(3, 4, 1),
(4, 5, 1),
(5, 6, 1),
(6, 8, 1),
(7, 7, 1),
(8, 7, 2),
(9, 5, 2),
(10, 1, 1),
(11, 5, 3),
(12, 3, 1);