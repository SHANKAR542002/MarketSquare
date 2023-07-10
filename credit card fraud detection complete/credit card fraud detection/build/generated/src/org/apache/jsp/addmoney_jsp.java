package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class addmoney_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" href=\"REGS1.css\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body><div class=\"c1\">\n");
      out.write("      <div class=\"c2\">\n");
      out.write("          <div class=\"c3\">\n");
      out.write("              <h2 class=\"c4\"><img src=CREDO.jpg height=\"150\"></h2>\n");
      out.write("\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("          <div class=\"menu\">\n");
      out.write("\n");
      out.write("              <ul>\n");
      out.write("\n");
      out.write("                 <li><a href=\"home.html\">HOME</a></li>\n");
      out.write("                    <li><a href=\"addmoney.html\">GO_BACK</a></li>\n");
      out.write("                    \n");
      out.write("                    <li><a href=\"login.html\">LOGOUT</a></li>\n");
      out.write("                  \n");
      out.write("              </ul>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("    </div> \n");
      out.write("        <div class=\"form\">\n");
      out.write("        <h1>                          CHECK  CREDENTIALS AND PLEASE TRY AGAIN  ...........!!!!!!!!!</h1>\n");
      out.write("            \n");
      out.write("        \n");
      out.write("        \n");
      out.write("       \n");
      out.write("\n");
      out.write("</div>\n");
      out.write("        ");

            String card_holder_name,card_number,cvv,expiry_date;
            card_holder_name=request.getParameter("t1");
        
            card_number=request.getParameter("t2");
            cvv=request.getParameter("t3"); 
            expiry_date=request.getParameter("t4"); 
            
            
            
            Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
           ;

     String str="insert into card values('"+card_holder_name + "','"+ card_number + "','"+ cvv + "','"+ expiry_date + "',0)"; 
        Statement st = con.createStatement();
int n=st.executeUpdate(str);
if(n>0)
    response.sendRedirect("cardsuccess.html");
else
    response.sendRedirect("cardnotsuccess.html");
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
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
