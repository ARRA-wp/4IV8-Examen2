<%-- 
    Document   : Validaruser
    Created on : 1/05/2021, 12:48:27 PM
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validar Usuario</title>
    </head>
    <body>
        
        <%
            
            try{
                
                //aqui ya puedo incorporar codigo java
        Connection con = null;
        Statement set = null;
        ResultSet rs = null;
        
        String url, userName, password, driver;
        
        url = "jdbc:mysql://localhost/carrito";
        userName = "Andres";
        password = "andy2003";
        
        driver = "com.mysql.jdbc.Driver";
            
            //Parametros
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    
    //Coneccion
    Class.forName(driver);
    con = DriverManager.getConnection(url, userName, password);
    //Fin coneccion
    
    
    Statement st = con.createStatement();
   
    rs = st.executeQuery("select * from musuario where nom_usu='" + userid + "' and edad_usu='" + pwd + "'");
    if (rs.next()) {
        //Redireccion
        //session.setAttribute("userid", userid);
         //response.sendRedirect("index.html");
         %>
         <h1>Correcto :3</h1>
         <%
    } else {

%>
<h1>Administrador eh!! ;3</h1>
<%
    
    rs = st.executeQuery("select * from administrador where nom_adm='" + userid + "' and edad_adm='" + pwd + "'");
    if (rs.next()) {
       response.sendRedirect("Administrador.jsp");
    } else {
    
        %>
<h1>Incorrecto :c</h1>
<%
    
    }
    }
}catch(SQLException ed){
        %>
        <h1>Error de conección :C</h1>
        <%
            }
%>
        
    </body>
</html>
