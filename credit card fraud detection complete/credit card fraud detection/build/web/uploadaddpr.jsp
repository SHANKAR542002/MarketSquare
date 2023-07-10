<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="REGS1.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><div class="c1">
      <div class="c2">
          <div class="c3">
              <h2 class="c4"><img src=CREDO.jpg height="150"></h2>

          </div>

          <div class="menu">

              <ul>

                 <li><a href="home.html">HOME</a></li>
                    <li><a href="addproducts.html">GO_BACK</a></li>
                    
                    <li><a href="login.html">LOGOUT</a></li>
                  
              </ul>
          </div>


      </div>
    </div> 
        <div class="form">
        <h1>                           SOMETHING WENT WRONG  ...........!!!!!!!!!!!!!!!!!</h1>
            
        
        
       

</div>
        <%
            String product_name,id,quantity,description,price;
            id=request.getParameter("t0");
         product_name=request.getParameter("t1");
            quantity=request.getParameter("t2");
            description=request.getParameter("t3"); 
            price=request.getParameter("t4"); 
            
            
            
            Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
           ;

     String str="insert into addproducts values('"+id+"','"+product_name + "','"+ quantity + "','"+ description + "','"+ price + "')"; 
        Statement st = con.createStatement();
int n=st.executeUpdate(str);
if(n>0)
    response.sendRedirect("prsuccess.html");
else
    response.sendRedirect("notsuccess.html");
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        %>
    </body>
</html>
