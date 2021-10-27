create database db_generation_game_online2;

use db_generation_game_online2;

create table tb_classe(
	id_classe int not null auto_increment,
	nome varchar(35),
	ataque int not null,
	defesa int not null,
	magia int not null,
	primary key (id_classe)
);
insert into tb_classe (nome, ataque, defesa, magia) values ("Guerreiro", 700, 600, 900);
insert into tb_classe (nome, ataque, defesa, magia) values ("Soldado", 300, 50, 0);
insert into tb_classe (nome, ataque, defesa, magia) values ("Capitão", 550, 100, 0);
insert into tb_classe (nome, ataque, defesa, magia) values ("Realeza", 150, 25, 500);
insert into tb_classe (nome, ataque, defesa, magia) values ("Cabo", 500, 150, 0);

select * from tb_classe;

create table tb_personagem (
	id_char int auto_increment,
	nome varchar (35),
	nivel int not null,
	armas varchar (35),
	velocidade int not null,
	fk_classe int not null,
	primary key (id_char),
	foreign key (fk_classe) references tb_classe(id_classe)
);

insert into tb_personagem (nome, nivel, armas, velocidade, fk_classe) values ("Mikasa", 80, "Lamina", 80, 2);
insert into tb_personagem (nome, nivel, armas, velocidade, fk_classe) values ("Sasha", 35, "Arco e Flecha", 50, 2);
insert into tb_personagem (nome, nivel, armas, velocidade, fk_classe) values ("Annie", 80, "Lamina e Virar titã", 80, 1);
insert into tb_personagem (nome, nivel, armas, velocidade, fk_classe) values ("Historia", 60, "Lamina e Sangue Real", 40, 4);
insert into tb_personagem (nome, nivel, armas, velocidade, fk_classe) values ("Eren", 70, "Lamina e Virar titã", 60, 2);
insert into tb_personagem (nome, nivel, armas, velocidade, fk_classe) values ("Levi", 95, "Lamina", 95, 5);
insert into tb_personagem (nome, nivel, armas, velocidade, fk_classe) values ("Reiner", 70, "Lamina e Virar Titã", 50, 1);
insert into tb_personagem (nome, nivel, armas, velocidade, fk_classe) values ("Zeke", 85, "Virar titã", 90, 3);

select * from tb_personagem;

select tb_personagem.nome as "personagem", tb_classe.ataque as "ataque"
from tb_personagem inner join tb_classe
on tb_classe.id_classe = tb_personagem.fk_classe
where tb_classe.ataque > 450;
select * from tb_classe where Ataque > 30;

select tb_personagem.nome as "player", tb_classe.defesa as "defesa"
from tb_personagem join tb_classe
on tb_classe.id_classe = tb_personagem.fk_classe
where tb_classe.defesa between 49 and 151;

select nome from tb_personagem where nome like "%a%";

select tb_personagem.nome as "Nome", tb_classe.nome as "Classe"
from tb_personagem join tb_classe
on tb_classe.id_classe = tb_personagem.fk_classe
where tb_classe.id_classe = 4;
