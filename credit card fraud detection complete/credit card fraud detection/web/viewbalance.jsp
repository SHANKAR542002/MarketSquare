<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/html.html to edit this template
-->

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head> <title>view products</title>
        

                <link rel="stylesheet" href="viewpr.css">
    <title>view</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                    <li><a href="newhtml.html">GO_BACK</a></li>
                    <li><a href="userlogin.html">LOGOUT</a></li>
              </ul>
          </div>


      </div>
    </div>
    <div class="form">
        <h1>                         YOUR  BALANCE</h1>
       
      <div class="c5">
         
        <table border="4" >
            
            
            
            <tr>
                <th>CARD HOLDER NAME</th>
                <th>CARD NUMBER</th>
                <th>AMOUNT</th>
               
               
                
            </tr>
       
       <%
           String card_number;
                    card_number=request.getParameter("t2");
               try{
                    
                   Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
        Statement st = con.createStatement();
                   String str="select * from card where card_number='"+ card_number+"'";
                   
                   ResultSet rs=st.executeQuery(str);
                   
                   
                   while(rs.next()){
                     %> 
                     <tr> 
                         <td><%=rs.getString("card_holder_name")%></td>
                         <td><%=rs.getString("card_number")%></td>
                         <td><%=rs.getString("amount")%></td>
                        
                         
                         
                         
                         
                                 <%
                
                   }
               } catch(Exception e){
                   
               }        
        %>
        
        </table>
      </div>
      </center>

        
       

</div>
    </body>
</html>
