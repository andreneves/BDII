-- AULA01 

-- comentário de uma linha
/*
comentario
duas linhas
*/

-- criacao de banco de dados
create database bd2;

use bd2;

create table produtos (
	id int auto_increment primary key,
    nome varchar(255)
);