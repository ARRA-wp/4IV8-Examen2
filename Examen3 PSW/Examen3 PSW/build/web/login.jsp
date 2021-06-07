<%-- 
    Document   : login
    Created on : 5/06/2021, 08:45:10 PM
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img/Icono.jpg" />
        <title>B&J Iniciar Sesión</title>
        <link rel="shortcut icon" href="img/Icono.jpg" />
        <link rel="stylesheet" href="./CSS/Menu.css">
        <link rel="stylesheet" href="./CSS/Tablas.css">
        <link rel="stylesheet" href="./CSS/Detalles.css">
        <link rel="stylesheet" href="style.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600&family=Roboto+Slab&display=swap" rel="stylesheet">
    </head>
    <body>
        <!--//Barra menu-->
        <div id="navbar">
            <img src="img/Logo.png">
            <div id="navbar-right">
                <a href="index.jsp" ><span class="icon-home3"></span></a>
                <a href="registrarVenta.jsp"> <span class="icon-cart"></span></a>
                <a class="active" href="login.jsp"> <span class="icon-user"></span></a>
                <a  href="registro.jsp" > <span class="icon-user-plus"></span> </a>
                <a href="ServletLogueo?accion=cerrar.jsp" >Cerrar Sesión</a>
            </div>
        </div>
        <!--//Barra menu-->
        <br><br><br><br>  
        <div class="margen">
            <h1>Ingresar</h1>
            <div class="tablas">
                <table>
                    <form action="ValidarUser.jsp">

                        <input type="hidden" name="accion" value="loguin" >
                        <tr>
                            <td><h2>Usuario</h2></td>
                            <td><input type="text" placeholder="usuario" name="nombre" ></td>
                        </tr>
                        <tr>
                            <td><h2>Contraseña</h2></td>
                            <td><input type="text" placeholder="contraseña" name="contraseña" ></td>
                        </tr>
                        
                    </form>
                </table>

                <h1 style="text-align: "><input type="submit" name="btn" value="IniciarSesion" ></h1>

            </div>
            
            <div class="botoness">
                <a href="registro.jsp" ><button type="button"   onclick=""> <span class="icon-user-plus"></span> No tienes cuenta? Pulsa aqui</button></a>
            </div>
        </div>
               
    </body>
</html>
