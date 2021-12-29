#1.	Escriba la sentencia SQL para crear una base de datos con el nombre “segundoparcial”
CREATE DATABASE segundoparcial;
#2.	Escriba la sentencia SQL para crear una tabla dentro de la base de datos “segundoparcial” con las siguientes características y de nombre “jugadores”
CREATE TABLE jugadores( 
					idJugador INT (4) NOT NULL AUTO_INCREMENT, 
					nombre VARCHAR (50) NOT NULL, 
					apellido VARCHAR (50) NOT NULL,
					dni INT (8),
					edad TINYINT (4),
					primary KEY(idJugador)
					);

#3.	Escriba la sentencia SQL para agregar un campo tipo texto de 50 caracteres con posibilidad de ser nulo de nombre “domicilio” a la tabla anterior “jugadores”
# Considere la siguiente imagen como ejemplo del resultado.
ALTER TABLE jugadores
ADD COLUMN domicilio TEXT(50);
#4.	Escriba la sentencia SQL para agregar 5 registros a la tabla “jugadores” (descripta en el punto 2) con los siguientes datos.

INSERT INTO jugadores(nombre, apellido, dni, edad, domicilio)
VALUES ('Alex', 'Martel', '28654356', '40', 'Av. Libertador 343'), 
('Marcos', 'Galpex', '36345634', '28', 'Vidal 2865'),
('Juliana', 'Agrua','33456654', '32', 'Av. Santa fe 221 4to A'),													
('Marco', 'Bell', '40345543','22', 'calle 45 343'),													
('Dalma', 'Canes', '30654276', '38', 'Monroe 3321 1ro B');				

#5.	Dada la siguiente tabla “juegos” Y la siguiente tabla “fabricantes” mostrada
## A. Escriba la sentencia SQL para listar una tabla con el Nombre del juego y la Fecha de lanzamiento 
## de los juegos que sean para más de 1 jugador y además sean del fabricante 4
## Considere la siguiente imagen como ejemplo del resultado.
## B. Escriba la sentencia SQL para listar una tabla con el Nombre del juego y la Nombre del fabricante
# creación de tabla
CREATE TABLE juegos(
					idJuego INT(4) AUTO_INCREMENT,
					nombre VARCHAR (30), 
					fechaLanzamiento DATE NOT null,
					maxJugadores INT (4),
					idFabricante INT NOT NULL,
					PRIMARY KEY(idJuego)
					);


CREATE TABLE fabricantes(
					idFabricante INT(4) AUTO_INCREMENT,
					nombre VARCHAR (30),
					PRIMARY KEY(idFabricante)
					);

DROP TABLE fabricantes

INSERT INTO juegos
VALUES
('', 'UFC 4', '2020-08-14', 2, 4),
('', 'GTA 5', '2013-09-01', 1, 2),
('', 'Gran Turismo 6', '2013-12-06', 4, 3),
('', 'Max Payne 3', '2012-04-12', 1, 2),
('', 'Need for Speed Hot Pursuit', '2010-11-16', 2, 4);

INSERT INTO fabricantes
VALUES
('', 'Square Enix'),
('', 'Rockstar Games'),
('', 'Polyphony Digital'),
('', 'Electronic Art');

# punto A 
SELECT nombre AS 'nombre de juego', fechaLanzamiento AS 'fecha de lanzamiento'
FROM juegos 
WHERE maxJugadores>1 AND idFabricante=4

# punto B
SELECT j.nombre AS 'Nombre del juego', f.nombre AS 'Nombre del fabricante'
FROM juegos AS j
INNER JOIN fabricantes AS f
ON j.idFabricante = f.idFabricante;

SELECT j.nombre AS 'Nombre del juego', f.nombre AS 'Nombre del fabricante'
from juegos as j
inner join fabricantes as f
on j.idFabricante=f.idFabricante;

# 6 dada la tabla jugadas ver
#A. Escriba la sentencia SQL para indicar la Cantidad de jugadas realizadas en total.
#B. Escriba la sentencia SQL para indicar Las jugadas realizadas del juego 1 
#con fecha entre el 2021-11-10 a las 00:00:00 inclusive y el 2021-11-15 a las 23:59:59 inclusive.

# creación de tabla e inserción 
CREATE TABLE jugadas (
					idJugador INT (4) NOT NULL, 
					idJuego INT (4) NOT NULL, 
					fechaHoraJugada DATETIME NOT NULL,
					PRIMARY KEY (idJugador)
					);
INSERT INTO jugadas
				VALUES 
				('11', '1', '2021-11-01 10:00:00'),
				('1', '2', '2021-11-01 12:00:00'),
				('3', '2', '2021-11-10 12:10:00'),
				('24', '3', '2021-11-11 12:30:10'),
				('13', '1', '2021-11-11 13:00:00'),
				('35', '4', '2021-11-11 13:15:25'),
				('32', '2', '2021-11-12 13:32:00'),
				('12', '1', '2021-11-12 13:32:00'),
				('4', '1', '2021-11-15 14:01:00'),
				('2', '1', '2021-11-15 14:10:00'),
				('16', '4', '2021-11-25 17:00:00');
# A cantidad de jugadas
SELECT COUNT(*) AS 'cantidad de jugadas' FROM jugadas;

# B jugadas del juego 1 entre las fechas indicadas
SELECT * FROM jugadas WHERE fechaHoraJugada BETWEEN '2021-11-10 00:00:00' AND '2021-11-15 23:59:59' AND idJuego=1;



#7.	Basado en las siguientes tablas “jugadas”, “jugadores” y “juegos”.
#Escriba la sentencia SQL para indicar “Nombre del jugador” y “Nombre de juego” de todas las jugadas realizadas.
#Considere la siguiente imagen como ejemplo del resultado.

SELECT j.nombre AS 'Nombre del Jugador', z.nombre AS 'Nombre del juego'
FROM jugadas AS k
INNER JOIN jugadores AS j
ON  k.idJugador = j.idJugador
INNER JOIN juegos AS z
ON k.idJuego = z.idJuego;


#8. Basado en la siguiente tabla “jugadores”. Escriba la sentencia SQL para listar los jugadores que comiencen con la letra “M” en su nombre.
SELECT * FROM jugadores WHERE nombre LIKE 'M%';

