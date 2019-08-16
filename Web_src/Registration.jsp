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

<div class="container">

<div class="page-header">
    <h1>Registration form</h1>
</div>
<% String eid=request.getParameter("eid");
    String event=request.getParameter("event");
%>
<!-- Registration form - START -->
<div class="container">
    <div class="row">
        <form role="form" action="add_student.jsp">
            <div class="col-lg-6">
                <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Required Field</strong></div>
                <div class="form-group">
                    <label for="InputName">Name</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="InputName" id="InputName" placeholder="Enter Name" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputName">Gender</label>
                    <div>
                   <input type="radio" name="gender" value="male" checked> Male<br>
                    <input type="radio" name="gender" value="female"> Female<br>
                    </div>
                                  
                </div>                
                <div class="form-group">
                    <label for="InputEmail">Email</label>
                    <div class="input-group">
                        <input type="email" class="form-control" id="InputEmailFirst" name="InputEmail" placeholder="Enter Email" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
              <div class="form-group">
                    <label for="Contact">Contact No.</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="Contact" id="Contac_no."  required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>                  
                </div>                
                <div class="form-group">
                    <label for="InputBranch">Branch</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="Inputbranch" id="Inputbranch" placeholder="Enter Branch" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputSemester">Semester</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="Inputsem" id="InputSemester" placeholder="Enter Semester" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>                  
                </div>
                                <div class="form-group">
                    <label for="InputSemester">Event Name</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="event" id="InputSemester" placeholder="<%=event%>" value="<%=event%>" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>                  
                </div>
                          
                <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-info pull-right">
            </div>
        </form>

    </div>
</div>
<!-- Registration form - END -->

</div>

</body>
</html>