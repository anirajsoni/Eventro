<%-- 
    Document   : add_student
    Created on : May 22, 2017, 10:40:57 PM
    Author     : Aniraj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add_Organiser</title>
    </head>
    <body>
        <%
        String name=request.getParameter("InputName");
        String group=request.getParameter("Group");
        String userid=request.getParameter("Userid");
        String password=request.getParameter("Password");
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Event Login");
        Statement st=con.createStatement();
     
    String  sql="insert into credentials values('"+userid+"','"+password+"','"+name+"','"+group+"',false)";
     //sql="INSERT INTO APP.EVEN_REG ("NAME", EMAIL, GENDER, BRANCH, SEMESTER, RID) VALUES ('"+name+"','"+email+"','"+gender+"','"+branch+"','"+semester+"','"+id+"')";
      int i=st.executeUpdate(sql);
        if(i==1){
        out.print("<script>alert('Registerd Success !')</script>");
        response.sendRedirect("admin.jsp");
        //
        //<script>window.location="index.html"</script>
        //
        }
        else
        {
            response.sendRedirect("reg_organiser.jsp");
        }
        %>
    </body>
</html>
