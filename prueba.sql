create table booksforaneo(
books_id integer unsigned primary key auto_increment,
 autor_id integer unsigned,
 titulo varchar(100) not null,
 año integer unsigned not null default 1990,
 idioma varchar(2) not null default 'es' comment 'iso 639-1 language',
 imagen_url varchar(500),
 precio double(6,2) not null default 10.0,
 copias integer not null default 1,
 decripcion text,
 foreign key (autor_id) references autors(autor_id)
);

create table autors(
autor_id integer unsigned primary key auto_increment,
nombre varchar(100) not null,
nacionalidad varchar(3)
);

drop -- elimina
describe (name) -- descripcion 

create table clientes(
    ciente_id integer unsigned primary key auto_increment,
    nombre varchar(50) not null,
    email varchar (100) not null unique,
    birthdate datetime,
    sexo enum ('m','f','nd') not null,
    activa tinyint(1) not null default 1,
    creatd_at timestamp not null default current_timestamp,
    updated_at timestamp not null default current_timestamp on update current_timestamp
);
--El created_at para nosotros es inmodificable y se inserta una vez se realiza un registro, 
  palabras más o palabras menos para nosotros es la fecha de creación o de inserción del registro
--El update_at nos sirve para realizar muchas interpretaciones como el factor de seguridad

create table operations (
    operation_id integer unsigned primary key auto_increment,
    books_id integer unsigned,
    client_id integer unsigned ,
    tipo enum( 'prestado', 'devuelto','vendido'),
    creatd_at timestamp not null default current_timestamp,
    update_at timestamp not null default current_timestamp on update current_timestamp,
    finshed tinyint (1) not null

);
