CREATE DATABASE escola;

USE escola;

CREATE TABLE estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    turma VARCHAR(20),
    nota DECIMAL(3,1),
    idade INT,
    email VARCHAR(100)
);

INSERT INTO estudantes (nome, turma, nota, idade, email) VALUES
('Larissa', '3A', 8.5, 15, 'larissa.santana@email.com'),
('Bruno', '2B', 6.0, 14, 'bruno.silva@email.com'),
('Carla', '3A', 9.0, 15, 'carla.souza@email.com'),
('Daniel', '1C', 5.5, 13, 'daniel.lima@email.com'),
('Eduarda', '2B', 7.5, 14, 'eduarda.alves@email.com'),
('Felipe', '3A', 4.0, 15, 'felipe.costa@email.com'),
('Gabriela', '1C', 7.0, 13, 'gabriela.rocha@email.com'),
('Henrique', '2B', 8.0, 14, 'henrique.mendes@email.com');

SELECT * FROM estudantes; 

SELECT * FROM estudantes WHERE nota > 7.0;
SELECT * FROM estudantes WHERE nota < 7.0;

UPDATE estudantes SET nota = 6.5
WHERE id = 6;

SELECT * FROM estudantes
WHERE id = 6;