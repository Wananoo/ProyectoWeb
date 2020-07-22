create database devhelp;
use devhelp;

create table Lenguajes
(
Nombre varchar(30) primary key not null,
Dificultad int not null
);
create table PropiedadLenguaje
(
ID int primary key not null AUTO_INCREMENT,
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
ID int primary key not null AUTO_INCREMENT,
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
("Visual Studio","https://visualstudio.microsoft.com/vs/community/","Entorno de desarrollo muy versatil para diferentes lenguajes y abarcar diferentes plataformas.");

#21
insert into PropiedadHerramienta (Nombre,Descripcion,Herramienta) Values
("Como usar","Tutorial basico de cómo usar Git/Guthub","Github"),
("Comandos","Comandos de git para usar en tus repos","Github"),
("Tips","Consejos para usar Git/Guthub","Github"),
("Como usar","Tutorial basico de cómo usar Netbeans","Netbeans"),
("Interfaz","Vista general de la Interfaz de Netbeans","Netbeans"),
("Como usar","Tutorial basico de cómo usar Devtools","ChromeDevTools"),
("Tips","Consejos para usar Devtools","ChromeDevTools"),
("Como usar","Tutorial basico de cómo usar Atom","Atom"),
("Interfaz","Vista general de la Interfaz de Atom","Atom"),
("Como usar","Tutorial basico de cómo usar Visual Studio","Visual Studio"),
("Interfaz","Vista general de la Interfaz de Visual Studio","Visual Studio");

insert into PropiedadLenguaje (Nombre,Descripcion,Lenguaje) Values
("Sintaxis","Sintaxis basica de Python","Python"),
("Sintaxis","Sintaxis basica de Java","Java"),
("Sintaxis","Sintaxis basica de C#","C#"),
("Ventajas","Ventajas principales al usar Python","Python"),
("Ventajas","Ventajas principales al usar Java","Java"),
("Ventajas","Ventajas principales al usar C#","C#"),
("Documentacion","Documentacion oficial de Python","Python"),
("Documentacion","Documentacion oficial de Java","Java"),
("Documentacion","Documentacion oficial de C#","C#");