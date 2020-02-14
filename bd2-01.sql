-- BANCO DE DADOS - 2

-- CREATE DATABASE NomeDoBancoDeDados; 
CREATE DATABASE bd2;

-- DROP DATABASE NomeDoBancoDeDados; 
DROP DATABASE bd2;

-- TABELA
/*
CREATE TABLE NomeDaTabela (
    coluna1 tipo,
    coluna1 tipo,
    coluna1 tipo,
   ....
);
*/

CREATE TABLE cliente (
    id int,
    nome varchar(255),
    sobrenome varchar(255),
    endereco varchar(255),
    cidade varchar(255)
);

-- DROP TABLE NomeDaTabela; 
DROP TABLE cliente; -- deleta a tabela

TRUNCATE TABLE cliente; -- limpa todos os dados, mas preserva a estrutura da tabela



CREATE TABLE produtos (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome varchar(80) NOT NULL
)



-- ALTER TABLE

-- ADD
-- ALTER TABLE NomeDaTabela
-- ADD NomeDaColuna tipo; 

ALTER TABLE produtos
ADD descricao TEXT;

ALTER TABLE produtos
ADD valor float;

-- DROP COLUMN
-- ALTER TABLE NomeDaTabela
-- DROP COLUMN NomeDaColuna; 
ALTER TABLE produtos
DROP COLUMN descricao;

-- MODIFY
ALTER TABLE produtos
MODIFY COLUMN descricao varchar(255);
