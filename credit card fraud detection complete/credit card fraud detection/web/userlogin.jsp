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
                    <li><a href="userlogin.html">GO_BACK</a></li>
                    
                    <li><a href="login.html">LOGOUT</a></li>
                  
              </ul>
          </div>


      </div>
    </div> 
        <div class="form">
        <h1>                         INVALID CREDENTIALS TRY AGAIN........!!!!!!<br>
        (you have limited trials left)</h1>
            
        
        
       

</div>

<%          
            Integer j=0,i=0;
 
            String username,password;
            username=request.getParameter("adm");
            password=request.getParameter("pwdd");
            
            
            Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
      
     String str="select * from user_register where username='"+username +"' and password='"+ password +"'";
   
 Statement st = con.createStatement();
 ResultSet rs = st.executeQuery(str);
        if (rs.next()) {
           
          response.sendRedirect("after user login.html");
        } else {    
            String str1="select attempts from att where username='"+username+"'";
       
              ResultSet rs1 = st.executeQuery(str1);
              while(rs1.next()){
              i=rs1.getInt("attempts");
              }
            i++;
            String s=Integer.toString(i);
             
              String str2="update att set attempts=(?)  where username='"+username+"'";
             PreparedStatement pstmt = con.prepareStatement(str2);
             pstmt.setString(1,s); 
             pstmt.execute();
             
             
             
             
             String str6="select attempts from att where username='"+username+"'";
              ResultSet rs6 = st.executeQuery(str6);
              while(rs6.next()){
              j=rs6.getInt("attempts");
              }
              
              if(j>3)
                {
                     j=0;
                     String s8=Integer.toString(j);
              String str8="update att set attempts=(?)  where username='"+username+"'";
             PreparedStatement pstmt8 = con.prepareStatement(str8);
             pstmt8.setString(1,s8); 
             pstmt8.execute();
             
             
             String str9="insert into fraud_users values('"+username + "')"; 
             
             int n=st.executeUpdate(str9);
             
               
             
             if(n>0)
          response.sendRedirect("fraud_confirm.html");
             
             
              }
              
             
                }
              
             
              
             }
    
         catch (Exception e) {
            e.printStackTrace();
        }
        
        
        %>
</body>
</html>