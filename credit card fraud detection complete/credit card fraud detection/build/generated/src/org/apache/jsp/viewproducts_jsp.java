package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class viewproducts_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license\n");
      out.write("Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/html.html to edit this template\n");
      out.write("-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head> <title>view products</title>\n");
      out.write("        \n");
      out.write("\n");
      out.write("                <link rel=\"stylesheet\" href=\"viewpr.css\">\n");
      out.write("    <title>view</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("  <div class=\"c1\">\n");
      out.write("      <div class=\"c2\">\n");
      out.write("          <div class=\"c3\">\n");
      out.write("              <h2 class=\"c4\"><img src=CREDO.jpg height=\"150\"></h2>\n");
      out.write("\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("          <div class=\"menu\">\n");
      out.write("               <ul>\n");
      out.write("                <li><a href=\"home.html\">HOME</a></li>\n");
      out.write("                    <li><a href=\"addproducts.html\">ADD_PRODUCTS</a></li>\n");
      out.write("                    <li><a href=\"viewproducts.jsp\">VIEW_PRODUCTS</a></li>\n");
      out.write("                    <li><a href=\"fraud.jsp\">FRAUD_USERS</a></li>\n");
      out.write("                    <li><a href=\"login.html\">LOGOUT</a></li>\n");
      out.write("              </ul>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"form\">\n");
      out.write("        <h1>                           PRODUCTS</h1>\n");
      out.write("       \n");
      out.write("      <div class=\"c5\">\n");
      out.write("         \n");
      out.write("        <table border=\"4\" >\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <tr>\n");
      out.write("                                <th>PRODUCT ID</th>\n");
      out.write("\n");
      out.write("                <th>PRODUCT NAME</th>\n");
      out.write("                <th>PRODUCT QUANTITY</th>\n");
      out.write("                <th>DESCRIPTION</th>\n");
      out.write("                <th>PRODUCT PRICE</th>\n");
      out.write("               \n");
      out.write("                \n");
      out.write("            </tr>\n");
      out.write("       \n");
      out.write("       ");

               try{
                   Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
        Statement st = con.createStatement();
                   String str="select * from addproducts";
                   
                   ResultSet rs=st.executeQuery(str);
                   
                   
                   while(rs.next()){
                     
      out.write(" \n");
      out.write("                     <tr> \n");
      out.write("                                                  <td>");
      out.print(rs.getString("id"));
      out.write("</td>\n");
      out.write("\n");
      out.write("                         <td>");
      out.print(rs.getString("product_name"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs.getString("quantity"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs.getString("description"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs.getString("price"));
      out.write("</td>\n");
      out.write("                         \n");
      out.write("                         \n");
      out.write("                         \n");
      out.write("                         \n");
      out.write("                                 ");

                
                   }
               } catch(Exception e){
                   
               }        
        
      out.write("\n");
      out.write("        \n");
      out.write("        </table>\n");
      out.write("      </div>\n");
      out.write("      </center>\n");
      out.write("\n");
      out.write("        \n");
      out.write("       \n");
      out.write("\n");
      out.write("</div>\n");
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
