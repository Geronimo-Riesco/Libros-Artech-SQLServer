
/*  --------------------- Usando la Base de Datos CatalogoLibros -----------------------------------------  */

USE CatalogoLibros;


/*  --------------------- Consulto las tablas que hay en la Base de Datos CatalogoLibros -----------------  */

SELECT * FROM CatalogoLibros.INFORMATION_SCHEMA.TABLES;


/*  --------------------- Describiendo las estructuras de las tablas -------------------------------------  */

EXEC sp_columns Autor;
EXEC sp_columns Categoria;
EXEC sp_columns Editorial;
EXEC sp_columns Idioma;
EXEC sp_columns Libros;
EXEC sp_columns PuntoVenta;


/*  --------------------- Insertando registros en la tabla Autor  ----------------------------------------  */ 

INSERT INTO Autor (nombre, biografia)
VALUES ('Jorge Luis Borges', 'Jorge Francisco Isidoro Luis Borges, más conocido como Jorge Luis Borges, fue un destacado escritor de cuentos, poemas y ensayos argentino, extensamente considerado una figura clave tanto para la literatura en habla hispana como para la literatura universal.​');

INSERT INTO Autor (nombre, biografia)
VALUES ('Gabriel García Márquez', 'Gabriel José García Márquez fue un escritor y periodista colombiano. Reconocido principalmente por sus novelas y cuentos, también escribió narrativa de no ficción, discursos, reportajes, críticas cinematográficas y memorias.​');


/*  --------------------- Insertando registros en la tabla Editorial --------------------------------------  */ 

INSERT INTO Editorial (nombre)
VALUES ('Errara Natura');

INSERT INTO Editorial (nombre)
VALUES ('Nórdica');


/*  --------------------- Insertando registros en la tabla Idioma --------------------------------------  */ 

INSERT INTO Idioma (descripcion)
VALUES ('Español');

INSERT INTO Idioma (descripcion)
VALUES ('Ingles');


/*  --------------------- Insertando registros en la tabla Libros --------------------------------------  */ 

INSERT INTO Libros (isbn, titulo, id_autor, id_editorial, precio, stock, peso_gramos, paginas, id_idioma, edicion, resumen)
VALUES ('0-7645-26416', 'Fervor de Buenos Aires', 1, 1, 999.9, 10, 306, 200, 1, 1, 'El tema central son los suburbios de la ciudad, el linde misterioso donde el barrio se desdibuja en el campo.');

INSERT INTO Libros (isbn, titulo, id_autor, id_editorial, precio, stock, peso_gramos, paginas, id_idioma, edicion, resumen)
VALUES ('0-7645-26415', 'Cien años de soledad', 2, 1, 800.9, 15, 400, 300, 1, 5, 'Inspirado por un sueño durante su travesía en la selva, José Arcadio Buendía decide quedarse en ese punto del camino y fundar Macondo, pueblo que crece poco a poco.');


/*  --------------------- Insertando registros en la tabla Categoria --------------------------------------  */ 

INSERT INTO Categoria (descripcion)
VALUES ('Científicos');

INSERT INTO Categoria (descripcion)
VALUES ('Ficción');


/*  --------------------- Insertando registros en la tabla PuntoVenta --------------------------------------  */ 

INSERT INTO PuntoVenta (direccion, provincia, nombre)
VALUES ('Av. La Plata 794', 'Buenos Aires', 'La Maga Libros');

INSERT INTO PuntoVenta (direccion, provincia, nombre)
VALUES ('Bonpland 1562', 'Buenos Aires', 'ICARO Librería');


/*  --------------------- Consultando todas las tablas -----------------------------------------------------  */  

SELECT * FROM Autor;
SELECT * FROM Categoria;
SELECT * FROM Editorial;
SELECT * FROM Idioma;
SELECT * FROM Libros;
SELECT * FROM PuntoVenta;