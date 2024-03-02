-- Comentário de uma linha

/*
Comentário de
mais de uma
linha
*/

-- criação de um banco de dados
CREATE DATABASE bd2;

-- excluir um banco de dados
DROP DATABASE bd2;

-- seleciona um banco de dados
USE bd2;

-- criacao de uma tabela
/*
CREATE TABLE nomeDaTabela (
	campo tamanho restricao,
    campo tamanho restricao
);
*/

CREATE TABLE categorias (
	id int(11) primary key auto_increment,
    nome varchar(255) not null
);

select * from categorias;

show columns from categorias;

insert into categorias (nome) values ('Política');
insert into categorias (nome) values ('Cultura');
insert into categorias (nome) values ('Brasil');
 
