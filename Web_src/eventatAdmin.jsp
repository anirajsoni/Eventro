 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
    <meta charset="utf-8" />
    <title>Event Details</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    
    <style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
<body>
    
         <header class="navbar navbar-inverse navbar-fixed-top" role="banner">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><img src="img/logo.png"  alt="Basica" height="27" width="300"></a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                     <li ><a href="eventatAdmin.jsp">Event Details</a></li>
                    <li ><a href="reg_organiser.jsp">Register Organiser</a></li>
                    <li><a href="login.html">logout</a></li>
                </ul>
            </div>
        </div>
             
    </header>
                                <%
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Event Login");
        Statement st=con.createStatement();
        String sqlna="SELECT * FROM EVENTS";
        ResultSet rs=st.executeQuery(sqlna);
                            %>
    <br><br>
<div class="container">
<div class="page-header">
    <h1>Registered Event Details</h1>
</div></div>
    <br>
<div class="container">
<table>
  <tr>
    <th>Event Name</th>
    <th>Date</th>
    <th>Venue</th>
    <th>Contact</th>
     <th>Organiser</th>
    <th>Organising Group</th>
    <th>Entry Fee</th>
    
  </tr>
  <%    while(rs.next())
  {
  %>
  <tr>
    <td><%out.print(rs.getString("EVENTNAME"));%></td>
    <td><%out.print(rs.getString("DATE"));%></td>
    <td><%out.print(rs.getString("VENUE"));%></td>
    <td><%out.print(rs.getString("CONTACT"));%></td>
    <td><%out.print(rs.getString("ORGANISER"));%></td>
    <td><%out.print(rs.getString("ORGANISER_GROUP"));%></td>
    <td><%out.print(rs.getString("ENTRY_FEE"));%></td>
  </tr>
  <% }%>

</table>
</div>
</body>
</html>