-- BDIIA02

DROP DATABASE bd2;
CREATE DATABASE bd2;

USE bd2;


-- TABELA
/*
CREATE TABLE NomeDaTabela (
    coluna1 tipo,
    coluna1 tipo,
    coluna1 tipo,
   ....
);
*/


CREATE TABLE clientes (
    id int,
    nome varchar(100),
    sobrenome varchar(100),
    endereco varchar(255),
    cidade varchar(50),
    UF varchar(2)
);

-- DROP TABLE NomeDaTabela;
DROP TABLE clientes; -- deleta a tabela

TRUNCATE TABLE clientes; -- limpa todos os dados, mas preserva a estrutura da tabela



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
