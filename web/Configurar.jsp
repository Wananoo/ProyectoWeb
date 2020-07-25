<%-- 
    Document   : Configurar
    Created on : Jul 25, 2020, 12:08:01 AM
    Author     : wanan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="ico/icono.png">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Configurar</title>
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
   <br><br><br><br><br><a style="font-size: 15px;" href="https://www.paypal.com/paypalme/Wananoo?locale.x=es_XC">Donar</a>
</div>
        <div class="main">
        <h1>Ingrese su usuario y contraseña de MySQL</h1>
        <br>
        <div>
            <p class="subtit">
            <form method="post">
                Usuario (root): <input placeholder="user" style="background-color:#383838;color:white;" type="text" name="user" />
                Contraseña MySQL: <input placeholder="pass" style="background-color:#383838;color:white;" type="password" name="pass" />
                <input  style="background-color:#383838;color:white;" type="submit" formaction="ConfigurarSQL" value="Conectar"/>
            </form>
            </p>
        </div>
        </div>
    </body>
</html>
