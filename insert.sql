create database biblioteca; /* Creamos la base de datos */
use biblioteca;
/* A continuacion creamos las dos tablas de nuestra base de datos */
create table libros(id int,titulo varchar(25),autor varchar(25),precio float,alquiler float,primary key (id));
create table alquileres(id int,usuario varchar(25),fecha_retirada varchar(25), fecha_entrega varchar(25));/*No añadimos primary key ya que podrian alquilarse el mismo libro 2 veces y el registro daría problemas*/
/* Añadimos los datos a la tabla libros */
insert into libros (id,titulo,autor,precio,alquiler) values (1,'10 Negritos','Agatha Christie',10,1);
insert into libros (id,titulo,autor,precio,alquiler) values (2,'Guerra y Paz','Tolstoi',4,3);
insert into libros (id,titulo,autor,precio,alquiler) values (3,'Juego de Tronos','George RR Martin',20,4);
insert into libros (id,titulo,autor,precio,alquiler) values (4,'El señor de los anillos','Tolkien',15,2);
/* Añadimos los datos a la tabla alquileres */
insert into alquileres (id,usuario,fecha_retirada,fecha_entrega) values (1,'Juan','25_09_2023','27_09_2023');
insert into alquileres (id,usuario,fecha_retirada,fecha_entrega) values (2,'Pedro','27_09_2023','Null');
insert into alquileres (id,usuario,fecha_retirada,fecha_entrega) values (3,'Luisa','23_09_2023','Null');
insert into alquileres (id,usuario,fecha_retirada,fecha_entrega) values (4,'Julieta','20_09_2023','30_09_2023');

/* Ejecutamos el insert.sql en powershell mediante el comando: source C:\xampp\mysql\bin\insert.sql */