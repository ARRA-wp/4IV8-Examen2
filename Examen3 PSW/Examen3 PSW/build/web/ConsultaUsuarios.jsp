<%-- 
    Document   : ConsultaUsuarios
    Created on : 6/06/2021, 11:06:16 AM
    Author     : Rafael
--%>

<%@page import="java.util.List"%>
<%@page import="Modelo.Usuario"%>
<%@page import="Modelo.AccionesUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img/Icono.jpg" />
        <title>B&J Consultar Usuario </title>
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
            <div id="navbar-right">  <a  href="index.jsp"> <span class="icon-home3"></span> </a>
                <a href="registrarProducto.jsp" >Registrar Producto</a>
                <a  href="administrador.jsp" > <span class="icon-user-tie"></span></a>
                <a  class="active"href="ConsultaUsuarios.jsp"> <span class="icon-newspaper"></span></a>
                <a href="ServletLogueo?accion=cerrar.jsp" >Cerrar Sesión</a>
            </div>
        </div>
        <!--//Barra menu-->
        <br><br><br><br>
        <div class="margen">
            <h1> Tabla de Todos los Usuarios</h1>
            <div class="tablas">

                <br>
                <table border="2" class="Tabla-Consulta" style="text-align:center; width: 100%" >
                    <thead>
                        <tr>
                            <th><h2> ID </h2></th>
                            <th><h2> Nombre </h2></th>
                            <th><h2> Password </h2></th>
                            <th><h2> Email </h2></th>
                            <th><h2> Tipo de Usuario </h2></th>

                            <th></th>
                            <th></th>
                        </tr>        
                    </thead>
                    <tbody>
                        <%
                            List<Usuario> lista = AccionesUsuario.getAllUsuario();
                            for (Usuario e : lista) {
                        %>
                        <tr>
                            <td><h2>  <%=e.getId()%>  </h2></td>
                            <td><h2>  <%=e.getNombre()%>  </h2></td>
                            <td><h2>  <%=e.getPassword()%>  </h2></td>
                            <td><h2>  <%=e.getEmail()%>  </h2></td>

                            <td><h2>  <%=e.getTusuario()%> </h2></td>

                        </tr>    
                        <%
                            }
                        %>
                    </tbody>
                </table>
                <br>
                <div class="botones">
                    <a href="index.jsp"> <button type="button"   onclick=""><span class="icon-home3"></span> Regresar al Menu Principal </button>
                    </a>

                    <a href="administrador.jsp"> <button type="button"   onclick=""><span class="icon-user-tie"></span> Regresar al Menu de Administrador </button>
                    </a>
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
