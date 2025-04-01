CREATE TABLE Cliente
(
id_cliente INT IDENTITY (1,1) PRIMARY KEY,
nome VARCHAR(50),
telefone VARCHAR(50),
cpf VARCHAR(50),
endereco VARCHAR(50)
);

INSERT INTO Cliente (nome, telefone, cpf, endereco) 
VALUES
('Luiza Rita Daniela Almeida', '99988549370', '71627385918', 'Rua Oito, Teso Duro'),
('Severino Mateus José Corte Real', '17998736451', '81728391007', 'Rua Nove, Populina'),
('Andrea Yasmin Beatriz da Luz', '17998736481', '81726374471', 'Rua Nove, São Paulo'),
('Mariah Andrea Cristiane Freitas', '179982736478', '2735081770', 'Santa Margarida, São Paulo'),
('Rodrigo Davi Severino Rodrigues', '176838184148', '32093087308', 'Rua Dourado, Conjunto Tangará'),
('Jéssica Sandra Eloá Monteiro', '1767985467961', '91440891397', 'Avenida João Selvirio de Souza 596'),
('Lucca Gustavo Carlos Gomes', '179228911501', '19442330241', 'Avenida Samaúma'),
('Isabel Priscila da Conceição', '179987263748', '86993851539', 'Rua Augusto Jorge Brüggemann'),
('Cristiane Regina Nogueira', '17983267102', '02107422320', 'Rua João Henrique Pereira Leite'),
('Samuel Ruan Farias', '15982327384', '18076290', 'Rua Rubião de Almeida');

CREATE TABLE Fornecedor
(
id_fornecedor INT IDENTITY (1,1) PRIMARY KEY,
nome VARCHAR(50),
telefone VARCHAR(50),
cnpj VARCHAR(11),
);

INSERT INTO Fornecedor (nome, telefone, cnpj) 
VALUES ('Richard Cristovão', '17997816273', '7361787921');

CREATE TABLE Produto
(
id_produto INT IDENTITY(1,1) PRIMARY KEY,
id_fornecedor INT,
descricao VARCHAR(50),
preco NUMERIC(10,2),
FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor (id_fornecedor)
);

INSERT INTO Produto (id_fornecedor, descricao, preco) 
VALUES (1, 'Tapete Pequeno', '119.99'), (1, 'Tapete Médio', '219.99'), (1, 'Tapete Grande', '419.99');

CREATE TABLE Vendas
(
id_vendas INT IDENTITY(1,1) PRIMARY KEY,
id_produto INT,
id_cliente INT,
quantidade INT,
data_venda DATE,
);

INSERT INTO Vendas (id_produto, id_cliente, quantidade, data_venda) 
VALUES 
(1, 1, 2, '2024-04-23'),
(2, 2, 4, '2024-04-23'),
(2, 3, 1, '2024-04-23'),
(1, 4, 1, '2024-04-23'),
(3, 5, 1, '2024-04-23'),
(2, 6, 3, '2024-04-23'),
(1, 7, 2, '2024-04-23'),
(3, 8, 4, '2024-04-23'),
(2, 9, 1, '2024-04-23'),
(1, 10, 6, '2024-04-23');

SELECT * FROM Cliente
SELECT * FROM Fornecedor
SELECT * FROM Produto
SELECT * FROM Vendas

DROP TABLE Cliente
DROP TABLE Fornecedor
DROP TABLE Produto
DROP TABLE Vendas