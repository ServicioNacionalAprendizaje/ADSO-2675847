/*Control de matricula del estudiantes.*/

-- Elimina la base de datos, solo si existe.
DROP DATABASE IF EXISTS ejemplo_crud;

-- Crea la base de datos
CREATE DATABASE ejemplo_crud;

USE ejemplo_crud;

CREATE TABLE estudiante(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(100) NOT NULL,
	apellido VARCHAR(100) NOT NULL,
	correo VARCHAR(100) NOT NULL
);

CREATE TABLE materia(
	id INT PRIMARY KEY AUTO_INCREMENT,
	codigo VARCHAR(100) NOT NULL,
	nombre VARCHAR(100) NOT NULL,
	descripcion VARCHAR(100) NOT NULL
);

CREATE TABLE matricula(
	id INT PRIMARY KEY AUTO_INCREMENT,
	corte enum('1','2','3'),
	nota DECIMAL(1,1) NOT NULL,
	estudiante_id INT,
	materia_id INT,	
	FOREIGN KEY (estudiante_id) REFERENCES estudiante(id),
	FOREIGN KEY (materia_id) REFERENCES materia(id)
);

-- Material
-- Insertar información de 20 materias
INSERT INTO materia (codigo, nombre, descripcion) VALUES
('MAT101', 'Matemáticas I', 'Introducción al cálculo diferencial'),
('FIS101', 'Física I', 'Mecánica clásica'),
('ING101', 'Inglés I', 'Gramática y vocabulario básico'),
('HIS101', 'Historia I', 'Historia mundial antigua'),
('BIO101', 'Biología I', 'Conceptos básicos de biología'),
('CHEM101', 'Química I', 'Introducción a la química'),
('CS101', 'Ciencias de la Computación I', 'Introducción a la programación'),
('ART101', 'Arte I', 'Introducción al arte visual'),
('PHI101', 'Filosofía I', 'Introducción a la filosofía occidental'),
('PSY101', 'Psicología I', 'Introducción a la psicología'),
('ECO101', 'Economía I', 'Introducción a la economía'),
('SOC101', 'Sociología I', 'Introducción a la sociología'),
('GEO101', 'Geografía I', 'Introducción a la geografía mundial'),
('POL101', 'Ciencia Política I', 'Introducción a la ciencia política'),
('LANG101', 'Lenguaje I', 'Introducción a la lingüística'),
('MUS101', 'Música I', 'Introducción a la teoría musical'),
('EDU101', 'Educación I', 'Introducción a la educación'),
('PE101', 'Educación Física I', 'Introducción a la educación física'),
('REL101', 'Religión I', 'Introducción a los estudios religiosos'),
('TECH101', 'Tecnología I', 'Introducción a la tecnología');

-- Insertar información de 200 estudiantes (nombres y apellidos aleatorios)
DELIMITER $$
CREATE PROCEDURE InsertarEstudiantes()
BEGIN
    DECLARE contador INT DEFAULT 0;
    WHILE contador < 200 DO
        INSERT INTO estudiante (nombre, apellido, correo) VALUES 
        (CONCAT('Estudiante', contador + 1), CONCAT('Apellido', contador + 1), CONCAT('estudiante', contador + 1, '@example.com'));
        SET contador = contador + 1;
    END WHILE;
END$$
DELIMITER ;
CALL InsertarEstudiantes();

-- Matricular a 50 estudiantes en diversas materias
DELIMITER $$
CREATE PROCEDURE MatricularEstudiantes()
BEGIN
    DECLARE contador INT DEFAULT 0;
    WHILE contador < 50 DO
        SET @estudiante_id = (SELECT id FROM estudiante ORDER BY RAND() LIMIT 1);
        SET @cantidad_materias = ROUND(RAND() * 4 + 2); -- Genera un número aleatorio entre 2 y 6
        SET @contador_materias = 0;
        WHILE @contador_materias < @cantidad_materias DO
            SET @materia_id = (SELECT id FROM materia WHERE id NOT IN (SELECT materia_id FROM matricula WHERE estudiante_id = @estudiante_id) ORDER BY RAND() LIMIT 1);
            INSERT INTO matricula (corte, nota, estudiante_id, materia_id) VALUES ('1', '0', @estudiante_id, @materia_id);
            SET @contador_materias = @contador_materias + 1;
        END WHILE;
        SET contador = contador + 1;
    END WHILE;
END$$
DELIMITER ;
CALL MatricularEstudiantes();

-- Procesar datos
-- Con el código de una materia, obtener las notas de los estudiantes
SELECT 
	concat(e.nombre,' ',e.apellido) AS estudiante,
    m.nota
FROM 
	estudiante e
    INNER JOIN matricula m ON m.estudiante_id = e.id
    INNER JOIN materia ma On m.materia_id = ma.id
WHERE ma.codigo = 'POL101';

-- Con el código del estiante, obtener las notas en las materias que esta registrado
SELECT 
	concat(ma.codigo,' ',ma.nombre) AS materia,
    m.nota
FROM 
	estudiante e
    INNER JOIN matricula m ON m.estudiante_id = e.id
    INNER JOIN materia ma On m.materia_id = ma.id
WHERE e.id = 141;

-- Conocer cantidad de materias por estudiante
SELECT 
	CONCAT(e.nombre, ' ', e.apellido) AS estudiante,
    COUNT(m.materia_id) AS cantidad_materia
FROM 
	estudiante e
    INNER JOIN matricula m ON m.estudiante_id = e.id
    INNER JOIN materia ma ON m.materia_id = ma.id
GROUP BY e.id, e.nombre, e.apellido;
