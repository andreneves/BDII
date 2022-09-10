use bd3;

create table vendas (
	id int(11) primary key auto_increment,
    produto varchar(255),
    quantidade int(11),
    data_venda date
);

insert into vendas (produto, quantidade, data_venda) 
values ('Audi TT', 2, '2022-06-10');


