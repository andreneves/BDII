-- criacao de um banco de dados
CREATE DATABASE bd2;

-- exclusao de um banco de dados
-- DROP DATABASE bd2;

USE bd2;

CREATE TABLE categorias (
	id int(11) primary key auto_increment,
    nome varchar(255) not null
);


insert into categorias (nome) values ('Livros');
insert into categorias (nome) values ('Revistas');
insert into categorias (nome) values ('Bolsas');

select * from categorias;

insert into categorias (id, nome) values (51, 'Camisa');
insert into categorias (nome) values ('Bermuda');

insert into categorias (id, nome) values (51, 'Toalha');
insert into categorias (id, nome) values (null, 'Toalha');


insert into categorias (nome) values (null);

-- -----------------------------------------------

show columns from categorias;


SELECT AUTO_INCREMENT FROM information_schema.tables
WHERE table_name = 'categorias' AND table_schema = 'bd2';


RENAME TABLE categorias TO tipos;

select * from tipos;

-- deletar tabela
DROP TABLE tipos;

