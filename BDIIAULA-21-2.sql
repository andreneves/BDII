use bd2;

/*
CREATE TABLE NomeDaTabela (
	nome_do_campo1 tipo (tamanho),
	nome_do_campo2 tipo (tamanho),
	nome_do_campo3 tipo (tamanho)
);
*/

CREATE TABLE clientes (
	id int(11) auto_increment primary key,
    nome varchar(255),
    endereco varchar(255),
    cidade varchar(100),
    uf char(2)
);

insert into clientes (nome, endereco, cidade, uf)
values ('Andre', 'Rua 1', 'rio', 'RJ');
insert into clientes (nome, endereco, cidade, uf)
values ('Rodrigo', 'Rua 2', 'rio', 'RJ');
insert into clientes (nome, endereco, cidade, uf)
values ('Rafael', 'Rua 2', 'sampa', 'SP');

select * from clientes;

-- renomear tabela
RENAME TABLE clientes TO Meus_Clientes;

-- select * from Meus_Clientes;

-- excluir tabela
DROP TABLE clientes;


-- limpa todos os dados da tabela e volta o auto incremento para 1




insert into clientes (id, nome, endereco, cidade, uf)
values (6,'Teste Seis', 'Rua 2', 'sampa', 'SP');

insert into clientes (nome, endereco, cidade, uf)
values ('Teste Sete', 'Rua 2', 'sampa', 'SP');

insert into clientes (id, nome, endereco, cidade, uf)
values (1000,'Teste Mil', 'Rua 2', 'sampa', 'SP');

insert into clientes (nome, endereco, cidade, uf)
values ('Teste Mil e 1', 'Rua 2', 'sampa', 'SP');

SHOW COLUMNS FROM clientes;

-- curiosidade
-- UUID (123e4567-e89b-12d3-a456-426655440000)


create table produtos (
	id int primary key auto_increment,
    nome varchar(80)
);


insert into produtos (nome) values ('camisa');
insert into produtos (nome) values ('calça');
insert into produtos (nome) values ('meia');


alter table produtos
add descricao text;

alter table produtos
add valor float;

alter table produtos
add observacao varchar(80);

SHOW COLUMNS FROM produtos;

select * from produtos;

-- EXCLUIR UM CAMPO

alter table produtos
DROP COLUMN descricao;


-- Modificar um campo
alter table produtos
modify column observacao varchar(255);


alter table produtos
modify column observacao TEXT;

-- teste convertendo de float para inteiro
-- converte, mas corta as casas decimais
insert into produtos (nome, valor, observacao)
values ('Timer', 10.34, 'observacao');

alter table produtos
modify column valor int(11);

select * from produtos;

-- se inserirmos um valor com casa decimal acima de 5 ele arredonda para o inteiro superior.
-- No exemplo ele arredondou para 21
insert into produtos (nome, valor, observacao)
values ('Relógio', 20.72, 'Uma grande observacao para testar o que acontece quando inserimos um campo grande e depois convertemos para um campo menor');

-- se inserirmos uma string maior e depois convertermos o campo para 
-- um campo texto menor ele vai cortar o conteúdo para o novo tamanho.
alter table produtos
modify column observacao varchar(50);

-- ------------------------------------------------------------

use bd2;

-- CONSTRAINT - RESTRIÇÕES

/*
2 maneiras de inserir
- Na criação da tabela (create table)
- Na alteração da tabela (alter table)
*/

-- NOT NULL

show tables from bd2;

-- not null na criacao
create table animais (
	id int primary key auto_increment,
    nome varchar(255) not null
);

insert into animais (nome) values ('Gato');
insert into animais (nome) values (NULL);

drop table animais;

-- NOT NULL no Alter table
create table animais (
	id int primary key auto_increment,
    nome varchar(255)
);

alter table animais
modify column nome varchar(255) not null;

insert into animais (nome) values ('Gato');
insert into animais (nome) values (NULL);

show columns from animais;

-- refazer colocando primary key e not null
create table animais (
	id int,
    nome varchar(255)
);

alter table animais
modify column nome varchar(255) not null;

ALTER TABLE animais
ADD CONSTRAINT PRIMARY KEY (id);

ALTER TABLE animais
MODIFY COLUMN id int(11) auto_increment;

insert into animais (nome) values ('Gato');
insert into animais (nome) values ('Cachorro');
insert into animais (nome) values ('Papagaio');

select * from animais;


-- CRIACAO UNIQUE

CREATE TABLE alunos (
	id int primary key auto_increment,
    nome varchar(255) not null,
    email varchar(191) not null,
    UNIQUE(email)
);

insert into alunos (nome, email) values 
('André Neves', 'andr@andr.com.br');
insert into alunos (nome, email) values 
('Jaqueson', 'jjj@andr.com.br');

-- não vai inserir, pois já existe este email
insert into alunos (nome, email) values 
('Arnaldo Natividade', 'andr@andr.com.br');

 drop table alunos;
 
-- NA ALTERACAO - UNIQUE

CREATE TABLE alunos (
	id int primary key auto_increment,
    nome varchar(255) not null,
    email varchar(191) not null
);

insert into alunos (nome, email) values 
('André Neves', 'andr@andr.com.br');
insert into alunos (nome, email) values 
('Jaqueson', 'jjj@andr.com.br');
insert into alunos (nome, email) values 
('Arnaldo Natividade', 'andr@andr.com.br');

select * from alunos;

delete from alunos
where id = 3;

ALTER TABLE alunos
ADD UNIQUE (email);

--

create database bd2;

use bd2;

CREATE TABLE usuarios (
	id int,
    nome varchar(255) NOT NULL,
    email varchar(255) NOT NULL
);

SHOW COLUMNS FROM usuarios;

ALTER TABLE usuarios
ADD PRIMARY KEY(id);

DROP TABLE usuarios;

insert into usuarios (id, nome, email) 
values (1, 'André', 'andr@andr.com.br');

insert into usuarios (id, nome, email) 
values (2, 'Bruno', 'andr2@andr.com.br');

insert into usuarios (id, nome, email) 
values (2, 'Ricardo', 'andr3@andr.com.br');

insert into usuarios (id, nome, email) 
values (NULL, 'Rodrigo', 'andr4@andr.com.br');

select * from usuarios;

UPDATE usuarios
SET
id = 3
WHERE
nome = 'Ricardo';

UPDATE usuarios
SET
id = 4
WHERE
nome = 'Rodrigo';

ALTER TABLE usuarios
MODIFY COLUMN id int(11) auto_increment;

insert into usuarios (nome, email) 
values ('Rafael', 'andr5@andr.com.br');

-- FORENGN KEY

create table categorias (
	id int(11) primary key auto_increment,
    nome varchar(255) not null
);

create table produtos (
	id int(11) primary key auto_increment,
    nome varchar(255) not null,
    valor float not null,
    categoria_id int(11) not null,
    foreign key (categoria_id) references categorias(id)
);

insert into categorias (nome) values ('Eletronicos');
insert into categorias (nome) values ('Informática');
insert into categorias (nome) values ('Acessórios');

select * from categorias;

insert into produtos (nome, valor, categoria_id) 
values ('mouse', 100, 1);
insert into produtos (nome, valor, categoria_id) 
values ('teclado', 200, 2);
insert into produtos (nome, valor, categoria_id) 
values ('Som JBL', 1500, 1);
insert into produtos (nome, valor, categoria_id) 
values ('Timer', 100, 3);
insert into produtos (nome, valor, categoria_id) 
values ('HD 1TB', 500, 2);
insert into produtos (nome, valor, categoria_id) 
values ('Webcam', 900, 3);

select * from produtos;

