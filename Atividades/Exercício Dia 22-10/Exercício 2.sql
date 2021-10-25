create database db_ecommerce;

use db_ecommerce;

create table produtos (
	registro bigint not null,
    nome varchar (255) not null,
    preco decimal not null,
    fabricacao bigint not null,
    marca varchar (255) not null,
    primary key (registro)
    );
    
    insert into produtos (registro, nome, preco, fabricacao, marca) value (00001, "Estojo", 10.00, 2021, "Nike");
    insert into produtos (registro, nome, preco, fabricacao, marca) value (00002, "Caderno", 25.00, 2020, "Adidas");
    insert into produtos (registro, nome, preco, fabricacao, marca) value (00003, "Lápis de cores - Aquarela", 300.00, 2021, "Faber Castell");
    insert into produtos (registro, nome, preco, fabricacao, marca) value (00004, "Tablet", 800.00, 2019, "Dell");
    insert into produtos (registro, nome, preco, fabricacao, marca) value (00005, "Notbook", 3000.00, 2021, "Positivo");
    insert into produtos (registro, nome, preco, fabricacao, marca) value (00006, "Tintas TGA", 30.00, 2017, "TGA");
    insert into produtos (registro, nome, preco, fabricacao, marca) value (00007, "Pincél", 15.00, 2021, "Faber Castell");
    insert into produtos (registro, nome, preco, fabricacao, marca) value (00008, "Folhas Sulfite", 35.00, 2020, "Sulfitão");
    
    select * from produtos where preco > 500;
    select * from produtos where preco <= 500;
    
    update produtos set preco = 750.00 where registro = 00004;
    