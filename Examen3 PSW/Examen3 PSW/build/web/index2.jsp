<%-- 
    Document   : index2
    Created on : 5/06/2021, 08:56:49 PM
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img/Icono.jpg" />
        <title>B&J Principal 2</title>
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
                <h5> <a href="registrarProducto.jsp" >Registrar Producto</a></h5>
                <a href="registrarVenta.jsp" >  <span class="icon-cart"></span></a>
                <a href="administrador.jsp" > <span class="icon-user-tie"></span></a>
                <a  href="ConsultaUsuarios.jsp"> <span class="icon-newspaper"></span></a>
                <a href="ServletLogueo?accion=cerrar.jsp" >Cerrar Sesión</a>

            </div>
        </div>
        <!--//Barra menu-->
        <br><br><br><br> 

        <div class="margen">
            <h1>Ben & Jerry's</h1>
            <div class="tablas">
                <table align="center" >

                    <%
                        ArrayList<Producto> lista = ProductoDB.obtenerProducto();
                        int salto = 0;
                        for (Producto p : lista) {
                    %>
                    <th>
                        <img src="img/<%= p.getImagen()%>" width="140" height="140" ><p>

                        <h2>  <%= p.getNombre()%></h2><h2>Precio
                            <%= p.getPrecio()%><br></h2>

   
                           <div class="botoness">
                            <a href="actualizarProducto.jsp?id=<%=p.getCodigoProducto()%>" ><button>Modificar</button></a>

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
