-- BDIIA03

DROP DATABASE bd2;
CREATE DATABASE bd2;

USE bd2;

CREATE TABLE produtos (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome varchar(80) NOT NULL
);

-- inserindo dados para testar
insert into (nome) values ('camisa');
insert into (nome) values ('calça');
insert into (nome) values ('meia');

-- selecionando dados para testar
select * from produtos;




-----------------
-- ALTER TABLE --
-----------------

-- Explicação: ALTER TABLE é responsável por modificar a estrutura da tabela, podendo acrescentar, excluir e alterar campos.
-- OBS.: Para fins didáticos vamos criar a tabela abaixo para poder testar o conceito.

-- Não esqueça de conferir o resultado de cada comando na estrutura de sua tabela utilizando o comando:
-- SHOW COLUMNS FROM nomeDaTabela



---------
-- ADD --
---------

-- Explicação: Adiciona um campo a tabela.

-- Sintaxe: 
-- ALTER TABLE nomeDaTabela
-- ADD NomeDaColuna tipo;

ALTER TABLE produtos
ADD descricao TEXT;

ALTER TABLE produtos
ADD valor float;

ALTER TABLE produtos
ADD observacao varchar(80);



-----------------
-- DROP COLUMN --
-----------------

-- Explicação: Destrói um campo da tabela.

-- Sintaxe: 
-- ALTER TABLE NomeDaTabela
-- DROP COLUMN NomeDaColuna;

ALTER TABLE produtos
DROP COLUMN descricao;



-------------------
-- MODIFY COLUMN --
-------------------

-- Explicação: Modifica um campo da tabela

-- Sintaxe: 
-- ALTER TABLE NomeDaTabela
-- MODIFY COLUMN NomeDaColuna tipo;

ALTER TABLE produtos
MODIFY COLUMN observacao varchar(255);



------------
-- CHANGE --
------------

-- Sintaxe: 
-- ALTER TABLE NomeDaTabela
-- MODIFY COLUMN NomeDaColuna NovoNomeDaColuna tipo;

ALTER TABLE produtos 
CHANGE observacao obs varchar(255);