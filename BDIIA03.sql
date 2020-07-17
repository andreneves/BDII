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

-- ALTER TABLE

-- ADD
-- ALTER TABLE NomeDaTabela
-- ADD NomeDaColuna tipo;

ALTER TABLE produtos
ADD descricao TEXT;

ALTER TABLE produtos
ADD valor float;

ALTER TABLE produtos
ADD observacao varchar(80);


-- DROP COLUMN
-- ALTER TABLE NomeDaTabela
-- DROP COLUMN NomeDaColuna;
ALTER TABLE produtos
DROP COLUMN descricao;


-- MODIFY COLUMN 
-- ALTER TABLE NomeDaTabela
-- MODIFY COLUMN NomeDaColuna tipo;
ALTER TABLE produtos
MODIFY COLUMN observacao varchar(255);


-- CHANGE
-- ALTER TABLE NomeDaTabela
-- MODIFY COLUMN NomeDaColuna NovoNomeDaColuna tipo;
ALTER TABLE produtos 
CHANGE observacao obs varchar(255);