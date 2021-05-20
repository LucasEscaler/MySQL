-- criar Banco de dados
create database db_ecommerce;

-- acessar o banco de dados
use db_ecommerce;

-- criar tabela
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal not null,
descricao varchar(255),
quantidadeEstoque bigint not null,
primary key (id)
);

-- inserir dados na tabela
insert into tb_produtos(nome, preco, descricao, quantidadeEstoque) values ("sofá" , 4000, "sofá todo em couro", 3);
insert into tb_produtos(nome, preco, descricao, quantidadeEstoque) values ("cama" , 2000, "cama de casal",  1);
insert into tb_produtos(nome, preco, descricao, quantidadeEstoque) values ("fogão" , 900, "fogão 4 bocas", 5);
insert into tb_produtos(nome, preco, descricao, quantidadeEstoque) values ("geladeira" , 6000, "geladeira prata", 2);
insert into tb_produtos(nome, preco, descricao, quantidadeEstoque) values ("TV" , 4000, "tv de 50 polegadas" , 3);
insert into tb_produtos(nome, preco, descricao, quantidadeEstoque) values ("mesa" , 500, "mesa de madeira", 8);
insert into tb_produtos(nome, preco, descricao, quantidadeEstoque) values ("guarda roupa" , 2000, "guarda roupa com portas de correr", 6);
insert into tb_produtos(nome, preco, descricao, quantidadeEstoque) values ("armário" , 400, "todo em pvc", 3);

-- visualizar dados
select * from tb_produtos;
select * from tb_produtos where preco>500;
select * from tb_produtos where preco<500;

-- alterar dados na tabela
update tb_produtos set quantidadeEstoque=1 where id=1;
