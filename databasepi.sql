create database databasepi;

use databasepi;

create table usuarios (
	idusuario int primary key auto_increment,
    nome varchar(45) not null,
	email varchar(45) not null,
	senha varchar(45) not null
) auto_increment 1
