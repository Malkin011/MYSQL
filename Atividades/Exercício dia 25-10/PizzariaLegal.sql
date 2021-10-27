create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria (
	id bigint auto_increment,
    tamanho enum ("G", "M", "P"),
	tipo enum ("doce", "salgada"),
    id_pizza bigint,
    
    primary key (id)
);

insert into  tb_categoria (tamanho, tipo) values ("P", "doce");
insert into  tb_categoria (tamanho, tipo) values ("G", "salgada");
insert into  tb_categoria (tamanho, tipo) values ("M", "doce");
insert into  tb_categoria (tamanho, tipo) values ("G", "salgada");
insert into  tb_categoria (tamanho, tipo) values ("M", "doce");

select * from tb_categoria;

create table tb_pizza (
	id_pizza bigint auto_increment,
    sabor varchar (30) not null,
    preco decimal (10,5) check (preco > 0),
    recheio boolean,
	azeitona boolean,
    
    id_categoria bigint,
    
    primary key (id_pizza),
    foreign key(id_categoria) references tb_categoria(id)
    );
    
    insert into tb_pizza (sabor, tamanho, preco, recheio, azeitona, id_categoria) values ("Frango com Catupiry", "M", 23.50, true, true, 2);
    insert into tb_pizza (sabor, tamanho, preco, recheio, azeitona, id_categoria) values ("Frango com Cheddar", "G", 27.50, true, false, 2);
    insert into tb_pizza (sabor, tamanho, preco, recheio, azeitona, id_categoria) values ("4 queijos", "P", 25.00, false, true, 2);
    insert into tb_pizza (sabor, tamanho, preco, recheio, azeitona, id_categoria) values ("Calabresa", "M", 23.00, false, false, 2);
    insert into tb_pizza (sabor, tamanho, preco, recheio, azeitona, id_categoria) values ("Pepperoni", "M", 30.50, false, true, 2);
    insert into tb_pizza (sabor, tamanho, preco, recheio, azeitona, id_categoria) values ("Toscana", "G", 33.50, true, true, 2);
    insert into tb_pizza (sabor, tamanho, preco, recheio, azeitona, id_categoria) values ("Brigadeiro", "P", 26.50, true, false, 1);
    insert into tb_pizza (sabor, tamanho, preco, recheio, azeitona, id_categoria) values ("Romeu e Julieta", "G", 27.50, true, false, 1);
    
    select * from tb_pizza;
    
    select * from tb_pizza where preco < 25.00;
    
    select * from tb_pizza where preco between 25.00 and 30.00;
    
    select * from tb_pizza where sabor like "%m%";
    
    select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_categoria
	and tb_pizza.azeitona = true
	order by tb_pizza.id_pizza;
    
    select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_categoria 
	and tb_categoria.tipo = "doce";
    
    