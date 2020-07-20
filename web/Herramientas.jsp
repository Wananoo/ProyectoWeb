<%-- 
    Document   : Herramientas
    Created on : Jul 18, 2020, 11:22:11 PM
    Author     : wanan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="ico/icono.png">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Herramientas</title>
    </head>
    <body>
                <div class="sidenav">
  <a href="index.jsp"><img class="icono" width="30" height="25" src="ico/icono-home.png" alt="Inicio">
       Inicio</a>
  <a href="Lenguajes.jsp"><img class="icono" width="30" height="25" src="ico/icono-lenguajes.png" alt="Lenguajes">
       Lenguajes</a>
  <a href="Herramientas.jsp"><img class="icono" width="30" height="25" src="ico/icono-herramientas.png" alt="Herramientas">
      Herramientas</a>
  <a href="#"><img class="icono" width="30" height="25" src="ico/icono-contacto.png" alt="Herramientas">
      Contacto</a>
    <a href="#"><img class="icono" width="30" height="25" src="ico/icono-acerca.png" alt="Herramientas">
        Acerca de</a>
</div>
        <div class="main">
        <h1>Herramientas</h1>
        <br>
        <div>
            <p class="subtit">
                Selecciona una herramienta la cual quieres aprender:
            </p>
        </div>
        <form>
            Herramientas de ayuda para desarrolladores:
            <button class="botonlenguaje" onclick="submit();" name="Herr" value="Github">
            <img class="icono" width="30" height="25" src="ico/icono-git.png">Git/Github 
            </button>
            <button class="botonlenguaje" onclick="submit();" name="Herr" value="ChromeDev">
            <img class="icono" width="30" height="25" src="ico/icono-chrome.png">Chrome DevTools 
            </button>
            <br><br>
            Entornos de desarrollo:
            <button class="botonlenguaje" onclick="submit();" name="Herr" value="Atom">  
            <img class="icono" width="30" height="25" src="ico/icono-atom.png">Atom</button>
            <button class="botonlenguaje" onclick="submit();" name="Herr" value="NetBeans">  
            <img class="icono" width="30" height="25" src="ico/icono-netbeans.png">NetBeans</button>
            <button class="botonlenguaje" onclick="submit();" name="Herr" value="VS">  
            <img class="icono" width="30" height="25" src="ico/icono-vs.png">Visual Studio</button>
            <br><br>
            Conocimiento:
            <button class="botonlenguaje" onclick="submit();" name="Herr" value="Historia"> 
            <img class="icono" width="30" height="25" src="ico/icono-historia.png">Historia de la programacion </button>
            <button class="botonlenguaje" onclick="submit();" name="Herr" value="Conceptos">  
            <img class="icono" width="30" height="25" src="ico/icono-conceptos.png">Conceptos y Palabras Clave</button>
        </form>
        
        </div>
    </body>
</html>
