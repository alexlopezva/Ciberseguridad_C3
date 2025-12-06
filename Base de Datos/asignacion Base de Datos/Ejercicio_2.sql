create database if not exists Colegio;
use Colegio;

create table Estudiante(
	EstudianteID int primary key auto_increment unique,
    Nombre varchar(100)
);

Create table Talleres(
	TalleresID int primary key auto_increment,
    Nombre varchar(100)
);

create table Inscripciones(
	EstudianteID int,
    TalleresID int,
    fechaInscripcion date,
    primary key (EstudianteID,TalleresID),
    foreign key (EstudianteID) references Estudiante(EstudianteID),
    foreign key (TalleresID) references Talleres(TalleresID)
);

insert into Estudiante(Nombre) values ('Scarlet Beliard'),('Axel Lopez'),('Alexander Lopezz'),('Jose Luis Lopez'),('Ana Lidia Vasquez');
insert into Talleres(Nombre) values ('Programacion'),('Ingles'),('Matematica Binaria'),('Redes Basica');


insert into Inscripciones(EstudianteID,TalleresID,fechaInscripcion) values 
(1,1, '2025-12-06'),
(1,2, '2025-12-06'),
(1,3, '2025-12-06'),
(1,4, '2025-12-06'),
(2,1, '2025-12-06'),
(2,2, '2025-12-06'),
(2,3, '2025-12-06'),
(2,4, '2025-12-06'),
(3,1, '2025-12-06'),
(3,2, '2025-12-06'),
(3,3, '2025-12-06'),
(3,4, '2025-12-06'),
(4,1, '2025-12-06'),
(4,2, '2025-12-06'),
(4,3, '2025-12-06'),
(4,4, '2025-12-06'),
(5,1, '2025-12-06'),
(5,2, '2025-12-06'),
(5,3, '2025-12-06'),
(5,4, '2025-12-06');

select * from Inscripciones;