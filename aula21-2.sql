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

select * from Meus_Clientes;

-- excluir tabela



SHOW COLUMNS FROM clientes;

-- curiosidade
-- UUID (123e4567-e89b-12d3-a456-426655440000)