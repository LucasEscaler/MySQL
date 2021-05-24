create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint(5) auto_increment,
modelo varchar (255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (modelo, ativo) values ("Profissionalizante",true);
insert tb_categoria (modelo, ativo) values ("Técnico",true);
insert tb_categoria (modelo, ativo) values ("Graduação",true);
insert tb_categoria (modelo, ativo) values ("Complementar",true);
insert tb_categoria (modelo, ativo) values ("Pós Graduação",true);
insert tb_categoria (modelo, ativo) values ("Auto Ajuda",true);

select * from tb_categoria;

create table tb_produtos (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal(5,2) not null,
horas int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_produtos (nome, preco, horas, categoria_id) values ("Curso de java",200.00,360,2);
insert tb_produtos (nome, preco, horas, categoria_id) values ("Curso de C++",200.00,300,2);
insert tb_produtos (nome, preco, horas, categoria_id) values ("Auxiliar de laboratório",400,500,1);
insert tb_produtos (nome, preco, horas, categoria_id) values ("Auxiliar adm",150.00,50,1);
insert tb_produtos (nome, preco, horas, categoria_id) values ("Medicina",900.00,5000,3);
insert tb_produtos (nome, preco, horas, categoria_id) values ("Costura",60.00,10,6);
insert tb_produtos (nome, preco, horas, categoria_id) values ("Coleta de sangue",50.00,8,4);
insert tb_produtos (nome, preco, horas, categoria_id) values ("Bons pensamentos",20.00,6,6);

select * from tb_produtos;

select * from tb_produtos where preco>50.00;
select * from tb_produtos where preco between 03.00 and 60.00;
select * from tb_produtos where nome like "%J%";
select tb_produtos.nome, tb_produtos.preco, tb_produtos.horas, tb_produtos.categoria_id, tb_categoria.modelo from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;
