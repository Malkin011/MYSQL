create database db_RH;

use db_RH;

create table empresa (
	cpf bigint not null,
    nome varchar(255) not null,
    email varchar(255) not null,
    celular bigint not null,
    salario decimal (7,2) not null,
	primary key (cpf) 
);

insert into empresa (cpf, nome, email, celular, salario) value (44589895757, "Obeslico", "obeslico-poderoso@gmail.com", 11981567777, 2000.00);
insert into empresa (cpf, nome, email, celular, salario) value (44889895757, "Malkin", "malkin-brabo@gmail.com", 11981567887, 4000.00);
insert into empresa (cpf, nome, email, celular, salario) value (44389894757, "Flavio", "flavio-poderoso@gmail.com", 11984467777, 3000.00);
insert into empresa (cpf, nome, email, celular, salario) value (44589895957, "Gustavo", "gugu_zika@gmail.com", 11981557777, 3400.00);
insert into empresa (cpf, nome, email, celular, salario) value (46689895757, "Malvadao", "mengao_malvadao@gmail.com", 11922567777, 1200.00);

select * from empresa where salario > 2000;
select * from empresa where salario < 2000;

update empresa set salario = 2500.00 where cpf = 44589895757;
