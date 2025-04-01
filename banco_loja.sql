CREATE TABLE Cliente 
(
    id_cliente INT IDENTITY (1,1) PRIMARY KEY,
    nome VARCHAR(50),
    telefone VARCHAR(11),
    endereco VARCHAR(50),
    cpf VARCHAR(11),
    email VARCHAR(50)
);

CREATE TABLE Fornecedor
(
    id_fornecedor INT IDENTITY (1,1) PRIMARY KEY,
    nome_fornecedor VARCHAR(50),
    endereco_fornecedor VARCHAR(50),
    telefone_fornecedor VARCHAR(11)
);

CREATE TABLE Produtos
(
    id_produtos INT IDENTITY (1,1) PRIMARY KEY,
    id_fornecedor INT,
    nome_produto VARCHAR(50),
    descricao_produto VARCHAR(255),
    preco_produto NUMERIC (10,2),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor (id_fornecedor)
);

CREATE TABLE Pedidos
(
    id_pedidos INT IDENTITY (1,1) PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    status_pedido VARCHAR(50),
    preco_total NUMERIC (10,2),
    FOREIGN KEY (id_cliente) REFERENCES Cliente (id_cliente)
);

CREATE TABLE Entregador
(
    id_entregador INT IDENTITY (1,1) PRIMARY KEY,
    nome_entregador VARCHAR(50),
    telefone_entregador VARCHAR(11),
    veiculo VARCHAR(50),
);

CREATE TABLE Envios 
(
    id_envios INT IDENTITY (1,1) PRIMARY KEY,
    id_entregador INT,
    id_pedidos INT,
    preco_frete NUMERIC (10,2),
    prazo DATE,
    FOREIGN KEY (id_entregador) REFERENCES Entregador (id_entregador),
    FOREIGN KEY (id_pedidos) REFERENCES Pedidos (id_pedidos)
);

SELECT * FROM Cliente
SELECT * FROM Fornecedor
SELECT * FROM Produtos
SELECT * FROM Pedidos
SELECT * FROM Entregador
SELECT * FROM Envios

DROP TABLE Cliente
DROP TABLE Fornecedor
DROP TABLE Produtos
DROP TABLE Pedidos
DROP TABLE Entregador
DROP TABLE Envios
