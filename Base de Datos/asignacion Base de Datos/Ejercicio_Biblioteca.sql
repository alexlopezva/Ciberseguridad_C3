CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

CREATE TABLE autores(
	AutorID int primary key auto_increment,
    nombre varchar(100),
    nacionalidad varchar(100)
);

CREATE TABLE libros(
	isbn varchar(20) primary key,
    titulo varchar(200),
    AutorID int,
    fecha_publicacion int,
    genero varchar (50),
    foreign key (AutorID) references autores(AutorID)
);
INSERT INTO autores (nombre, nacionalidad) VALUES
('Gabriel García Márquez', 'Colombiana'),
('Jane Austen', 'Británica'),
('George Orwell', 'Británica');

INSERT INTO libros (isbn, titulo, AutorID, fecha_publicacion, genero) VALUES
('978-0307474728', 'Cien años de soledad', 1, 1967, 'Realismo mágico'),
('978-0307474773', 'El amor en los tiempos del cólera', 1, 1985, 'Romance');

-- Libros de Jane Austen (id_autor: 2)
INSERT INTO libros (isbn, titulo, AutorID, fecha_publicacion, genero) VALUES
('978-0141439518', 'Orgullo y prejuicio', 2, 1813, 'Novela clásica');

-- Libros de George Orwell (id_autor: 3)
INSERT INTO libros (isbn, titulo, AutorID, fecha_publicacion, genero) VALUES
('978-0451524935', '1984', 3, 1949, 'Distopía');


select * from libros;

Select
	l.titulo AS Titulo,
    a.nombre AS Autor,
    l.fecha_publicacion AS Año
From
	libros l
Join
	autores a ON l.AutorID = a.AutorID
order by
	a.nombre;