create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
marca varchar (255) not null,
categoria varchar(255) not null,
tamanho varchar(255) not null,
primary key (id)
);

insert into tb_categoria(marca, categoria, tamanho) values ("neusa", "aspirina", "cartela G");
insert into tb_categoria(marca, categoria, tamanho) values ("pampers", "fraldas", "tamanho G");
insert into tb_categoria(marca, categoria, tamanho) values ("loreal", "cosméticos", "tamanho p");
insert into tb_categoria(marca, categoria, tamanho) values ("vick", "chá", "sache m");
insert into tb_categoria(marca, categoria, tamanho) values ("dip", "aspirina", "cartela G");

select * from tb_categoria;

create table tb_produtos(
id bigint auto_increment,
nome varchar (255) not null,
preco bigint not null,
quantidade bigint not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_produtos(nome, preco, quantidade, categoria_id) values ("neusadina", 12, 3, 1);
insert tb_produtos(nome, preco, quantidade, categoria_id) values ("pampers", 45, 1, 2);
insert tb_produtos(nome, preco, quantidade, categoria_id) values ("shampoo", 20, 2, 3);
insert tb_produtos(nome, preco, quantidade, categoria_id) values ("vick purena", 5, 5, 4);
insert tb_produtos(nome, preco, quantidade, categoria_id) values ("dipirona", 8, 1, 1);
insert tb_produtos(nome, preco, quantidade, categoria_id) values ("clear man", 37, 1, 3);
insert tb_produtos(nome, preco, quantidade, categoria_id) values ("dorflex", 15, 4, 1);
insert tb_produtos(nome, preco, quantidade, categoria_id) values ("batom", 7, 1, 3);

select * from tb_produtos;
select * from tb_produtos where preco >50;
select * from tb_produtos where preco between 3 and 60;
select * from tb_produtos where nome like "b%";

select tb_produtos.nome, tb_produtos.preco, tb_produtos.quantidade, tb_categoria.categoria from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

