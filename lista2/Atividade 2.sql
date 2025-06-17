CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL
);

CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    peso_kg DECIMAL(10,2),
    validade DATE,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Carnes Bovinas', 'Carnes de boi'),
('Carnes Suínas', 'Carnes de porco'),
('Aves', 'Produtos de frango e similares'),
('Embutidos', 'Linguiças e salsichas'),
('Peixes', 'Produtos do mar');

INSERT INTO tb_produtos (nome_produto, preco, peso_kg, validade, id_categoria) VALUES
('Picanha Bovina', 120.00, 1.2, '2025-07-10', 1),
('Linguiça Toscana', 45.00, 1.0, '2025-07-05', 4),
('Filé de Peito de Frango', 55.00, 1.5, '2025-07-08', 3),
('Costela Suína', 85.00, 2.0, '2025-07-12', 2),
('Salmão', 200.00, 1.0, '2025-07-09', 5),
('Coxinha da Asa', 50.00, 1.2, '2025-07-06', 3),
('Lombo Suíno', 75.00, 1.8, '2025-07-11', 2),
('Carne Moída', 65.00, 1.0, '2025-07-07', 1);

SELECT * FROM tb_produtos

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.*, c.nome_categoria, c.descricao FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

SELECT p.*, c.nome_categoria, c.descricao
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Aves'; 