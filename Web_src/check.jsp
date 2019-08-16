<%-- 
    Document   : check
    Created on : Apr 7, 2017, 5:01:35 AM
    Author     : Aniraj
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login check</title>
    </head>
    <body>

        <%
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Event Login");
     Statement st=con.createStatement();
     String sql="select * from CREDENTIALS where USERID='"+username+"' and PASSWORD='"+password+"'";
     ResultSet rs=st.executeQuery(sql);
      
     if(rs.next())
     {
          if (rs.getBoolean("ISADMIN"))
          {
              response.sendRedirect("admin.jsp");
          }
          else
          {
             response.sendRedirect("org.jsp"); 
          }
           
        }
        else
     {%>

             <%
        
        response.sendRedirect("login.html");
        }
     
        %>
                
        
    </body>
</html>
