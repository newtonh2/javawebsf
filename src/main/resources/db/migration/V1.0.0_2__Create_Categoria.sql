create table categorias (
    codigo integer not null primary key auto_increment,
    nome varchar(50) not null
);

insert into categorias (nome) VALUES ('Informática');
insert into categorias (nome) VALUES ('Eletrônica');
insert into categorias (nome) VALUES ('Imóvel');

update produtos set categoria = 1 where codigo = 1;
update produtos set categoria = 2 where codigo = 2;
update produtos set categoria = 3 where codigo = 3;




