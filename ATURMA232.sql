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