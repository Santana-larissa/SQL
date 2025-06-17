CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT
);

CREATE TABLE tb_cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    carga_horaria INT,
    nivel VARCHAR(50),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES 
('Programação', 'Cursos voltados ao desenvolvimento de software'),
('Design', 'Cursos de design gráfico e UX/UI'),
('Marketing', 'Cursos de marketing digital e vendas'),
('Negócios', 'Cursos de gestão e empreendedorismo'),
('Idiomas', 'Cursos de línguas estrangeiras');

INSERT INTO tb_cursos (nome_curso, valor, carga_horaria, nivel, id_categoria) VALUES
('Java Completo', 750.00, 40, 'Intermediário', 1),
('Design para Iniciantes', 300.00, 20, 'Básico', 2),
('Marketing Digital Avançado', 950.00, 35, 'Avançado', 3),
('Empreendedorismo 4.0', 1200.00, 50, 'Avançado', 4),
('Inglês Básico', 400.00, 30, 'Básico', 5),
('JavaScript Essencial', 650.00, 25, 'Intermediário', 1),
('Photoshop Profissional', 800.00, 40, 'Avançado', 2),
('Francês Intermediário', 550.00, 30, 'Intermediário', 5);

SELECT * FROM tb_cursos

SELECT * FROM tb_cursos WHERE valor > 500.00;

SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome_curso LIKE '%J%';

SELECT c.*, cat.nome_categoria, cat.descricao FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.id_categoria = cat.id_categoria;

SELECT c.*, cat.nome_categoria FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.id_categoria = cat.id_categoria
WHERE cat.nome_categoria = 'Programação';


