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
  <a href="Contacto.jsp"><img class="icono" width="30" height="25" src="ico/icono-contacto.png" alt="Herramientas">
      Contacto</a>
    <a href="Acerca.jsp"><img class="icono" width="30" height="25" src="ico/icono-acerca.png" alt="Herramientas">
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
        <form action="ObtenerH" method="get">
            Herramientas de ayuda para desarrolladores:
            <button class="botonlenguaje" onclick="submit();" name="Herr" value="Github">
            <img class="icono" width="30" height="25" src="ico/icono-git.png">Git/Github 
            </button>
            <button class="botonlenguaje" onclick="submit();" name="Herr" value="ChromeDevTools">
            <img class="icono" width="30" height="25" src="ico/icono-chrome.png">Chrome DevTools 
            </button>
        </form>
        <form action="ObtenerE" method="get">
            <br><br>
            Entornos de desarrollo:
            <button class="botonlenguaje" onclick="submit();" name="Herr" value="Atom">  
            <img class="icono" width="30" height="25" src="ico/icono-atom.png">Atom</button>
            <button class="botonlenguaje" onclick="submit();" name="Herr" value="NetBeans">  
            <img class="icono" width="30" height="25" src="ico/icono-netbeans.png">NetBeans</button>
            <button class="botonlenguaje" onclick="submit();" name="Herr" value="Visual Studio">  
            <img class="icono" width="30" height="25" src="ico/icono-vs.png">Visual Studio</button>
            <br><br>
        </form>
        <form action="ObtenerC" method="get">
            Conocimiento:
            <button class="botonlenguaje" onclick="submit();" name="Herr" value="Historia"> 
            <img class="icono" width="30" height="25" src="ico/icono-historia.png">Historia de la programacion </button>
            <button class="botonlenguaje" onclick="submit();" name="Herr" value="Conceptos clave">  
            <img class="icono" width="30" height="25" src="ico/icono-conceptos.png">Conceptos y Palabras Clave</button>
        </form>
        <br>
        <%
            String HerrS = request.getParameter("Herr");
            if (!(HerrS==null)&&(!HerrS.equals("Historia"))&&(!HerrS.equals("Conceptos clave")))
            {%>
            <p>Herramienta: ${Herramienta}</p>
            <p>Enlace: <a href="" onclick="this.href='${Enlace}'"> Enlace Oficial </a></p>
            <p>Descripcion de ${Herramienta}: <br> ${Descripcion}</p><br>
            <p>Como usar ${Herramienta}: <br> ${ComoUsar}</p><br>
            <p>Tips/Interfaz de ${Herramienta}: <br> ${Tips}</p><br>
            <%
                if(HerrS.equals("Github"))
                {
                    %> <p>Comandos de ${Herramienta}: <br> ${Comandos}</p><br><%
                }
               }
               else
                {
            %>
            <p>Conocimiento: ${Herramienta}</p><br>
            <p>${Contenido}</p><br>
            <%}%>
        </div>
    </body>
</html>
