create database if not exists unoauno;
use unoauno;

create table Personas(
	PersonaID int primary key auto_increment,
    Nombre varchar(100)
);

create table Pasaporte(
	PasaporteID int primary key auto_increment,
    numero varchar(100),
    PersonaID int unique, -- asegura que sea 1 a 1
    foreign key (PersonaID) references Personas(PersonaID)
);

insert into Personas(Nombre) values ('Andres Buten'),('Alfry Cruz');

insert into Pasaporte(numero,PersonaID) values ('P123456',1),('P654321',2);

select * from Pasaporte

