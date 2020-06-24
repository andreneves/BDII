-- BDIIA06

DROP DATABASE bd2;
CREATE DATABASE bd2;

USE bd2;

-- Restrições
-- Constraints
-- As restrições são usadas para limitar o tipo de dados que pode entrar em uma tabela. Isso garante a precisão e a confiabilidade dos dados na tabela. Se houver alguma violação entre a restrição e a ação dos dados, a ação será abortada.
-- Podem ser especificadas na criação ou inseridas na alteração da estrutura de uma tabela.

-- São retrições: 
-- NOT NULL - garante que uma coluna não possa ter um valor NULL
-- UNIQUE - Garante que todos os valores em uma coluna sejam diferentes
-- PRIMARY KEY  - Uma combinação de NOT NOT NULL e UNIQUE. Identifica exclusivamente cada linha em uma tabela
-- FOREIGN KEY  - Identifica exclusivamente uma linha / registro em outra tabela
-- CHECK - Garante que todos os valores em uma coluna satisfaçam uma condição específica
-- DEFAULT - Define um valor padrão para uma coluna quando nenhum valor é especificado
-- INDEX - Usado para criar e recuperar dados do banco de dados muito rapidamente


-- OBS:
-- Para verficar as modificações na tabela do banco de dados
SHOW COLUMNS FROM alunos;




-- CHECK 
-- É usada para limitar os valores de uma coluna.
-- Pode ser aplicada em uma coluna ou tabela.

-- criacao

-- uma coluna
CREATE TABLE alunos (
    id int PRIMARY KEY auto_increment,
    nome varchar(255) NOT NULL,
    cidade varchar(255) NOT NULL,
    idade int,
    CHECK (idade >= 18)
); 

-- varias colunas
CREATE TABLE alunos (
    id int PRIMARY KEY auto_increment,
    nome varchar(255) NOT NULL,
    cidade varchar(255) NOT NULL,
    idade int,
    CONSTRAINT CHK_Alunos CHECK (idade >= 18 AND cidade = 'Rio de Janeiro')
); 


-- alteracao
CREATE TABLE alunos (
    id int PRIMARY KEY auto_increment,
    nome varchar(255) NOT NULL,
    cidade varchar(255) NOT NULL,
    idade int
); 

-- uma coluna
ALTER TABLE alunos
ADD CHECK (idade >= 18);

-- varias colunas
ALTER TABLE alunos
ADD CONSTRAINT CHK_Alunos CHECK (idade >= 18 AND cidade = 'Rio de Janeiro');

-- drop
ALTER TABLE alunos
DROP CHECK CHK_Alunos; 


-- ------------------------------------------------------------------------------------------------------------------

-- DEFAULT
-- valor padrão da coluna
-- o campo é preenchido automaticamente caso não seja declarado um valor

-- criação
CREATE TABLE alunos (
    id int PRIMARY KEY auto_increment,
    nome varchar(255) NOT NULL,
    cidade varchar(255) NOT NULL DEFAULT 'Rio de Janeiro',
    idade int
); 


-- na alteração
CREATE TABLE alunos (
    id int PRIMARY KEY auto_increment,
    nome varchar(255) NOT NULL,
    cidade varchar(255) NOT NULL,
    idade int
); 


ALTER TABLE alunos
ALTER cidade SET DEFAULT 'Rio de Janeiro'; 

-- drop
ALTER TABLE alunos
ALTER cidade DROP DEFAULT; 


-- ------------------------------------------------------------------------------------------------------------------

-- index
-- usado para otimizar consultas
-- perde desempenho na inserção e atualização

CREATE TABLE alunos (
    id int PRIMARY KEY auto_increment,
    nome varchar(255) NOT NULL,
    cidade varchar(255) NOT NULL DEFAULT 'Rio de Janeiro',
    idade int
); 


-- criacao
CREATE INDEX idx_nome
ON alunos (nome); 


-- drop
ALTER TABLE alunos
DROP INDEX idx_nome; 