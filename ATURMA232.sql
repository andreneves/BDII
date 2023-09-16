-- Comentário de uma linha
/*
Comentário de 
mais de uma linha
*/

-- Criando um banco de dados
create database bd2;

-- Destruir um banco de dados
-- drop database bd2;

-- Dizendo qual banco de dados vai ser usado
use bd2;

-- criando uma tabela
create table produtos (
	id int(11) primary key auto_increment,
    nome varchar(255) not null,
    quantidade int(11),
    preco float(8,2)
);


-- toda chave primária é única e not null (restricao de integridade)
-- auto_increment - acrescenta automaticamente um numero a cada registro criado
-- not null - Não pode ser nulo

select * from produtos;

-- mostra um descritivo dos campos de uma tabela
show columns from produtos;

-- inserir valores na tabela
insert into produtos (nome, quantidade, preco) 
values ('Detergente', 10, 15.54);
insert into produtos (nome, quantidade, preco) 
values ('Sabão', 15, 20.6);
insert into produtos (nome, quantidade, preco) 
values ('Esponja', 20, 5.6);

-- select 
select * from produtos;

select id, nome from produtos;

select id, nome 
from produtos 
where id = 2;

-- atualizar registro
update produtos
set nome = 'Sabão em pedra'
where id = 2;

update produtos
set 
nome = 'Esponja de aço',
quantidade = 40
where id = 3;

-- deletando registros
delete from produtos
where id = 3;

-- Renomar uma tabela

create table estudantes (
	id int(11) primary key auto_increment,
    nome varchar(255) not null
);

rename table estudantes to alunos;


-- Destroi uma tabela
drop table estudantes;

-- TRUNCATE - exclui todas as informações da tabela e volta o auto_incremente para 1
select * from produtos;

delete from produtos where id >= 1;
-- VS
truncate table produtos;

-- para saber o valor do auto_increment
SELECT AUTO_INCREMENT FROM information_schema.tables
WHERE table_name = 'produtos' AND table_schema = 'bd2';

-- -------------
-- ALTER TABLE
-- -------------

-- Alterar a estrutura de uma tabela - Acrescentando, modificando ou excluindo colunas

create table servicos (
	id int(11) primary key auto_increment,
    nome varchar(255) not null
);


-- ADD - adicionar coluna
alter table servicos
add descricao text;

alter table servicos
add preco float(8,2);

-- inserido de propósito errado
alter table servicos
add cor varchar(255);

-- DROP - excluir uma coluna
alter table servicos
drop cor;

-- MODIFY - modificar coluna de uma tabela
alter table servicos
modify column descricao varchar(255);

show columns from servicos;

-- simulando um erro de modificacao de coluna - INICIO

insert into servicos (nome, descricao, preco)
values ('Pintura', 'Uma pintura muito bem feita e com ótimo resultado', 500);

alter table servicos
modify column descricao varchar(20);

alter table servicos
modify column preco int(11);

insert into servicos (nome, descricao, preco)
values ('Reforma', 'Uma reforma', 150.45);

-- simulando um erro de modificacao de coluna - FIM
-- teste
select * from servicos;

-- criptografia

SELECT SHA2('abc', 224);