create database devhelp;
use devhelp;

create table Lenguajes
(
Nombre varchar(30) primary key not null,
Dificultad int not null
);

create table PropiedadLenguaje
(
ID int primary key not null,
Nombre varchar(30) not null,
Descripcion text not null,
Lenguaje varchar(30),
constraint FK_Propiedad_Lenguaje foreign key (Lenguaje) references Lenguajes(Nombre)
);

create table Herramientas
(
Nombre varchar(30) primary key not null,
Enlace text not null,
Descripcion text not null
);

create table PropiedadHerramienta
(
ID int primary key not null,
Nombre varchar(30) not null,
Descripcion text not null,
Herramienta varchar(30),
constraint FK_Propiedad_Herramienta foreign key (Herramienta) references Herramientas(Nombre)
);

create table RetroalimentacionTexto
(
ID int primary key not null AUTO_INCREMENT,
Asunto text not null,
Comentario text not null,
Autor varchar(20) not null
);

create table RetroalimentacionBoton
(
Util bit not null,
Articulo int not null
);

insert into Lenguajes Values
("Python",0),
("Java",1),
("C#",2);
insert into Herramientas Values
("GitHub","https://github.com/","Herramienta que provee hosting para desarrollo de software y control de versiones del mismo."),
("NetBeans","https://netbeans.org/","Entorno de desarrollo para diversos lenguajes, en especial Java."),
("ChromeDevTools","https://developers.google.com/web/tools/chrome-devtools","Conjunto de herramientas para desarrollo web directamente en Google Chrome."),		
("Atom","https://atom.io/","Aplicacion de esctritorio para principalmente desarrollo web."),
("Visual Studio","https://visualstudio.microsoft.com/vs/community/","Entorno de desarrollo muy versatil para diferentes lenguajes y abarcar diferentes plataformas.")
