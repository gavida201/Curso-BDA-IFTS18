CREATE DATABASE biblioteca;

USE biblioteca;

drop table if exists libros,socios,prestamos;

create table libros(
  codigo int unsigned auto_increment,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  primary key (codigo)
 );

create table socios(
  documento char(8) not null,
  nombre varchar(30),
  domicilio varchar(30),
  primary key (documento)
 );

create table prestamos(
  documento char(8) not null,
  codigolibro int unsigned,
  fechaprestamo date not null,
  fechadevolucion date,
  primary key (codigolibro,fechaprestamo)
 );


# Cargamos información a la tabla.
insert into socios values('22333444','Juan Perez','Colon 345');
insert into socios values('23333444','Luis Lopez','Caseros 940');
insert into socios values('25333444','Ana Herrero','Sucre 120');

insert into libros values(1,'Manual de 2º grado','Molina Manuel');
insert into libros values(25,'Aprenda PHP','Oscar Mendez');
insert into libros values(42,'Martin Fierro','Jose Hernandez');

insert into prestamos values('22333444',1,'2016-08-10','2016-08-12');
insert into prestamos values('22333444',1,'2016-08-15',null);
insert into prestamos values('25333444',25,'2016-08-10','2016-08-13');
insert into prestamos values('25333444',42,'2016-08-10',null);
insert into prestamos values('25333444',25,'2016-08-15',null);
insert into prestamos values('30333444',42,'2016-08-02','2016-08-05');
insert into prestamos values('25333444',2,'2016-08-02','2016-08-05');

select * from prestamos;

#listado de préstamos con usuario y fecha correspondiente 
select nombre,titulo,fechaprestamo
  from prestamos as p
  join socios as s
  on s.documento=p.documento
  join libros as l
  on codigolibro=codigo;
  
#listado de prestamos 
select nombre,titulo,fechaprestamo
  from prestamos as p
  left join socios as s
  on p.documento=s.documento
  left join libros as l
  on l.codigo=p.codigolibro;

select nombre,titulo,fechaprestamo
  from prestamos as p
  left join socios as s
  on p.documento=s.documento
  join libros as l
  on p.codigolibro=l.codigo;