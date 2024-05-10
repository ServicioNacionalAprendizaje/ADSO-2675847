DROP DATABASE IF EXISTS invoicing;
CREATE DATABASE invoicing;
USE invoicing;

CREATE TABLE persona (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL
);

CREATE TABLE empresa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    direccion VARCHAR(255),
    telefono VARCHAR(255),
    email VARCHAR(255) NOT NULL
);

CREATE TABLE usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    persona_id INT,
    empresa_id INT,
    FOREIGN KEY (persona_id) REFERENCES persona(id),
    FOREIGN KEY (empresa_id) REFERENCES empresa(id)
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
    FOREIGN KEY (rol_id) REFERENCES rol(id),
    PRIMARY KEY (usuario_id, rol_id)
);

CREATE TABLE vista (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    url VARCHAR(255) NOT NULL
);

CREATE TABLE rol_vista (
    rol_id INT NOT NULL,
    vista_id INT NOT NULL,
    FOREIGN KEY (rol_id) REFERENCES rol(id),
    FOREIGN KEY (vista_id) REFERENCES vista(id),
    PRIMARY KEY (rol_id, vista_id)
);

CREATE TABLE empleado (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(255) NOT NULL,
    persona_id INT NOT NULL,
    FOREIGN KEY (persona_id) REFERENCES persona(id)
);

CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(255) NOT NULL,
    persona_id INT NOT NULL,
    FOREIGN KEY (persona_id) REFERENCES persona(id)
);

CREATE TABLE factura (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(255) NOT NULL,
    fecha DATE NOT NULL,
    total DOUBLE NOT NULL,
    cliente_id INT NOT NULL,
    empresa_id INT NOT NULL,
    estado ENUM('Pendiente', 'Pagada', 'Anulada', 'Enviada', 'Entregada', 'Rechazada') NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES cliente(id),
    FOREIGN KEY (empresa_id) REFERENCES empresa(id)
);

CREATE TABLE categoria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255)
);

CREATE TABLE producto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(255) NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255),
    precio DOUBLE NOT NULL,
    categoria_id INT NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES categoria(id)
);

CREATE TABLE detalle_factura (
    cantidad INTEGER NOT NULL,
    precio DOUBLE NOT NULL,
    producto_id INT NOT NULL,
    factura_id INT NOT NULL,
    FOREIGN KEY (producto_id) REFERENCES producto(id),
    FOREIGN KEY (factura_id) REFERENCES factura(id),
    PRIMARY KEY (producto_id, factura_id)
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
('Carlos', 'Villamil');

-- Insert sample data for empresa
INSERT INTO empresa (nombre, direccion, telefono, email) VALUES
('ABC Inc.', '123 Main St', '555-1234', 'info@abc.com'),
('XYZ Corp.', '456 Oak St', '555-5678', 'info@xyz.com'),
('123 Enterprises', '789 Elm St', '555-9012', 'info@123.com'),
('Smith & Co.', '321 Pine St', '555-3456', 'info@smith.com'),
('Johnson Group', '654 Maple St', '555-7890', 'info@johnson.com'),
('TDP', 'abcd', '34343', 'tdp@johnson.com');

-- Insert sample data for usuario
INSERT INTO usuario (email, password, persona_id, empresa_id) VALUES
('john@abc.com', 'password123', 1, 1),
('jane@xyz.com', 'pass456', 2, 2),
('michael@123.com', 'abc123', 3, 3),
('emily@smith.com', 'smithpass', 4, 4),
('daniel@johnson.com', 'daniel123', 5, 5),
('naranjo@johnson.com', 'naranjo123', 6, 6),
('villamil@tdp.com', 'abcd1234', 7, 6);


-- Insert sample data for rol
INSERT INTO rol (nombre, descripcion) VALUES
('Admin', 'Administrator'),
('User', 'Vendedor'),
('Cliente', 'Acceso Cliente');

-- Insert sample data for usuario_rol
INSERT INTO usuario_rol (usuario_id, rol_id) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 2),
(5, 2),
(6,3),
(7,3);


-- Insert sample data for vista
INSERT INTO vista (nombre, url) VALUES
('Inicio', '/inicio'), 
('Catálogo de productos', '/catalogo-productos'),
('Detalle del producto', '/detalle-producto'),
('Carrito de compras', '/carrito-compras'),
('Proceso de pago', '/pago'), -- admin
('Historial de compras', '/historial-compras'), -- admin
('Perfil del usuario', '/perfil-usuario'), 
('Configuración de cuenta', '/configuracion-cuenta'), -- admin
('Panel de administración', '/panel-administracion'), -- admin
('Reportes de ventas', '/reportes-ventas'),
('Ver infomración básica del cliente', '/info-cliente'); 

-- Insert sample data for rol_vista
INSERT INTO rol_vista (rol_id, vista_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 8),
(1, 9),
(1, 10),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 10),
(3, 1),
(3, 3),
(3, 6),
(3, 9);

-- Insert sample data for empleado
INSERT INTO empleado (codigo, persona_id) VALUES
('EMP001', 1),
('EMP002', 2),
('EMP003', 3),
('EMP004', 4),
('EMP005', 5);

-- Insert sample data for cliente
INSERT INTO cliente (codigo, persona_id) VALUES
('CLI001', 1),
('CLI002', 2),
('CLI003', 3),
('CLI004', 4),
('CLI005', 5);

-- Insert sample data for factura
INSERT INTO factura (codigo, fecha, total, cliente_id, empresa_id, estado) VALUES
('FAC001', '2024-05-01', 100.50, 1, 1, 'Pagada'),
('FAC002', '2024-05-02', 75.25, 2, 2, 'Pendiente'),
('FAC003', '2024-05-03', 150.75, 3, 3, 'Enviada'),
('FAC004', '2024-05-04', 200.00, 4, 4, 'Entregada'),
('FAC005', '2024-05-05', 50.00, 5, 5, 'Anulada');

-- Insert sample data for categoria
INSERT INTO categoria (nombre, descripcion) VALUES
('Electronics', 'Electronic products'),
('Clothing', 'Clothing items'),
('Books', 'Books and literature'),
('Food', 'Food and beverages'),
('Home', 'Home appliances');

-- Insert sample data for producto
INSERT INTO producto (codigo, nombre, descripcion, precio, categoria_id) VALUES
('P001', 'Laptop', 'High-performance laptop', 1200.00, 1),
('P002', 'T-shirt', 'Cotton T-shirt', 20.00, 2),
('P003', 'Book', 'Bestseller book', 15.00, 3),
('P004', 'Milk', 'Fresh milk', 3.50, 4),
('P005', 'Refrigerator', 'Large refrigerator', 800.00, 5);

-- Insert sample data for detalle_factura
INSERT INTO detalle_factura (cantidad, precio, producto_id, factura_id) VALUES
(2, 2400.00, 1, 1),
(3, 60.00, 2, 1),
(1, 15.00, 3, 1),
(5, 17.50, 4, 2),
(1, 800.00, 5, 2),
(2, 2400.00, 1, 3),
(3, 60.00, 2, 4),
(1, 15.00, 3, 4),
(5, 17.50, 4, 5),
(1, 800.00, 2, 5),
(1, 800.00, 5, 5),
(2, 2400.00, 1, 5);

SELECT * FROM usuario;
-- michael@123.com	abc123	3	3

SELECT * FROM factura;
SELECT * FROM detalle_factura;

-- Acceder al sistema
SELECT 
	count(email) as autorizacion
FROM 
	usuario
WHERE 
	email = 'michael@123.com' AND
	password = 'abc123';
    
-- Ver permisos
SELECT 
	u.email, 
    e.nombre empresa,
    r.nombre rol,
    v.nombre vista
FROM 
	usuario u 
    INNER JOIN usuario_rol ur on u.id = ur.usuario_id
    INNER JOIn rol r ON ur.rol_id = r.id
    INNER JOIN empresa e ON u.empresa_id = e.id
    INNER JOIN rol_vista rv ON r.id = rv.rol_id
    INNER JOIN vista v ON rv.vista_id = v.id
WHERE 
	u.email = 'michael@123.com' AND
	u.password = 'abc123';