<%-- 
    Document   : index.jsp
    Created on : 3/06/2021, 06:00:18 PM
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>B&J Principal </title>
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

                <a class="active" href="index.jsp" > <span class="icon-home3"></span></a>
                <a href="registrarVenta.jsp" >  <span class="icon-cart"></span></a>
                <a href="login.jsp"> <span class="icon-user"></span></a>
                <a href="ServletLogueo?accion=cerrar.jsp" >Cerrar Sesión</a>
            </div>
        </div>
        <!--//Barra menu-->

        <br><br><br><br>  
        <div class="margen">
            <div class="tablas">
               
                <table align="center" >

                    <%
                        ArrayList<Producto> lista = ProductoDB.obtenerProducto();
                        int salto = 0;
                        for (Producto p : lista) {
                    %>
                    <th>
                        <img src="img/<%= p.getImagen()%>" width="240" height="240" ><p>

                            <%= p.getNombre()%><br>Precio
                            <%= p.getPrecio()%><br>
                        <div class="botoness">
                            <a href="añadirCarrito.jsp?id=<%=p.getCodigoProducto()%>" > <button>Añadir</button></a>
                        </div>
                        </p>
                    </th>
                 
                    <%
                        salto++;
                        if (salto == 3) {

                    %>
                    <tr></tr>
                    <%                        salto = 0;
                            }
                        }
                    %>

                </table>
            </div>
        </div>



    </body>
</html>
