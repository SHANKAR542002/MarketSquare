<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> 
        <%   int count=0;
            String username,password,gender,dob,mobileno,email,address;
            username=request.getParameter("t1");
        
            password=request.getParameter("t2");
            gender=request.getParameter("t3"); 
            dob=request.getParameter("t4"); 
            mobileno=request.getParameter("t5"); 
            email=request.getParameter("t6");
            address = request.getParameter("t7");
            
            
            Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
        out.println("connected to database");
     String str="insert into user_register values('"+username + "','"+ password + "','"+ gender + "','"+ dob + "','"+ mobileno + "','"+ email +"','"+ address + "')"; 
        Statement st = con.createStatement();
int n=st.executeUpdate(str);
String str1="insert into att values(0,'"+username + "')"; 
        Statement st1 = con.createStatement();
int n1=st1.executeUpdate(str1);
if(n>0)
{response.sendRedirect("regsuccess.html");
    
        }

else
    out.println("error in registration");
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        %>
    </body>
</html>
