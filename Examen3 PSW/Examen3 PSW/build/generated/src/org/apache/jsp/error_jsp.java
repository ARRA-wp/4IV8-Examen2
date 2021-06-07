package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import Modelo.*;

public final class error_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('<');
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
      out.write("        <title>B&J Principal </title>\n");
      out.write("        <link rel=\"shortcut icon\" href=\"img/Icono.jpg\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"./CSS/Menu.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"./CSS/Tablas.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"./CSS/Detalles.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600&family=Roboto+Slab&display=swap\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--//Barra menu-->\n");
      out.write("        <div id=\"navbar\">\n");
      out.write("            <img src=\"img/Logo.png\">\n");
      out.write("            <div id=\"navbar-right\">\n");
      out.write("\n");
      out.write("                <a class=\"active\" href=\"index.jsp\" > <span class=\"icon-home3\"></span></a>\n");
      out.write("                <a href=\"registrarVenta.jsp\" >  <span class=\"icon-cart\"></span></a>\n");
      out.write("                <a href=\"login.jsp\"> <span class=\"icon-user\"></span></a>\n");
      out.write("                <a href=\"ServletLogueo?accion=cerrar.jsp\" >Cerrar Sesión</a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!--//Barra menu-->\n");
      out.write("        <h1>Hubo un error intentelo de nuevo</h1>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            // When the user scrolls down 80px from the top of the document, resize the navbar's padding and the logo's font size\n");
      out.write("            window.onscroll = function () {\n");
      out.write("                scrollFunction()\n");
      out.write("            };\n");
      out.write("\n");
      out.write("            function scrollFunction() {\n");
      out.write("                if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {\n");
      out.write("                    document.getElementById(\"navbar\").style.padding = \"30px 10px\";\n");
      out.write("                    document.getElementById(\"logo\").style.fontSize = \"25px\";\n");
      out.write("                } else {\n");
      out.write("                    document.getElementById(\"navbar\").style.padding = \"80px 10px\";\n");
      out.write("                    document.getElementById(\"logo\").style.fontSize = \"35px\";\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("\n");
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
