/* Creación de usuario. Remplaar el llamado por el signo % para cualquier externo*/
CREATE USER 'soporte' @ 'localhost' IDENTIFIED BY PASSWORD 'soportepass';
REVOKE ALL PRIVILEGES ON *.* FROM 'soporte'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'soporte'@'localhost' 
REQUIRE NONE WITH GRANT OPTION MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0
MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;