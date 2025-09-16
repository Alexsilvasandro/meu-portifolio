-- cria base e usa ela
CREATE DATABASE IF NOT EXISTS controle_estoque;
USE controle_estoque;

-- tabela Fornecedores
CREATE TABLE IF NOT EXISTS Fornecedores (
    id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

-- tabela Produtos
CREATE TABLE IF NOT EXISTS Produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    quantidade INT DEFAULT 0,
    preco DECIMAL(10,2),
    id_fornecedor INT,
    CONSTRAINT fk_fornecedor FOREIGN KEY (id_fornecedor) REFERENCES Fornecedores(id_fornecedor)
);

-- tabela Vendas
CREATE TABLE IF NOT EXISTS Vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT NOT NULL,
    quantidade_vendida INT NOT NULL,
    data_venda DATE,
    CONSTRAINT fk_produto FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);

