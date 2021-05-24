create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar (255),
tipo boolean not null,
primary key (id)
);

insert tb_categoria (descricao,tipo) values ("Hidraulica",true);
insert tb_categoria (descricao,tipo) values ("Elétrica",true);
insert tb_categoria (descricao,tipo) values ("Construção",true);
insert tb_categoria (descricao,tipo) values ("pneumatica",true);
insert tb_categoria (descricao,tipo) values ("outros",true);

select * from tb_categoria;

create table tb_produtos (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal(5,2) not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Mangueira",05.00,3,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Caixa da agua",200.00,1,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Cimento",10.00,12,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Registro",20.00,4,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Lona",30.00,1,5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Fios",15.00,2,2);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Areia",10.00,10,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Borracha",15.00,6,4);

select * from tb_produtos;

select * from tb_produtos where preco>50.00;
select * from tb_produtos where preco between 03.00 and 60.00;
select * from tb_produtos where nome like "%c%";
select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtProduto, tb_produtos.categoria_id, tb_categoria.descricao from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;
