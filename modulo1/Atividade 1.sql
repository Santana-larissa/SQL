CREATE DATABASE rh_empresa;

USE rh_empresa;

CREATE TABLE colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    departamento VARCHAR(50),
    salario DECIMAL(10,2),
    data_admissao DATE
);

INSERT INTO colaboradores (nome, cargo, departamento, salario, data_admissao) VALUES 
('Larissa Santana', 'Analista', 'Financeiro', 2500.00, '2021-03-15'),
('Carlos Souza', 'Assistente', 'RH', 1800.00, '2020-07-10'),
('Beatriz Lima', 'Coordenadora', 'Marketing', 3200.00, '2019-11-05'),
('João Pedro', 'Estagiário', 'TI', 1200.00, '2022-01-20'),
('Mariana Costa', 'Desenvolvedor', 'TI', 2800.00, '2021-06-12');

SELECT * FROM colaboradores; 

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores
WHERE nome = 'João Pedro';

UPDATE colaboradores
SET salario = 1500.00
WHERE id = 4;