create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
classes varchar(255) not null,
lv bigint,
itemInicial varchar(255) not null,
genero varchar (255) not null,
primary key (id)
);

insert into tb_classes(classes, lv, itemInicial, genero) values ("Guerreiro", 20, "Espada", "masculino");
insert into tb_classes(classes, lv, itemInicial, genero) values ("Arqueiro", 10, "Arco", "masculino");
insert into tb_classes(classes, lv, itemInicial, genero) values ("Ladrão", 7, "faca", "feminino");
insert into tb_classes(classes, lv, itemInicial, genero) values ("Mago", 30, "Cajado", "feminino");
insert into tb_classes(classes, lv, itemInicial, genero) values ("Espadachim", 25, "Espadas", "masculino");
insert into tb_classes(classes, lv, itemInicial, genero) values ("Arqueiro", 23, "arco", "masculino");
insert into tb_classes(classes, lv, itemInicial, genero) values ("Guerreira", 5, "Espada", "feminino");
insert into tb_classes(classes, lv, itemInicial, genero) values ("Arqueira", 21, "arco", "feminino");

select * from tb_classes;

use db_generation_game_online;

create table tb_personagem(
id bigint auto_increment,
nome varchar (255) not null,
ataque bigint not null,
defesa bigint not null,
raça varchar (255),
classes_id bigint,
primary key (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes (id)
);

insert tb_personagem(nome, ataque, defesa, raça, classes_id) values ("Son", 4000, 2000, "humano", 1);
insert tb_personagem(nome, ataque, defesa, raça, classes_id) values ("luke", 2000, 2000, "humano", 2);
insert tb_personagem(nome, ataque, defesa, raça, classes_id) values ("maita", 1000, 1000, "elfa", 3);
insert tb_personagem(nome, ataque, defesa, raça, classes_id) values ("clear", 5000, 5000, "felina", 4);
insert tb_personagem(nome, ataque, defesa, raça, classes_id) values ("zoro", 4000, 4000, "humano", 5);
insert tb_personagem(nome, ataque, defesa, raça, classes_id) values ("lambert", 3000, 1000, "elfo", 6);
insert tb_personagem(nome, ataque, defesa, raça, classes_id) values ("bia", 900, 7000, "humano", 7);
insert tb_personagem(nome, ataque, defesa, raça, classes_id) values ("Sabrina", 4000, 1000, "humano", 8);

select * from tb_personagem;

select * from tb_personagem where ataque >2000;
select * from tb_personagem where defesa between 1000 and 2000;
select * from tb_personagem where nome like "c%";

select tb_personagem.nome, tb_personagem.ataque, tb_personagem.defesa, tb_personagem.raça, tb_classes.classes from tb_personagem inner join tb_classes on tb_classes.id = tb_personagem.classes_id;





 