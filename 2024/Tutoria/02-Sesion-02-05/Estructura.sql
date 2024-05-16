DROP DATABASE IF EXISTS invoicing;
CREATE DATABASE invoicing;
USE invoicing;

CREATE TABLE persona (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL
);


CREATE TABLE usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    persona_id INT,
    FOREIGN KEY (persona_id) REFERENCES persona(id)
);


CREATE TABLE rol (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255)
);

CREATE TABLE usuario_rol (
    usuario_id INT NOT NULL,
    rol_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuario(id),
    FOREIGN KEY (rol_id) REFERENCES rol(id)
);

CREATE TABLE modulo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    ruta VARCHAR(255)
);

CREATE TABLE modulo_rol (
    modulo_id INT NOT NULL,
    rol_id INT NOT NULL,
    FOREIGN KEY (modulo_id) REFERENCES modulo(id),
    FOREIGN KEY (rol_id) REFERENCES rol(id)
);


CREATE TABLE vista (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    ruta VARCHAR(255) NOT NULL
);


CREATE TABLE modulo_vista (
    modulo_id INT NOT NULL,
    vista_id INT NOT NULL,
    FOREIGN KEY (modulo_id) REFERENCES modulo(id),
    FOREIGN KEY (vista_id) REFERENCES vista(id)
);



-- CRUD

-- Insert sample data for persona
INSERT INTO persona (nombre, apellido) VALUES
('John', 'Doe'),
('Jane', 'Smith'),
('Michael', 'Johnson'),
('Emily', 'Williams'),
('Daniel', 'Brown'),
('Sebastian', 'Naranjo'),
('Carlos', 'Villamil'),
('Yerson', 'González');


-- Insert sample data for usuario
INSERT INTO usuario (email, password, persona_id) VALUES
('john@abc.com', 'password123', 1),
('jane@xyz.com', 'pass456', 2),
('michael@123.com', 'abc123', 3),
('emily@smith.com', 'smithpass', 4),
('daniel@johnson.com', 'daniel123', 5),
('naranjo@johnson.com', 'naranjo123', 6),
('villamil@tdp.com', 'abcd1234', 7),
('yerson@corhuila.com', 'xyz1234', 8);


-- Insert sample data for rol
INSERT INTO rol (nombre, descripcion) VALUES
('Admin', 'Administrator'),
('Vendedor', 'Encargado de las ventas'),
('Cliente', 'Acceso Cliente'),
('Auxiliar', 'Auxiliar y soporte al cliente'),
('Parametros','Gestionar datos básicos');

-- Insert sample data for usuario_rol
INSERT INTO usuario_rol (usuario_id, rol_id) VALUES
(1, 1),
(2, 1),
(3, 4),
(8, 4),
(7, 5);

INSERT INTO modulo (nombre, ruta) VALUES
('Seguridad', 'security'),  
('Ubicación', 'location'), 
('Ventas', 'sales');

-- Insert sample data for modulo_rol
INSERT INTO modulo_rol (modulo_id, rol_id) VALUES
(1, 1),
(3, 2),
(3, 4),
(2, 5);


-- Insert sample data for vista
INSERT INTO vista (nombre, ruta) VALUES
('Persona', '/persona.html'),
('Usuario', '/user.html'),
('Rol', '/role.html'),
('Modulo', '/module.html'),
('Vista', '/view.html'),
('Productos', '/product.html'),
('Categorías', '/category.html'),
('Factura', '/bill.html'),
('Medios de Pago', '/payment-method.html'),
('Ver Informes', '/view-reports.html'),
('Continentes', '/continent.html'),
('Paises', '/country.html'),
('Departamentos', '/estate.html'),
('Ciudades', '/city.html'); 


-- Insert sample data for modulo_vista
INSERT INTO modulo_vista (modulo_id, vista_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10);


-- Ver las vistas que tiene asocidas un modulo?
select 
	* 
from 
	modulo m
    INNER JOIN modulo_vista mv ON m.id = mv.modulo_id
    INNER JOIN vista v On mv.vista_id = v.id
WHERE m.nombre like '%Ventas%';

-- Conocer los modulos a los que tiene permiso un rol. 
select 
	* 
from 
	rol r 
    inner join modulo_rol mr ON r.id = mr.rol_id
    inner join modulo m On mr.modulo_id = m.id;


-- Conocer que roles, modulos y vistas tiene un usuario
select 
	 concat(p.nombre,' ',p.apellido) nombre,
     u.email user,
     u.password pwd,
     r.nombre rol,
     m.nombre modulo,
     v.nombre formulario,
     v.ruta url
from 
	persona p
    inner join usuario u on p.id = u.persona_id
    inner join usuario_rol ur on u.id = ur.usuario_id
    inner join rol r on ur.rol_id = r.id 
    inner join modulo_rol mr on r.id = mr.rol_id
    inner join modulo m on mr.modulo_id = m.id
    inner join modulo_vista mv on m.id = mv.modulo_id
    inner join vista v on mv.vista_id = v.id
where 
	u.email = 'villamil@tdp.com'
    and u.password = 'abcd1234';
