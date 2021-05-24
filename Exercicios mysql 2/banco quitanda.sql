create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (descricao, ativo) values ("Verduras",true);
insert tb_categoria (descricao, ativo) values ("Legumes",true);
insert tb_categoria (descricao, ativo) values ("Frutas",true);
insert tb_categoria (descricao, ativo) values ("Frutas exóticas",true);
insert tb_categoria (descricao, ativo) values ("Frutas importadas",true);
insert tb_categoria (descricao, ativo) values ("Frutas nacionais",true);

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

insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Maçã",05.00,3,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Alface",01.99,1,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Banana",07.00,12,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Repolho",03.00,4,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Açaí",40.00,1,5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Couve",03.00,2,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Manga",06.00,10,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Pitaia",70.00,6,4);

select * from tb_produtos;

select * from tb_produtos where preco>50.00;
select * from tb_produtos where preco between 03.00 and 60.00;
select * from tb_produtos where nome like "%c%";
select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtProduto, tb_produtos.categoria_id, tb_categoria.descricao from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;
