<%-- 
    Document   : registro.jsp
    Created on : 5/06/2021, 09:19:20 PM
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img/Icono.jpg" />
        <title>B&J Registro</title>
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
                <a href="index.jsp" > <span class="icon-home3"></span></a>
                <a href="registrarVenta.jsp" >  <span class="icon-cart"></span></a>
                <a href="login.jsp"> <span class="icon-user"></span></a>
                <a class="active" href="registro.jsp" > <span class="icon-user-plus"></span> </a>
                <a href="ServletLogueo?accion=cerrar.jsp" >Cerrar Sesión</a>
            </div>
        </div>
        <!--//Barra menu-->
        <br><br><br><br>
        <div class="margen">
            <h1>Registrar</h1>
            <div class="tablas">
                <table>
                    <form action="AgregarUsuario" method="post" >
                        <input type="hidden" name="accion" value="loguin" >
                        <tr>
                            <td><h2>Usuario</h2></td>
                            <td><input type="text" placeholder="usuario" name="nombre" ></td>
                        </tr>
                        <tr>
                            <td><h2>Contraseña</h2></td>
                            <td><input type="text" placeholder="contraseña" name="password" ></td>
                        </tr>
                        <tr>
                            <td><h2>Email</h2></td>
                            <td><input type="text" placeholder="correo" name="email" ></td>
                        </tr>
                     

                    </form>

                </table>
                <h3 style="text-align: center"><input type="submit" name="btn" value="Ingresar" >
                        <input type="hidden" name="Tipo" value="1" >
                </h3>
            </div>
        </div>
                <script>
            // When the user scrolls down 80px from the top of the document, resize the navbar's padding and the logo's font size
            window.onscroll = function () {
                scrollFunction()
            };

            function scrollFunction() {
                if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
                    document.getElementById("navbar").style.padding = "30px 10px";
                    document.getElementById("logo").style.fontSize = "25px";
                } else {
                    document.getElementById("navbar").style.padding = "80px 10px";
                    document.getElementById("logo").style.fontSize = "35px";
                }
            }
        </script>
    </body>
</html>
