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