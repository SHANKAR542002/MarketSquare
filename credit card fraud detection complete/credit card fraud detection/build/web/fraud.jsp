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
                    <li><a href="addproducts.html">ADD_PRODUCTS</a></li>
                    <li><a href="viewproducts.jsp">VIEW_PRODUCTS</a></li>
                    <li><a href="fraud.jsp">FRAUD_USERS</a></li>
                    <li><a href="login.html">LOGOUT</a></li>
              </ul>
          </div>


      </div>
    </div>
    <div class="form">
        <h1>                           FRAUD_USERS</h1>
       
      <div class="c5">
          
        <table border="4" >
            
            
            
            <tr>
                <th>FRAUD USERS</th>
                
               
                
            </tr>
       
       <%
               try{
                   Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
        Statement st = con.createStatement();
                   String str="select * from fraud_users";
                   
                   ResultSet rs=st.executeQuery(str);
                   
                   
                   while(rs.next()){
                     %> 
                     <tr> 
                         <td><%=rs.getString("username")%></td>
                        
                         
                         
                         
                         
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
