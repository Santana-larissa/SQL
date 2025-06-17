CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id_classe INT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL
);

CREATE TABLE tb_personagens (
    id_personagem INT AUTO_INCREMENT PRIMARY KEY,
    nome_personagem VARCHAR(100) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_classes (nome_classe, descricao) VALUES
('Guerreiro', 'Especialista em combate'),
('Mago', 'Usuário de magias poderosas'),
('Arqueiro', 'Mestre nas armas de longo alcance'),
('Ladino', 'Perito em furtividade e agilidade'),
('Paladino', 'Guerreiro sagrado com poderes de cura');

INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, nivel, id_classe) VALUES
('Larissa', 2500, 1500, 10, 1),
('Vinicius', 1800, 1200, 8, 3),
('Thiago', 3000, 800, 12, 2),
('Ana', 2200, 1800, 9, 1),
('Julia', 1600, 1100, 7, 3),
('Nicole', 2700, 900, 11, 2),
('Beatriz', 1900, 1000, 8, 4),
('Cassio', 2100, 1700, 9, 5);


SELECT * FROM tb_personagens

SELECT * FROM tb_personagens WHERE poder_ataque > 2000; 

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%C%'; 

SELECT p.*, c.nome_classe, c.descricao FROM tb_personagens p INNER JOIN tb_classes c ON p.id_classe = c.id_classe;

SELECT p.*, c.nome_classe FROM tb_personagens p INNER JOIN tb_classes c ON p.id_classe = c.id_classe
WHERE c.nome_classe = 'Arqueiro';


