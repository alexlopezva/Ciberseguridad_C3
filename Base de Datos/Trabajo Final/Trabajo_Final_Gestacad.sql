create database if not exists gestacad;
use gestacad; 

CREATE TABLE Departamento (
    DepartamentoID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) UNIQUE
);

CREATE TABLE Profesor (
    ProfesorID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100),
    Apellido VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    DepartamentoID INT,
    FOREIGN KEY (DepartamentoID) REFERENCES Departamento(DepartamentoID)
);

CREATE TABLE Curso (
    CursoID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100),
    Creditos INT,
    ProfesorID INT, 
    FOREIGN KEY (ProfesorID) REFERENCES Profesor(ProfesorID)
);

CREATE TABLE Estudiante (
    EstudianteID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100),
    Apellido VARCHAR(100),
    FechaNacimiento DATE,
    Email VARCHAR(100) UNIQUE
);

CREATE TABLE Clase (
    ClaseID INT PRIMARY KEY AUTO_INCREMENT,
    CursoID INT,
    Semestre VARCHAR(20),
    Anio YEAR,
    Capacidad INT,
    FOREIGN KEY (CursoID) REFERENCES Curso(CursoID)
);

CREATE TABLE Inscripcion (
    InscripcionID INT PRIMARY KEY AUTO_INCREMENT,
    EstudianteID INT,
    ClaseID INT,
    FechaInscripcion DATE,
    FOREIGN KEY (EstudianteID) REFERENCES Estudiante(EstudianteID),
    FOREIGN KEY (ClaseID) REFERENCES Clase(ClaseID),
    UNIQUE (EstudianteID, ClaseID)
);

CREATE TABLE Calificacion (
    CalificacionID INT PRIMARY KEY AUTO_INCREMENT,
    InscripcionID INT UNIQUE,
    Nota DECIMAL(4, 2),
    FOREIGN KEY (InscripcionID) REFERENCES Inscripcion(InscripcionID)
);

INSERT INTO Departamento (Nombre) VALUES
('Tecnología'),
('Matemáticas'),
('Humanidades');

INSERT INTO Profesor (Nombre, Apellido, Email, DepartamentoID) VALUES
('Ana', 'Pérez', 'ana.perez@uni.edu', 1),
('Roberto', 'Mena', 'roberto.mena@uni.edu', 2),
('Luisa', 'Rojas', 'luisa.rojas@uni.edu', 1);

INSERT INTO Curso (Nombre, Creditos, ProfesorID) VALUES
('Base de Datos', 4, 1),
('Cálculo Avanzado', 3, 2),
('Estructuras de Datos', 4, 3);

INSERT INTO Estudiante (Nombre, Apellido, FechaNacimiento, Email) VALUES
('David', 'Castro', '2001-08-10', 'david.c@est.edu'),
('Elena', 'Vargas', '2002-03-25', 'elena.v@est.edu');

INSERT INTO Clase (CursoID, Semestre, Anio, Capacidad) VALUES
(1, 'Otoño', 2025, 30),
(2, 'Otoño', 2025, 25);

INSERT INTO Inscripcion (EstudianteID, ClaseID, FechaInscripcion) VALUES
(1, 1, '2025-08-15'),
(1, 2, '2025-08-15'),
(2, 1, '2025-08-16');

INSERT INTO Calificacion (InscripcionID, Nota) VALUES
(1, 92.5),
(2, 85.0),
(3, 88.0);

UPDATE Profesor
SET Email = 'ana.perez.nuevo@infotep.edu'
WHERE ProfesorID = 1;

UPDATE Curso
SET Creditos = 3
WHERE Nombre = 'Estructuras de Datos';

DELETE FROM Calificacion
WHERE InscripcionID = 2;



-- consultas
SELECT * FROM Profesor;

SELECT
    P.Nombre,
    P.Apellido,
    D.Nombre AS Departamento
FROM
    Profesor P
JOIN
    Departamento D ON P.DepartamentoID = D.DepartamentoID;

SELECT
    E.Nombre AS Estudiante,
    E.Apellido,
    C.Nombre AS Curso,
    Cl.Semestre,
    Ca.Nota
FROM
    Estudiante E
JOIN
    Inscripcion I ON E.EstudianteID = I.EstudianteID
JOIN
    Clase Cl ON I.ClaseID = Cl.ClaseID
JOIN
    Curso C ON Cl.CursoID = C.CursoID
LEFT JOIN
    Calificacion Ca ON I.InscripcionID = Ca.InscripcionID;


SELECT
    Cu.Nombre AS Curso,
    AVG(Ca.Nota) AS NotaPromedio
FROM
    Curso Cu
JOIN
    Clase Cl ON Cu.CursoID = Cl.CursoID
JOIN
    Inscripcion I ON Cl.ClaseID = I.ClaseID
JOIN
    Calificacion Ca ON I.InscripcionID = Ca.InscripcionID
GROUP BY
    Cu.Nombre
ORDER BY
    NotaPromedio DESC;
    
    SELECT
    D.Nombre AS Departamento,
    COUNT(P.ProfesorID) AS TotalProfesores
FROM
    Departamento D
LEFT JOIN
    Profesor P ON D.DepartamentoID = P.DepartamentoID
GROUP BY
    D.Nombre;


