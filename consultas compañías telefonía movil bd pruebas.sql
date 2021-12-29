SELECT * FROM tblusuarios

#se otorga un ALIAS (AS) al encabeado del campo de la tabla a mostrar
SELECT nombre AS 'nombre de usuario', telefono FROM tblusuarios


#consulta order by DESC endente (!= de ASC endente) 
#el sexo 'M' entrecomillado por ser un dato strg
SELECT * FROM tblusuarios WHERE sexo = 'M' ORDER BY saldo DESC;

#saldo máximo saldo entre mujeres
SELECT MAX(saldo) AS 'Saldo maximo' FROM tblusuarios WHERE sexo = 'M';

# nombre y telefono de usuarios nokia, sonny O blackberry
SELECT nombre, telefono, marca FROM tblusuarios WHERE marca='NOKIA' OR marca='SONNY' OR marca='BLACKBERRY';

#misma operación pero usando operador IN (...cumple las condiciones)
SELECT nombre, telefono, marca FROM tblusuarios WHERE marca IN('NOKIA','BLACKBERRY', 'SONNY');

#cantidad de usuarios sin saldo o inactivo
SELECT COUNT(*) AS 'usuarios sin saldo o inactivos' FROM tblusuarios WHERE saldo = 0 OR activo = 0;

#listado del login de los usuarios nivel 1,2 o 3 
SELECT usuario, nivel FROM tblusuarios WHERE nivel IN(1,2,3) ORDER BY usuario, nivel ASC 

#listado de telefonos con saldo menor o igual a 300
SELECT telefono, saldo FROM tblusuarios WHERE saldo <=300;

#cálculo de la suma de saldos de usuarios NEXTEL
SELECT SUM(saldo) AS 'suma de saldos nextel' FROM tblusuarios WHERE compañia='NEXTEL';

#cantidad de usuarios por compañía
SELECT compañia, COUNT(*) AS 'cantidad de usuarios por compañía' FROM tblusuarios GROUP BY compañia;

#cantidad de usuarios por nivel
SELECT nivel, COUNT(*) AS 'cantidad de usuarios por nivel'FROM tblusuarios GROUP BY nivel;

#listado de login usuarios nivel 2
SELECT usuario AS 'usuarios nivel 2' FROM tblusuarios WHERE nivel=2;

# direcciones de usuarios gmail
SELECT email AS 'direcciones gmail' FROM tblusuarios WHERE email LIKE "%gmail%";

# nombres y telefonos de usuarios LG, SAMSUNG O MOTOROLA;
SELECT nombre, telefono, marca FROM tblusuarios WHERE marca IN('LG', 'SAMSUNG', 'MOTOROLA');

# nombre y telefono de usuarios que no usen LG NISAMSUNG
SELECT nombre, telefono, marca FROM tblusuarios WHERE marca NOT IN('LG', 'SAMSUNG');

#nombre y telefono de usuarios que no usen BLACKBERRY con operador de exclusión <>
SELECT nombre, telefono, marca FROM tblusuarios WHERE  marca <> 'blackberry';

# lista de usuarios nivel 3
SELECT usuario, nivel FROM tblusuarios WHERE nivel=3;

#lista de usuarios nivel 0
SELECT usuario, nivel FROM tblusuarios WHERE nivel=0;

# número de usuarios por sexo
SELECT sexo, COUNT(*) AS 'cantidad de usuarios' FROM tblusuarios GROUP BY sexo;

# lista de usuarios y telefonos AT&T
SELECT usuario, telefono, compañia FROM tblusuarios WHERE compañia= 'AT&T';

# lista de compañías en orden alfabético descendente
# usamos declaración distinct que devuelve valores distintos (no duplicados) para disminuir la redundancia 
# consultamos por los valores de compañóa pero los agrupamos por los valores de compañía para evitar duplicaciones 
SELECT DISTINCT compañia FROM tblusuarios ORDER BY compañia DESC;
SELECT compañia FROM tblusuarios GROUP BY compañia ORDER BY compañia DESC;

#lista de usuarios inactivos
SELECT (usuario) FROM tblusuarios WHERE activo=0;

# Lista de números sin saldo
SELECT (telefono) FROM tblusuarios WHERE saldo=0;

#menor saldo entre usuarios hombres
SELECT usuario, sexo, saldo, MIN(saldo) AS 'Saldo minimo' FROM tblusuarios WHERE sexo = 'H' 

# cantidad de usuarios por marca
SELECT marca, COUNT(*) AS 'cantidad de usuarios' FROM tblusuarios GROUP BY marca;

#lista de nombre y telefono de los usuarios que no sean LG
SELECT nombre, telefono, marca FROM tblusuarios WHERE marca <> 'LG';

# total de saldos de la compañía unefon
SELECT SUM(saldo)AS 'suma de saldos de los usuarios de unefon' FROM tblusuarios WHERE compañia= 'unefon';

# mail de usuarios hotmail
SELECT email, usuario, nombre FROM tblusuarios WHERE email LIKE '%hotmail.com%';

#login y telefono de usuarios iuscacell y telcell
SELECT usuario, telefono, compañia FROM tblusuarios WHERE compañia='IUSACELL' OR compañia='TELCEL';

#LENGTH largo de la palabra, lower pasa todo a minuscula
SELECT LOWER(usuario), LENGTH(telefono),telefono, LOWER(compañia) FROM  tblusuarios WHERE compañia = 'IUSACELL' OR compañia = 'TELCEL'  