DROP TABLE IF EXISTS itens_pedido;
DROP TABLE IF EXISTS pedidos;
DROP TABLE IF EXISTS produtos;
DROP TABLE IF EXISTS clientes;
 
CREATE TABLE clientes (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	telefone VARCHAR(20) UNIQUE,
	endereco VARCHAR(200)
);
 
CREATE TABLE produtos (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	preco DECIMAL(10,2)
);
 
CREATE TABLE pedidos (
	id SERIAL PRIMARY KEY,
	cliente_id INT,
	data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (cliente_id) REFERENCES clientes(id) ON DELETE SET NULL
);
 
CREATE TABLE itens_pedido (
	id SERIAL PRIMARY KEY,
	pedido_id INT,
	produto_id INT,
	quantidade INT,
	preco_unidade DECIMAL(10,2),
	FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
	FOREIGN KEY (produto_id) REFERENCES produtos(id) ON DELETE SET NULL
);
 
 

INSERT INTO clientes (nome, telefone, endereco) VALUES
('Carlos Souza', '51999990001', 'Rua das Flores, 10'),
('Ana Lima', '51999990002', 'Av. Central, 45'),
('Pedro Oliveira', '51999990003', 'Rua dos Pinheiros, 22'),
('Julia Santos', '51999990004', 'Rua do Mercado, 8');
 
INSERT INTO produtos (nome, preco) VALUES
('X-Burguer', 18.90),
('X-Salada', 21.50),
('Fritas P', 8.00),
('Fritas G', 12.00),
('Refrigerante', 6.00),
('Suco Natural', 7.50);
 
INSERT INTO pedidos (cliente_id) VALUES
(1),
(2),
(1),
(3);
 
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unidade) VALUES
(1, 1, 2, 18.90),
(1, 3, 1, 8.00),
(1, 5, 2, 6.00),
(2, 2, 1, 21.50),
(2, 4, 1, 12.00),
(3, 1, 1, 18.90),
(3, 6, 1, 7.50),
(4, 2, 2, 21.50),
(4, 5, 1, 6.00);
 
SELECT 
  pedidos.id AS pedido_id,
  clientes.nome AS cliente,
  pedidos.data_pedido
FROM pedidos
JOIN clientes ON pedidos.cliente_id = clientes.id;
 
SELECT 
  itens_pedido.pedido_id,
  produtos.nome AS produto,
  itens_pedido.quantidade,
  itens_pedido.preco_unidade
FROM itens_pedido
JOIN produtos ON itens_pedido.produto_id = produtos.id;
 
SELECT 
  pedido_id,
  SUM(quantidade * preco_unidade) AS total
FROM itens_pedido
GROUP BY pedido_id
ORDER BY pedido_id;
 
SELECT 
  produtos.nome,
  SUM(itens_pedido.quantidade) AS total_vendido
FROM itens_pedido
JOIN produtos ON itens_pedido.produto_id = produtos.id
GROUP BY produtos.nome
ORDER BY total_vendido DESC;
 
SELECT 
  clientes.nome,
  SUM(itens_pedido.quantidade * itens_pedido.preco_unidade) AS total_gasto
FROM itens_pedido
JOIN pedidos ON itens_pedido.pedido_id = pedidos.id
JOIN clientes ON pedidos.cliente_id = clientes.id
GROUP BY clientes.nome
ORDER BY total_gasto DESC;