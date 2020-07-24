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

create table Conocimiento
(
Tipo varchar(30) primary key not null,
Contenido text not null
);

insert into Conocimiento values
("Historia","Los primeros lenguajes de programación preceden a la computadora moderna. En un inicio los lenguajes eran códigos. La máquina del telar de Jacquard, creada en 1801, utilizaba los orificios en tarjetas perforadas para representar los movimientos de un brazo de la máquina de tejer, con el objetivo de generar patrones decorativos automáticamente. Como muchos “primeros” en la historia, el primer lenguaje de programación moderno es difícil de identificar. Desde un inicio, las restricciones de hardware definían el lenguaje. Las tarjetas perforadas permitían 80 columnas, pero algunas de estas serían utilizadas para una clasificación de cada tarjeta. FORTRAN incluía algunas palabras reservadas provenientes del Inglés, como “IF”, “GOTO” (go to) y “CONTINUE”. El uso del tambor magnético para la memoria implicaba que los programas informáticos tuvieran que estar intercalados con las rotaciones del tambor. Por lo tanto los programas eran muy dependientes del hardware. En la década de 1940 fueron creadas las primeras computadoras modernas, con alimentación eléctrica. La velocidad y capacidad de memoria limitadas forzaron a los programadores a escribir programas, en lenguaje ensamblador muy afinados. Finalmente se dieron cuenta de que la programación en lenguaje ensamblador requería de un gran esfuerzo intelectual y era muy propensa a errores. En los cincuenta, los tres primeros lenguajes de programación modernos, cuyos descendientes aún continúan siendo utilizados, son:. 
FORTRAN (1955), creado por John Backus. 
LISP (1958), creado por John McCarthy. 
COBOL (1959), creado por el Short Range Committee, altamente influenciado por Grace Hopper. 
El período comprendido entre finales de 1960 y finales de 1970 trajo un gran florecimiento de lenguajes de programación. La mayoría de los paradigmas de lenguajes de programación más importantes y actualmente en uso se inventaron en este período. La década de 1980 fueron años de consolidación relativa en los lenguajes imperativos. En vez de inventar nuevos paradigmas, se comenzó a trabajar a partir de las ideas inventadas en la década anterior. C++ combinaba la programación orientada a objetos y la programación de sistemas. El rápido crecimiento de Internet en la década de 1990 fue el siguiente gran acontecimiento histórico para los lenguajes de programación. Con la apertura de una plataforma totalmente nueva para los sistemas informáticos, Internet creó una oportunidad adoptar nuevos lenguajes. En particular, el lenguaje de programación JavaScript se hizo popular debido a su pronta integración con el navegador web Netscape Navigator, y varios lenguajes de scripting alcanzaron un amplio uso en el desarrollo de aplicaciones personalizadas para servidores web. La evolución de los lenguajes de programación continúa, tanto en la industria como en investigación. "),
("Conceptos clave",
"Codigo: conjunto de líneas de texto con los pasos que debe seguir la computadora para ejecutar un programa. 
Bloque: sección de código con una o más declaraciones y sentencias. 
Variable: Espacio de memoria que contiene una cantidad de información conocida o desconocida, es decir un valor. 
Sintaxis: Conjunto de reglas que deben seguirse al escribir el código fuente de los programas para considerarse como correctos para ese lenguaje de programación. 
Estructura de control: Parte del codigo que ermite modificar el flujo de ejecución de las instrucciones de un programa. 
Estructura de datos: Forma particular de organizar datos en una computadora para que puedan ser utilizados de manera eficiente. "
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
("Como usar",
"Para usar git necesitas un programa que tenga este sistema integrado. 
Una vez instalado ejecutas Git Bash en el directorio que quieras ocupar 
como principal para tu repo. Con el comando 'git init' creas el punto de partida 
para tu repo, una carpeta que lleva cuenta de cuales archivos subir y como cambian. 
Primero crearemos nuestra identidad con los comandos 'git config --global user.name <nombre>' 
y 'git config --global user.email <correo>@<dominio>.com'. Luego con el comando 'git add .' 
agregas todos los archivos para que esten listos para subir. 
En GitHub creas un nuevo repo, el cual estará vacio. En la linea de comandos de git escribimos 
'git commit -m <mensaje> siendo este un mensaje a nuestro gusto. 
Este es el mensaje que representara esta version de los archivos. Luego lo conectamos con github 
escribiendo  'git remote add <nombre> <url>' siendo la url la que GutHub nos entrega. 
Luego con 'git push' o de ser necesario 'git push --set-upstream origin master' 
enviaremos la carpeta a Github. Luego cada vez que queramos actualizar nuestros archivos solo hace 
falta escribir los comandos 'git add .', 'git commit -m <mensaje>' y 'git push origin master'.",
"Github"),

("Comandos",
"git init: inicializar git. git add: Añadir archivos al pendiente. 
git commit: Preparar archivos con un nombre para la version. git push: Enviar archivos a la repo. 
git pull: Recibir archivos de la repo a nuestra carpeta. git branch: Crear ramificaciones/versiones. 
git merge: Unir ramificaciones. git clone: Lo mismo que pull pero sin la necesidad de tener una version en tu carpeta.",
"Github"),

("Tips","Intenta no dar acceso a cualquier usuario a tu repo. Recuerda que Github permite volver a versiones/commit 
anteriores. El comando 'git help' puede solucionar muchos problemas.","Github"),

("Como usar","Netbeans es muy facil de instalar. A medida que lo vas instalando puedes instalar servidoes como Apache. Una vez dentro Creas un proyecto de Java. Arriba tienes un boton para iniciar tu funcion principal. Puedes crear paquetes para separar tu proyecto.","Netbeans"),
("Interfaz","Izquierda: Vista de arbol de tus proyectos y abajo de esta, vista en arbol de las funciones y propiedades de tu clase. Arriba: Menus desplegables y de ejecucion. Derecha: Propiedades de objetos. Abajo: Consola y logs.","Netbeans"),
("Como usar","En chrome, presionas F12 o Ctrl+Shift+I para abrir el panel de Consola. En la pestaña Sources tienes un navegador, 
un editor y un panel de debug. En esta pestaña podras ver las funciones de JavaScript y modificarlas y crear nuevas.","ChromeDevTools"),
("Tips","Recuerda guardar tus cambios y hacerlos trabajar con otras interfaces para no perder datos. Puedes intentar cambiar los scripts de cualquier pagina para asi aprender mas.","ChromeDevTools"),
("Como usar","Atom es muy facil de instalar y una vez listo puedes abrirlo y comenzar a crear tu codigo. Este lo puedes guardar y ver en el menu izquierdo el arbol de tu proyecto. Atom sirve para editar pero no ejecuta codigo. En el panel derecho tienes integracion con GitHub lo cual jace mucho mas facil tu trabajo.","Atom"),
("Interfaz","Panel izquierdo: Treeview. Centro: Pestañas de texto. Derecha: Menu de GitHub:","Atom"),
("Como usar","Visual Studio puede ser complicado de instalar pues ofrece lo que puede ser una cantidad confusa de implementaciones que ofrece pero para lo basico solo necesitamos .net y C#. El programa es muy parecido a otras interfaces graficas. Puedes crear tus proyectos de manera muy facil. Puedes crear archivos nuevos para tus proyectos a gusto.","Visual Studio"),
("Interfaz","Izquierda: Panel de conexion a bdd y otras fuentes de datos. Arriba: Menus y ejecucion, asi como las opciones de crear tu ejecutable. Derecha: Menu de arbol de proyecto y propiedades de objetos. Abajo: Consola de logs.","Visual Studio");

insert into PropiedadLenguaje (Nombre,Descripcion,Lenguaje) Values
("Sintaxis","Python tiene una sintaxis bastante simple. No cuenta con funciones principales a menos que se especifiquen. Los bloques de codigo no se especifican con llaves ni comandos sino con el nivel de la indentación o sangrado en el codigo. Debido a esto es de muy facil comprension. Python no usa comandos para crear variables sino que las asigna y luego estas toman un tipo de dato (a menos que se especifique el cambio) ","Python"),
("Sintaxis","Java trabaja en torno a las clases. Estas estan en un namespace comun y con este pueden interactuar. Dependiendo se como se especifique primero se ejecuta la clase main. Un programa de Java es una coleccion de instancias de objetos de estas clases. Sus variables se necesitan declarar. Sus bloques se declaran con llaves {}","Java"),
("Sintaxis","C# Trabaja en torno a las clases. Estas pueden interactuar entre si. Dependiendo se como se especifique primero se ejecuta la clase main. Un programa de C# es una coleccion de instancias de objetos de estas clases. Sus variables se necesitan declarar. Sus bloques se declaran con llaves {}","C#"),
("Ventajas","Alto nivel de programacion. Facil Comprension. Extensas librerias destinadas a areas de investigacion y cientificas. Muy facil de aprender.","Python"),
("Ventajas","Especial para trabajar con paginas web. Facil de utilizar una vez se aprende. Muy potente ya que tiene un gran alcance. Funciona en muchas diferentes plataformas.","Java"),
("Ventajas","Gran abanico de herramientas. Especial para trabajar con aplicaciones para Windows ya que tiene completa integracion con este sistema. Unicas expresiones como Lambda y LINQ","C#"),
("Documentacion","https://docs.python.org/3/","Python"),
("Documentacion","https://docs.oracle.com/en/java/","Java"),
("Documentacion","https://docs.microsoft.com/en-us/dotnet/csharp/","C#");

#23 jul y 24 jul
select * from Lenguajes where Nombre ="Python";
select * from PropiedadLenguaje where Lenguaje ="Python";
select * from PropiedadLenguaje where Lenguaje = "Python" and Nombre="Sintaxis";
select * from Herramientas;
select * from Herramientas where Nombre = "Github";
select * from PropiedadHerramienta;
select * from PropiedadHerramienta where Herramienta ="Github";
select * from PropiedadHerramienta where Herramienta ="ChromeDevTools";
select * from PropiedadHerramienta where Herramienta ="Github" and Nombre = "Como usar";

select * from Conocimiento;