<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Registration form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
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
                    <li class="active"><a href="reg_organiser.jsp">Register Organiser</a></li>
                    <li><a href="login.html">logout</a></li>
                </ul>
            </div>
        </div>
             
    </header>
    <br>
<div class="container">

<div class="page-header">
    <h1>Organiser Registration Form</h1>
</div>
</div>
<!-- Registration form - START -->
<div class="container">
    <div class="row">
        <form role="form" action="add_organiser.jsp">
            <div class="col-lg-6">
                <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Required Field</strong></div>
                <div class="form-group">
                    <label for="InputName">Organiser Name</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="InputName" id="InputName" placeholder="Enter Name" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>              
                <div class="form-group">
                    <label for="InputName">Organising Group</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="Group" id="group" placeholder="Group" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputName">Allot Userid</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="Userid" id="Userid" placeholder="Userid" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputName">Allot Password</label>
                    <div class="input-group">
                        <input type="password" class="form-control" name="Password" id="Password" placeholder="Password" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>                
                          
                <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-info pull-right">
            </div>
        </form>

    </div>
</div>
<!-- Registration form - END -->

</body>
</html>