-- BDII - 2022/1

-- criar um banco de dados

create database bd2;

-- drop database bd2;

use bd2;

create table moveis (
	id int(11) primary key auto_increment,
    nome varchar(255)
);

select * from moveis;

-- excluir tabela
drop table moveis;


-- renomear a tabela
rename table moveis to meus_moveis;


select * from meus_moveis;

insert into meus_moveis (nome) values ('André');
insert into meus_moveis (nome) values ('Bruno');
insert into meus_moveis (nome) values ('Rafaela');
insert into meus_moveis (nome) values ('Vitor');
insert into meus_moveis (nome) values ('Daniel');

-- verifica o valor do auto_incremento de uma tabela
SELECT AUTO_INCREMENT FROM information_schema.tables
WHERE table_name = 'meus_moveis' AND table_schema = 'bd2';

-- deleta registros de uma tabela
DELETE from meus_moveis
where id = 4;

-- limpa toda a tabela
TRUNCATE TABLE meus_moveis;


