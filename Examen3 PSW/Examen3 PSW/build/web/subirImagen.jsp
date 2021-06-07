<%-- 
    Document   : subirImagen
    Created on : 5/06/2021, 06:04:19 PM
    Author     : Rafael
--%>

<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.*" %>

<%
     FileItemFactory file_factory = new DiskFileItemFactory();
     ServletFileUpload servlet_up = new  ServletFileUpload(file_factory);
     List items = servlet_up.parseRequest(request);
     String img="";
     for(int i=0;i<items.size();i++){
         FileItem item = (FileItem) items.get(0);
         if(!item.isFormField()){
             File archivo_server = new File
        ("C:\\Users\\Rafael\\Documents\\Proyectos Java\\POO-3iv8\\Netbeans\\Login\\Examen3 PSW\\web\\img\\"+item.getName());
             
             try{
                 
                 item.write(archivo_server);
                 
             }catch(Exception e){
                 System.out.println("Error al cargar imagen");
             }
             img=item.getName();
             
         }
     }
%>
<jsp:forward page="registrarProducto2.jsp" > 
    <jsp:param name="img" value="<%=img%>"></jsp:param>
</jsp:forward>


