<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <link rel="stylesheet" href="REGS1.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<div class="c1">
      <div class="c2">
          <div class="c3">
              <h2 class="c4"><img src=CREDO.jpg height="150"></h2>

          </div>

          <div class="menu">

              <ul>

                 <li><a href="home.html">HOME</a></li>
                    <li><a href="viewproducts1.jsp">GO_BACK</a></li>
                    
                    <li><a href="userlogin.html">LOGOUT</a></li>
                  
              </ul>
          </div>


      </div>
    </div> 
        <div class="form">
        <h1>                         INVALID PRODUCT OR CARD........!!!!!!<br>(check the card number and product id and try again)
       </h1>
            
        
        
       

</div>-->

<%          
            Integer m=1,k=0,j=0,i=0;
 
            String id,card_number,quantity1;
            id=request.getParameter("t1");
            card_number=request.getParameter("t2");
            quantity1=request.getParameter("t3");
            
            
            Connection con = null;
        try {
            int x1=Integer.parseInt(quantity1);
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
              m=j*x1;
              
              String str7="select amount from card where card_number='"+card_number+"'";
              ResultSet rs7 = st.executeQuery(str7);
              while(rs7.next()){
              k=rs7.getInt("amount");
              
              if(m>k)
              {
                            response.sendRedirect("nobalance.html");

              }
              else
              {
                    k=k-m;
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
        
        
        %>
</body>
</html>