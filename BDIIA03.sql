-- BDIIA03

DROP DATABASE bd2;
CREATE DATABASE bd2;

USE bd2;

CREATE TABLE produtos (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome varchar(80) NOT NULL
);

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


-- MODIFY
ALTER TABLE produtos
MODIFY COLUMN observacao varchar(255);