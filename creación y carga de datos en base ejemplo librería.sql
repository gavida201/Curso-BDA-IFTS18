CREATE DATABASE IF NOT EXISTS libreria;
USE libreria;


create table libros(
  codigo int unsigned auto_increment,
  titulo varchar(40) not null,
  autor varchar(30) not null default 'Desconocido',
  codigoeditorial tinyint unsigned not null,
  precio decimal(5,2) unsigned,
  cantidad tinyint unsigned default 0,
  primary key (codigo)
 );
 create table editoriales(
  codigo tinyint unsigned auto_increment,
  nombre varchar(20) not null,
  primary key(codigo)
 );
 
INSERT INTO editoriales (nombre) VALUES ('Paidos');
INSERT INTO editoriales (nombre) VALUES ('Emece');
INSERT INTO editoriales (nombre) VALUES ('Planeta');
INSERT INTO editoriales (nombre) VALUES ('Sudamericana');

 INSERT INTO libros (titulo, autor,codigoeditorial,precio,cantidad)
  values('El Aleph','Borges',3,43.5,200);
 INSERT INTO libros (titulo, autor,codigoeditorial,precio,cantidad)
  values('Alicia en el pais de las maravillas','Lewis Carroll',2,33.5,100);
 INSERT INTO libros (titulo, autor,codigoeditorial,precio,cantidad)
  values('Aprenda PHP','Mario Perez',1,55.8,50);
 INSERT INTO libros (titulo, autor,codigoeditorial,precio,cantidad)
  values('Java en 10 minutos','Juan Lopez',1,88,150);
  INSERT INTO libros (titulo, autor,codigoeditorial,precio,cantidad)
  values('Alicia a traves del espejo','Lewis Carroll',1,15.5,80);
 INSERT INTO libros (titulo, autor,codigoeditorial,precio,cantidad)
  values('Cervantes y el quijote','Borges- Bioy Casares',3,25.5,300);
 INSERT INTO libros (titulo, autor,codigoeditorial,precio,cantidad)
  values('Aprenda Java en 10 minutos','Lopez Juan',5,28,100);
