-- BDIIA07

DROP DATABASE bd2;
CREATE DATABASE bd2;

USE bd2;


-- OBS:
-- Para verficar as modificações na tabela do banco de dados
SHOW COLUMNS FROM alunos;


-- index
-- usado para otimizar consultas
-- perde desempenho na inserção e atualização

CREATE TABLE alunos (
    id int PRIMARY KEY auto_increment,
    nome varchar(255) NOT NULL,
    cidade varchar(255) NOT NULL,
    idade int
); 


-- criacao
CREATE INDEX idx_nome
ON alunos (nome); 


-- drop
ALTER TABLE alunos
DROP INDEX idx_nome; 