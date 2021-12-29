USE ifts18;

ALTER TABLE alumnos ADD edad2 TINYINT;
# Agregar alumnos
INSERT INTO alumnos
(idAlumno, nombre, apellido, dni)
VALUES
(7,'Juan','Marquez',30276876);

INSERT INTO alumnos
(idAlumno, nombre, apellido, dni)
VALUES
(6,'Maria','Muchastegui',56455546);

# Actualización de datos de alumnos
UPDATE alumnos SET nombre='Martin' ,apellido='Sanchez' WHERE idAlumno = 3;

UPDATE alumnos SET nombre='Alejandra' ,apellido='Etchegoyen' WHERE idAlumno = 1;

UPDATE alumnos SET dni=33245678 WHERE idAlumno = 1;

UPDATE alumnos SET dni='28719876' WHERE idAlumno = 3;

UPDATE alumnos SET dni=28779876 WHERE idAlumno = 5;

UPDATE alumnos SET dni=null WHERE nombre = 'Maria';

UPDATE alumnos SET edad=61 WHERE idAlumno = 6;
SELECT * FROM alumnos;

# comando para ver la estructura de una tabla
DESCRIBE alumnos;
DESCRIBE materias;

# Modificar la estructura de una tabla
ALTER TABLE alumnos ADD UNIQUE (dni);

# Seleccionar datos de un alumno puntual según su ID
SELECT * FORM alumnos WHERE idAlumno = 5;

# cambiar "Martin" por "Joaquin" en la columna "nombre" de la tabla alumnos
UPDATE alumnos SET nombre='Martin' WHERE nombre='Joaquin';
SELECT * FROM alumnos;

# borrar los registros "Nombre" = "Juan" en la Tabla alumnos?
DELETE FROM alumnos WHERE nombre = 'Juan';


# cantidad de registros en la tabla "alumnos"
SELECT COUNT(*) as cantidad FROM alumnos;

# Agregar un nuevo campo a la tabla alumnos (tinyint 0 a 255)
ALTER TABLE alumnos ADD edad TINYINT;

# Obtener el promedio de edad de los alumnos
SELECT AVG(edad) AS 'Promedio de edades' FROM alumnos;



# creamos la tabla de cursadas
DROP TABLE inscripciones;
create table inscripciones(
  idInscripcion int auto_increment,
  idAlumno int(4) not null,
  idMateria int(4) not null,
  fechaInscripción datetime default CURRENT_TIMESTAMP,
  primary key (idInscripcion)
 );

# creamos la tabla alumnos
SELECT * FROM alumnos;
DROP TABLE alumnos;

CREATE TABLE alumnos (
  idAlumno int(4) auto_increment,
  nombre varchar(50) NOT NULL,
  apellido varchar(50) NOT NULL,
  dni int(8) DEFAULT NULL,
  edad tinyint(4) DEFAULT NULL,
  primary key (idAlumno)
);


INSERT INTO alumnos (idAlumno, nombre, apellido, dni, edad) VALUES
(1, 'Alejandra', 'Etchegoyen', 33245678, 34),
(2, 'Martin', 'Sanchez', 28719876, 41),
(3, 'Pepe', 'Biondi', 28779876, 41),
(4, 'Maria', 'Muchastegui', NULL, 61);


DROP TABLE aulas;

CREATE TABLE aulas(nroAula TINYINT NOT null);

DESCRIBE aulas;

INSERT INTO aulas (nroAula) VALUES
(1),
(2),
(3),
(4);

SELECT * FROM aulas;