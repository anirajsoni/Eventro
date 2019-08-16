 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>EVENT DETAILS</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
	<link rel="stylesheet" href="css/main.css">
    <link href="css/custom.css" rel="stylesheet">
	
	<script src="//use.edgefonts.net/bebas-neue.js"></script>

    <!-- Custom Fonts & Icons -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/icomoon-social.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	
	<script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
	

</head>

    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
        
          

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
                    <li ><a href="index.jsp">Home</a></li>
                    <li class="active"><a href="events.jsp">Events</a></li>
                    <li><a href="contact-us.html">Contact</a></li>
                    <li ><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                </ul>
            </div>
        </div>
    </header><!--/header-->

<% 
        String image =request.getParameter("image");
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Event Login");
        Statement st=con.createStatement();
        String sqlna="SELECT * FROM EVENTS WHERE IMAGE='"+image+"'";
        ResultSet rs=st.executeQuery(sqlna);
        rs.next();
        String event=rs.getString("EVENTNAME");
%>

        <!-- Page Title -->
		<div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1><%out.print(rs.getString("EVENTNAME"));%></h1>
					</div>
				</div>
			</div>
		</div>
        
        <div class="section">
	    	<div class="container">
	    		<div class="row">
	    			<!-- Product Image & Available Colors -->
	    			<div class="col-sm-6">
	    				<div class="product-image-large">
	    					<img src="img/portfolio/<%=rs.getString("IMAGE")%>" alt="Item Name">
	    				</div>
	    				<div class="colors">
							<span class="color-white"></span>
							<span class="color-black"></span>
							<span class="color-blue"></span>
							<span class="color-orange"></span>
							<span class="color-green"></span>
						</div>
	    			</div>
	    			<!-- End Product Image & Available Colors -->
	    			<!-- Product Summary & Options -->
	    			<div class="col-sm-6 product-details">
	    				<h2><%out.print(rs.getString("EVENTNAME"));%></h2>
						<h3><%out.print(rs.getString("ORGANISER_GROUP"));%></h3>
	    				<p>
                                            <%out.print(rs.getString("DETAIL"));%>
						</p>
	    						
						<h3>Event Details</h3>
					
						<p><strong>Date: </strong><%out.print(rs.getString("DATE"));%></p>
						<p><strong>Venue: </strong><%out.print(rs.getString("VENUE"));%></p>
 						<p><strong>Entry Fee: </strong><%out.print(rs.getString("ENTRY_FEE"));%></p>
						<p><strong>Venue: </strong><%out.print(rs.getString("VENUE"));%></p>                                               
                                                <p><strong>Organiser: </strong><%out.print(rs.getString("ORGANISER"));%></p>
                                                <p><strong>Paytm Contact: </strong><%out.print(rs.getString("CONTACT"));%></p>
                                                <span> <a href="Registration.jsp?event=<%=event%>" class="btn btn-orange">Register Now</a></span>
	    			</div>
	    			<!-- End Product Summary & Options -->
	    			
	    		</div>
			</div>
		</div>
		
<hr>
		

	    <!-- Footer -->
	    <div class="footer">
	    	<div class="container">
			
		    	<div class="row">
				
		    		<div class="col-footer col-md-4 col-xs-6">
		    			<h3>Contact Us</h3>
		    			<p class="contact-us-details">
	        				<b>Address:</b> 123 Downtown Avenue, Manhattan, New York, United States of America<br/>
	        				<b>Phone:</b> +1 123 45678910<br/>
	        				<b>Fax:</b> +1 123 45678910<br/>
	        				<b>Email:</b> <a href="mailto:info@yourcompanydomain.com">info@yourcompanydomain.com</a>
	        			</p>
		    		</div>				
		    		<div class="col-footer col-md-4 col-xs-6">
		    			<h3>Our Social Networks</h3>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam.</p>
		    			<div>
		    				<img src="img/icons/facebook.png" width="32" alt="Facebook">
		    				<img src="img/icons/twitter.png" width="32" alt="Twitter">
		    				<img src="img/icons/linkedin.png" width="32" alt="LinkedIn">
							<img src="img/icons/rss.png" width="32" alt="RSS Feed">
						</div>
		    		</div>
		    		<div class="col-footer col-md-4 col-xs-6">
		    			<h3>About Our Company</h3>
		    				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci.</p>
		    		</div>

		    	</div>
		    	<div class="row">
		    		<div class="col-md-12">
		    			<div class="footer-copyright">&copy; 2014 <a href="http://www.vactualart.com/portfolio-item/basica-a-free-html5-template/">Basica</a> Bootstrap HTML Template. By <a href="http://www.vactualart.com">Vactual Art</a>.</div>
		    		</div>
		    	</div>
		    </div>
	    </div>

        <!-- Javascripts -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.9.1.min.js"><\/script>')</script>
        <script src="js/bootstrap.min.js"></script>
		
		<!-- Scrolling Nav JavaScript -->
		<script src="js/jquery.easing.min.js"></script>
		<script src="js/scrolling-nav.js"></script>		