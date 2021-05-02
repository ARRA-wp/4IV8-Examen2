<%-- 
    Document   : Consultar
    Created on : 1/05/2021, 04:19:32 PM
    Author     : Rafael
--%>

<%-- 
    Document   : consultar
    Created on : 29/04/2021, 05:48:58 PM
    Author     : demon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta</title>
    </head>
    <body>
        <h1>Tabla General de Registro de usuarios</h1>
        <div class="containerTable" >
            <table border="2" width="50%">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Edad</th>
                        
                    </tr>        
                </thead>
                <tbody>
                    <%
                        //aqui ya puedo incorporar codigo java
                        Connection con = null;
                        Statement set = null;
                        ResultSet rs = null;
                        String url, userName, password, driver;
                        url = "jdbc:mysql://localhost/carrito";
                        userName = "Andres";
                        password = "andy2003";
                        driver = "com.mysql.jdbc.Driver";
                        
                        try{
                            Class.forName(driver);
                            con = DriverManager.getConnection(url, userName, password);
                            try{
                                set = con.createStatement();
                                //necesito los parametros del formulario
                                String q;
                                
                                q = "select * from musuario order by id_usu asc";
                                
                                rs = set.executeQuery(q);
                                while(rs.next()){
                                    %>
                <tr>
                    <td><%=rs.getInt("id_usu")%> </td>
                    <td><%=rs.getString("nom_usu")%> </td>
                    <td><%=rs.getInt("edad_usu")%> </td>
                    
                                        
                </tr>                
                                    
                                    <%
                                
                                }
                            rs.close();    
                            set.close();
                            
                            }catch(SQLException ed){
                                System.out.println("Error al consultar la tabla");
                                System.out.println(ed.getMessage());
                                %>
                </tbody>
            </table> 
                <br>
                <h1>Error no se pueden visualiar los datos en este momento</h1>
                                <%
                            
                            }
                        con.close();
                        
                        }catch(Exception e){
                            System.out.println("Error al conectar la bd");
                            System.out.println(e.getMessage());
                            System.out.println(e.getStackTrace());
                        %>
                <br>
                <h1>Sitio en Construccion</h1>        
                        <%
                        
                        }
                        
                    %>
                
                    
                    <h1>Tabla General de Registro de Admistrador</h1>
        <div class="containerTable" >
            <table border="2" width="50%">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Edad</th>
                        
                    </tr>        
                </thead>
                <tbody>
                    <%
                        //aqui ya puedo incorporar codigo java
                        
                        url = "jdbc:mysql://localhost/carrito";
                        userName = "Andres";
                        password = "andy2003";
                        driver = "com.mysql.jdbc.Driver";
                        
                        try{
                            Class.forName(driver);
                            con = DriverManager.getConnection(url, userName, password);
                            try{
                                set = con.createStatement();
                                //necesito los parametros del formulario
                                String q;
                                
                                q = "select * from administrador order by id_adm asc";
                                
                                rs = set.executeQuery(q);
                                while(rs.next()){
                                    %>
                <tr>
                    <td><%=rs.getInt("id_adm")%> </td>
                    <td><%=rs.getString("nom_adm")%> </td>
                    <td><%=rs.getInt("edad_adm")%> </td>
                    
                                        
                </tr>                
                                    
                                    <%
                                
                                }
                            rs.close();    
                            set.close();
                            
                            }catch(SQLException ed){
                                System.out.println("Error al consultar la tabla");
                                System.out.println(ed.getMessage());
                                %>
                </tbody>
            </table> 
                <br>
                <h1>Error no se pueden visualiar los datos en este momento</h1>
                                <%
                            
                            }
                        con.close();
                        
                        }catch(Exception e){
                            System.out.println("Error al conectar la bd");
                            System.out.println(e.getMessage());
                            System.out.println(e.getStackTrace());
                        %>
                <br>
                <h1>Sitio en Construccion</h1>        
                        <%
                        
                        }
                        
                    %>
                    <a href="Administrador.jsp" >Regresar a la Pagina Administrador</a>
                    <br>
            <a href="index.html" >Regresar a la Pagina Principal</a>    
        </div>
    </body>
</html>
