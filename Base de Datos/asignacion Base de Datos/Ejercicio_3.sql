create database if not exists Ventas;
use Ventas;

create table Clientes(
	ClienteID int primary key auto_increment,
	nombre varchar(100),
    correoelectronico varchar(100)
);

create table Productos(
	ProductoID int primary key auto_increment,
	descripcion varchar(100),
	precio float,
    stock int
);

create table Faturas(
	FacturaID int primary key auto_increment,
    ClienteID int,
    fecha date,
    total float,
    foreign key (ClienteID) references Clientes(ClienteID)    
    );
    
create table detalles_factura(
	DetalleID int primary key auto_increment,
    FacturaID int,
    ProductoID int,
    Cantidad int,
    precioud float,
    foreign key (FacturaID) references Faturas(FacturaID),
    foreign key (ProductoID) references Productos(ProductoID)
);

INSERT INTO clientes (nombre, correoelectronico) VALUES
('Alex Lopez', 'alex@example.com'),
('Maria Rodriguez', 'maria@example.com'),
('Pedro Gomez', 'pedro@example.com');

INSERT INTO productos (descripcion, precio, stock) VALUES
('Laptop Gamer', 1250.00, 15),
('Mouse Inalámbrico', 25.50, 100),
('Monitor 27"', 300.00, 40);

INSERT INTO faturas (ClienteID, fecha, total) VALUES
(1, '2025-11-20', 1275.50),
(1, '2025-11-25', 600.00),
(2, '2025-11-28', 325.50);

INSERT INTO detalles_factura (FacturaID, ProductoID, cantidad, precioud) value
(1, 1, 1, 1250.00),
(1, 2, 1, 25.50); 

INSERT INTO detalles_factura (FacturaID, ProductoID, cantidad, precioud) value
(2, 3, 2, 300.00);

INSERT INTO detalles_factura (FacturaID, ProductoID, cantidad, precioud) value
(3, 3, 1, 300.00),
(3, 2, 1, 25.50);

SELECT * FROM faturas;
SELECT * FROM clientes;
SELECT * FROM productos;
SELECT * FROM detalles_factura;
