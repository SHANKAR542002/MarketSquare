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
                    <li><a href="am.html">GO_BACK</a></li>
                    
                    <li><a href="login.html">LOGOUT</a></li>
                  
              </ul>
          </div>


      </div>
    </div> 
        <div class="form">
        <h1>                          CHECK  CREDENTIALS AND PLEASE TRY AGAIN  ...........!!!!!!!!!</h1>
            
        
        
       

</div>
        <%
            Integer i=0,j=0;
            String card_holder_name,card_number,cvv,expiry_date,amount;
           
            card_holder_name=request.getParameter("t1");
        
            card_number=request.getParameter("t2");
            cvv=request.getParameter("t3"); 
            expiry_date=request.getParameter("t4"); 
            amount=request.getParameter("t5"); 
            
            
            Connection con = null;
        try {int x=Integer.parseInt(amount);
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
              Statement st = con.createStatement();
           String str1="select amount from card where card_number='"+card_number+"'";
       
              ResultSet rs1 = st.executeQuery(str1);
              while(rs1.next()){
              i=rs1.getInt("amount");
              }
            j=i+x;
            String s=Integer.toString(j);

     String str="update card set amount='"+ s +"' where card_number='"+ card_number +"' and cvv='"+cvv+"' and expiry_date='"+ expiry_date+"'"; 
      
int n=st.executeUpdate(str);
if(n>0)
    response.sendRedirect("amsuccess.html");
else
    response.sendRedirect("cardnotsuccess1.html");
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        %>
    </body>
</html>
