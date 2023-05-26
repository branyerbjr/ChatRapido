create database chatrapido;
use chatrapido;

create table contacto(
    id int auto_increment primary key,
    nombres varchar(100),
    apellido_paterno varchar(100),
    apellido_materno varchar(100),
    fecha_nacimiento date,
    celular varchar(12)
);

create table promociones(
    id int NOT NULL auto_increment,
    promocion varchar(200) default null,
    duracion varchar(200) default null,
    id_contacto int not null,
    imagen longblob DEFAULT NULL,
    img_name varchar(40) DEFAULT NULL,
    primary key(id),
    key fk_promociones_1_idx (id_contacto),
    constraint fk_promociones_1 foreign key (id_contacto) references contacto (id)
);