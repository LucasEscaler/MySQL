-- criar Banco de dados
create database db_escola;

-- acessar o banco de dados
use db_escola;

-- criar tabela
create table tb_alunos(
id bigint auto_increment,
nome varchar(255) not null,
idade bigint not null,
ano bigint not null,
nota decimal not null,
primary key (id)
);

-- inserir dados na tabela
insert into tb_alunos(nome, idade, ano, nota) values ("Marcos" , 16, 9 , 8.0);
insert into tb_alunos(nome, idade, ano, nota) values ("Emilly" , 17, 9 , 10.0);
insert into tb_alunos(nome, idade, ano, nota) values ("Julia" , 18, 9 , 9.0);
insert into tb_alunos(nome, idade, ano, nota) values ("Chris" , 12, 6 , 6.0);
insert into tb_alunos(nome, idade, ano, nota) values ("Steve" , 18, 9 , 7.0);
insert into tb_alunos(nome, idade, ano, nota) values ("Mike" , 17, 9 , 4.0);
insert into tb_alunos(nome, idade, ano, nota) values ("Igor" , 14, 8 , 10.0);
insert into tb_alunos(nome, idade, ano, nota) values ("Mark" , 21, 9 , 2.0);

-- visualizar dados
select * from tb_alunos;
select * from tb_alunos where nota>7;
select * from tb_alunos where nota<7;

update tb_alunos set idade =18 where id=2;