<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Event Registration</title>
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
                     <li ><a href="studentatOrg.jsp">Registered Student Details</a></li>
                    <li class="active" ><a href="event_reg.jsp">Register Event</a></li>
                    <li><a href="login.html">logout</a></li>
                </ul>
            </div>
        </div>
             
    </header>
    <br>
<div class="container">

<div class="page-header">
    <h1>Event Registration Form</h1>
</div>
</div>
<!-- Registration form - START -->
<div class="container">
    
        <form role="form" action="add_event.jsp">
            <div class="col-lg-6">
                <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Required Field</strong></div>
                <div class="form-group">
                    <label for="InputName">Event Name</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="Event Name" id="InputName" placeholder="Event Name" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>                
                <div class="form-group">
                    <label for="InputEmail">Date</label>
                    <div class="input-group">
                        <input type="Date" class="form-control" id="Date" name="Date" placeholder="Event Date" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                              <div class="form-group">
                    <label for="Contact">Venue</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="Venue" id="Venue" placeholder="Venue" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>   </div>
                              <div class="form-group">
                    <label for="Contact">Entry Fee</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="fee" id="Venue" placeholder="Entry Fee" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>                    
                              </div>
                              <div class="form-group">
                    <label for="Contact">Organiser Name</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="Organiser" id="Cordinator" placeholder="Organiser" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>                  
                </div>
                                <div class="form-group">
                    <label for="Contact">Organising Group</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="Group<" id="Cordinator" placeholder="Organising Group" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>                  
                </div>
                              <div class="form-group">
                    <label for="Contact">Contact No.</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="Contact" id="Contac_no." placeholder="Contact no." required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>                  
                </div>
                              <div class="form-group">
                    <label for="Contact">Event Details</label>
                    <div class="input-group">
                        <textarea rows="3" cols="100" name="details" form="usrform" placeholder="Enter event details here......."></textarea>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>  
                                    </div>  
                                             <div class="form-group">
                    <label for="image">Image Name</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="image" id="image" placeholder="Image Name" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>                  
                </div>
              <label for="Contact">Select Image</label>  <input type="file" name="imagefile" id="image" value="image" class="btn btn-info pull-right">
            </div>
                                
                <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-info pull-right">
        </form>
</div>
    </div>
</div>
<!-- Registration form - END -->

</body>
</html>