<%-- 
    Document   : registrarProducto
    Created on : 5/06/2021, 05:49:53 PM
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img/Icono.jpg" />
        <title>B&J R/Producto</title>   
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
                <h5> <a class="active" href="registrarProducto.jsp" >Registrar Productos</a></h5>
                <h5> <a href="registrarProducto2.jsp"> Registrar Ventas</a></h5>
                <h5>   <a href="consultarVentas.jsp"> Consultar Ventas</a></h5>
                <a  href="administrador.jsp" ><span class="icon-user-tie"></span></a>
                <a href="ServletLogueo?accion=cerrar.jsp" >Cerrar Sesión</a>
            </div>
        </div>
        <!--//Barra menu-->
        <br><br><br><br>        
        <div class="margen">
            <h1 align="center" >Cargar imagen</h1>
            <div class="margen">

                <div class="tabla-img">

                    <table align="center">

                        <form action="subirImagen.jsp" enctype="multipart/form-data" method="post" >
                            <tr>

                                <th><h2>Imagen</h2></th>
                                
                                <th><input type="file" name="file" ></th>

                            </tr>
                        </form>

                    </table>
                    <h3 style="text-align: center">
                        <input type="submit" value="Registrar" name="CargarImagen" ></h3>
                </div>
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
