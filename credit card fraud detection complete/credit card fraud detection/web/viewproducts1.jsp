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
                    <li><a href="viewproducts1.jsp">VIEW_PRODUCTS</a></li>
                  <li><a href="newhtml.html">ACCOUNT_DETAILS</a></li>

                  
                  
                                    <li><a href="userlogin.html">LOG_OUT</a></li>

              </ul>
          </div>


      </div>
    </div>
    <div class="form">
        <h1>                           PRODUCTS</h1>
       
      <div class="c5">
         
        <table border="4" >
            
            
            
            <tr>
                <th>PRODUCT ID</th>
                <th>PRODUCT NAME</th>
                <th>PRODUCT QUANTITY</th>
                <th>DESCRIPTION</th>
                <th>PRODUCT PRICE</th>
               
                
            </tr>
       
       <%
               try{
                   Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
        Statement st = con.createStatement();
                   String str="select * from addproducts";
                   
                   ResultSet rs=st.executeQuery(str);
                   
                   
                   while(rs.next()){
                     %> 
                     <tr> 
                         <td><%=rs.getString("id")%></td>

                         <td><%=rs.getString("product_name")%></td>
                         <td><%=rs.getString("quantity")%></td>
                         <td><%=rs.getString("description")%></td>
                         <td><%=rs.getString("price")%></td>
                         
                         
                         
                         
                                 <%
                
                   }
               } catch(Exception e){
                   
               }        
        %>
        
        </table>
      </div>
      </center>

        
        <div class="cc">
<h1>purchase products</h1>
<br>

      
        <form action="purchase.jsp" method="post">
        <label>enter product id:</label>
     <input type="text" name="t1" size="5"/>&emsp;&emsp;&emsp;
      <label>enter quantity:</label>
     <input type="text" name="t3" /><br>
      <label>enter card number:</label>
      <input type="text" name="t2" />  <br> 
     
     
     <input type="submit" name="up" value="BUY">
            </form>
        </div>
        


</div>
        <h3>
    </body>
</html>
