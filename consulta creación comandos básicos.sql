/*creación db y tabla*/
		CREATE DATABASE comandosbásicos;
		CREATE TABLE clientes (
		id INT,
		nombre VARCHAR (30),
		apellido VARCHAR (30),
		fecha DATE);

/* eliminado de tabla*/
		DROP TABLE clientes;

/*creo otra similar tabla para proseguir*/
		CREATE TABLE clientes (
		id INT,
		nombre VARCHAR (30),
		apellido VARCHAR (30),
		nacimiento DATE);

/* agrego atributos a la tabla creada*/
		ALTER TABLE clientes ADD direccion VARCHAR (100);

/* ingreso datos a la tabla*/
		INSERT INTO clientes(id, nombre, apellido, nacimiento, direccion)
		VALUES (1, 'Alfred North', 'Whitehead', DATE '1861-2-05', 'Ramsgate'),
		(2,'Sussane Katherina', 'Langer', DATE '1895-12-20', NULL), (3, 'Frank Plumpton', 'Ramsey', DATE '1903-2-22', 'London');

/* consulta del total de datos insertados*/
		SELECT * FROM clientes;

/* actualiamos la dirección faltante del cliente 2*/
		UPDATE clientes SET direccion= 'New York' WHERE id=2;		

/* consultamos la columna actualiada*/
		SELECT direccion FROM clientes;

/* eliminamos la última fila por contener datos inconsistentes*/
		DELETE FROM clientes WHERE id=3;

/* consultamos el resultado de la última operación sobre la tabla */
		SELECT * FROM clientes;

/* consultamos solamente por el primer cliente*/		
		SELECT * FROM clientes WHERE id=1;