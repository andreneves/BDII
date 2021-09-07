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

