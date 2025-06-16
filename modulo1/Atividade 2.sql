CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE ecommerce (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10,2),
    estoque INT,
    fornecedor VARCHAR(100)
    
    );
    
INSERT INTO ecommerce (nome, categoria, preco, estoque, fornecedor) VALUES
('Notebook', 'Informática', 4500.00, 10, 'TechSupplier'),
('Mouse', 'Acessórios', 150.00, 50, 'ClickStore'),
('Teclado', 'Acessórios', 600.00, 30, 'KeyMaster'),
('Monitor', 'Informática', 1200.00, 15, 'ViewTech'),
('Cadeira Gamer', 'Móveis', 950.00, 8, 'ComfortPlus'),
('Headset', 'Acessórios', 300.00, 25, 'SoundX'),
('Smartphone', 'Celulares', 2500.00, 20, 'MobileWorld'),
('Webcam Full HD', 'Acessórios', 400.00, 18, 'VisionTech'); 

SELECT * FROM ecommerce; 

SELECT * FROM ecommerce WHERE preco > 500; 
SELECT * FROM ecommerce WHERE  preco < 500; 

UPDATE ecommerce
SET preco = 450.00
WHERE id = 8; 

SELECT * FROM ecommerce WHERE id = 8;