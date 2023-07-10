package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class purchase_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" href=\"REGS1.css\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("<div class=\"c1\">\n");
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
      out.write("                    <li><a href=\"viewproducts1.jsp\">GO_BACK</a></li>\n");
      out.write("                    \n");
      out.write("                    <li><a href=\"userlogin.html\">LOGOUT</a></li>\n");
      out.write("                  \n");
      out.write("              </ul>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("    </div> \n");
      out.write("        <div class=\"form\">\n");
      out.write("        <h1>                         INVALID PRODUCT OR CARD........!!!!!!<br>(check the card number and product id and try again)\n");
      out.write("       </h1>\n");
      out.write("            \n");
      out.write("        \n");
      out.write("        \n");
      out.write("       \n");
      out.write("\n");
      out.write("</div>-->\n");
      out.write("\n");
          
            Integer k=0,j=0,i=0;
 
            String id,card_number;
            id=request.getParameter("t1");
            card_number=request.getParameter("t2");
            
            
            Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
      
     String str="select * from addproducts where id='"+id +"' ";
   

             Statement st = con.createStatement();  
            String str1="select quantity from addproducts where id='"+id+"'";
       
              ResultSet rs1 = st.executeQuery(str1);
              while(rs1.next()){
              i=rs1.getInt("quantity");
              }
            
             
             
             
             
             String str6="select price from addproducts where id='"+id+"'";
              ResultSet rs6 = st.executeQuery(str6);
              while(rs6.next()){
              j=rs6.getInt("price");
              
              }
              String str7="select amount from card where card_number='"+card_number+"'";
              ResultSet rs7 = st.executeQuery(str7);
              while(rs7.next()){
              k=rs7.getInt("amount");
              
              if(j>k)
              {
                            response.sendRedirect("nobalance.html");

              }
              else
              {
                    k=k-j;
                    String s8=Integer.toString(k);
              String str8="update card set amount=(?)  where card_number='"+card_number+"'";
             PreparedStatement pstmt8 = con.prepareStatement(str8);
             pstmt8.setString(1,s8); 
             pstmt8.execute();
             i--;
            String s=Integer.toString(i);
             
              String str2="update addproducts set quantity=(?)  where id='"+id+"'";
             PreparedStatement pstmt = con.prepareStatement(str2);
             pstmt.setString(1,s); 
             pstmt.execute();
             response.sendRedirect("buysuccess.html");
              }
              
              
             
               
              
             
              
             }}
    
         catch (Exception e) {
            e.printStackTrace();
        }
        
        
        
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
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
