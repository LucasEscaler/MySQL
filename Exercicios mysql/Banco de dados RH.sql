-- criar Banco de dados
create database db_rh;

-- acessar o banco de dados
use db_rh;

-- criar tabela
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade bigint not null,
funcao varchar(255) not null,
salario decimal not null,
primary key (id)
);

-- inserir dados na tabela
insert into tb_funcionarios(nome, idade, funcao, salario) values ("junior" , 20, "auxiliar adm", 1000);
insert into tb_funcionarios(nome, idade, funcao, salario) values ("julia" , 19, "analista", 3000);
insert into tb_funcionarios(nome, idade, funcao, salario) values ("felipe" , 30, "supervisor de rh", 5000);
insert into tb_funcionarios(nome, idade, funcao, salario) values ("bianca" , 20, "assistente de rh", 2000);

-- visualizar dados
select * from tb_funcionarios;
select * from tb_funcionarios where salario>2000;
select * from tb_funcionarios where salario<2000;

-- alterar dados na tabela

update tb_funcionarios set idade=21 where id=1
