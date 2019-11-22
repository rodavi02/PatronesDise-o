
CREATE SCHEMA tienda;
USE tienda;
CREATE TABLE IF NOT EXISTS cliente (
id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(20) NOT NULL,
apellido VARCHAR(40) NOT NULL,
password VARCHAR(80) NOT NULL,
dni VARCHAR(9) NOT NULL,
correo VARCHAR(50) NOT NULL,
ciudad VARCHAR(20) NOT NULL,
cp INT(5) NOT NULL,
provincia VARCHAR(40) NOT NULL
);

CREATE TABLE prenda (
nombre INT NOT NULL PRIMARY KEY,
precio INT NOT NULL
);

CREATE TABLE camiseta (
nombre INT NOT NULL PRIMARY KEY auto_increment,
talla VARCHAR(3) NOT NULL,
color VARCHAR(15) NOT NULL,
manga VARCHAR(5) NOT NULL,
KEY (nombre),
FOREIGN KEY (nombre) REFERENCES prenda (nombre) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE pantalon (
nombre INT NOT NULL PRIMARY KEY auto_increment,
talla VARCHAR(3) NOT NULL,
color VARCHAR(15) NOT NULL,
tipo VARCHAR(15) NOT NULL,
design VARCHAR(5) NOT NULL,
KEY (nombre),
FOREIGN KEY (nombre) REFERENCES prenda (nombre) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE pedido (
idpedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
fecha DATE NOT NULL,
nombre INT NOT NULL ,
id INT NOT NULL,
KEY (nombre),
FOREIGN KEY (nombre) REFERENCES prenda (nombre) ON UPDATE CASCADE ON DELETE CASCADE,
KEY (id),
FOREIGN KEY (id) REFERENCES cliente (id) ON UPDATE CASCADE ON DELETE CASCADE
);

