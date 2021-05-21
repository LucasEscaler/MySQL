create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tamanho varchar(255) not null,
doce_ou_salgada varchar(255) not null,
com_borda_ou_sem varchar(255) not null,
primary key (id)
);

insert into tb_categoria(tamanho, doce_ou_salgada, com_borda_ou_sem) values ("Grande", "Salgada", "Com borda");
insert into tb_categoria(tamanho, doce_ou_salgada, com_borda_ou_sem) values ("Média", "Doce", "Sem borda");
insert into tb_categoria(tamanho, doce_ou_salgada, com_borda_ou_sem) values ("Pequena", "Salgada", "Com borda");
insert into tb_categoria(tamanho, doce_ou_salgada, com_borda_ou_sem) values ("Média", "Salgada", "Sem borda");
insert into tb_categoria(tamanho, doce_ou_salgada, com_borda_ou_sem) values ("Grande", "Doce", "Com borda");

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
sabores varchar (255) not null,
preço decimal not null,
taxaDeEntrega bigint not null,
PontoDeAssadura varchar (255),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_pizza(sabores, preço, taxaDeEntrega, pontoDeAssadura, categoria_id) values ("Mussarela", 25.00, 10, "Bem assada", 1);
insert tb_pizza(sabores, preço, taxaDeEntrega, pontoDeAssadura, categoria_id) values ("Mussarela e metade Atum", 37.00, 5, "Bem assada", 1);
insert tb_pizza(sabores, preço, taxaDeEntrega, pontoDeAssadura, categoria_id) values ("Calabresa", 28.00, 2, "Bem assada", 2);
insert tb_pizza(sabores, preço, taxaDeEntrega, pontoDeAssadura, categoria_id) values ("Strogonof", 50.00, 0, "Bem assada", 3);
insert tb_pizza(sabores, preço, taxaDeEntrega, pontoDeAssadura, categoria_id) values ("Picanha", 60.00, 0, "Mal assada", 3);
insert tb_pizza(sabores, preço, taxaDeEntrega, pontoDeAssadura, categoria_id) values ("Bacon", 33.00, 0, "Bem assada", 4);
insert tb_pizza(sabores, preço, taxaDeEntrega, pontoDeAssadura, categoria_id) values ("Atum", 30.00, 0, "Bem assada", 4);
insert tb_pizza(sabores, preço, taxaDeEntrega, pontoDeAssadura, categoria_id) values ("Frango com catupiry", 35.00, 10, "Bem assada", 1);

select * from tb_pizza;

select * from tb_pizza where preço >45.00;
select * from tb_pizza where preço between 29.00 and 60.00;
select * from tb_pizza where sabores like "%c%";

select tb_pizza.sabores, tb_pizza.preço, tb_pizza.taxaDeEntrega, tb_pizza.pontoDeAssadura, tb_pizza.sabores from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
