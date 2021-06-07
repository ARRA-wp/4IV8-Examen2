package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import Modelo.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("        <table border=\"1\">\n");
      out.write("            <tr>\n");
      out.write("                <th>\n");
      out.write("                    <a href=\"index.jsp\" >Productos</a>\n");
      out.write("                </th>\n");
      out.write("                 <th>\n");
      out.write("                    <a href=\"registrarProducto.jsp\" >Registrar Producto</a>\n");
      out.write("                </th>\n");
      out.write("                 <th>\n");
      out.write("                    <a href=\"registrarVenta.jsp\" >Registrar Ventas</a>\n");
      out.write("                </th>\n");
      out.write("                 <th>\n");
      out.write("                    <a href=\"consultarVentas.jsp\" >Consultar Ventas</a>\n");
      out.write("                </th>\n");
      out.write("                 <th>\n");
      out.write("                    <a href=\"ServletLogueo?accion=cerrar.jsp\" >Cerrar Sesión</a>\n");
      out.write("                </th>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("        </table>\n");
      out.write("        \n");
      out.write("        <h2>Ben & Jerry's</h2>\n");
      out.write("        \n");
      out.write("        <table align=\"center\" >\n");
      out.write("            \n");
      out.write("            ");

                ArrayList<Producto> lista = ProductoDB.obtenerProducto();
                int salto=0;
                for(Producto p : lista){
            
      out.write("\n");
      out.write("            <th>\n");
      out.write("                <img src=\"img/");
      out.print( p.getImagen() );
      out.write("\" width=\"140\" height=\"140\" ><p>\n");
      out.write("                    \n");
      out.write("                    ");
      out.print( p.getNombre());
      out.write("<br>\n");
      out.write("                    ");
      out.print( p.getPrecio());
      out.write("\n");
      out.write("                    <a href=\"\" >Modificar</a>\n");
      out.write("                    <a href=\"\" >Añadir</a>\n");
      out.write("                </p>\n");
      out.write("            </th>\n");
      out.write("            ");

               salto++;
               if(salto==3){
            
            
      out.write("\n");
      out.write("            <tr></tr>\n");
      out.write("            ");

                salto=0;
                }
                }
            
      out.write("\n");
      out.write("            \n");
      out.write("        </table>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
