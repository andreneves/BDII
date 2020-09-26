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

-- RENAME TABLE
RENAME TABLE clientes TO Meus_Clientes;

-- DROP TABLE NomeDaTabela;
DROP TABLE clientes; -- deleta a tabela

 -- limpa todos os dados, mas preserva a estrutura da tabela
TRUNCATE TABLE clientes;

