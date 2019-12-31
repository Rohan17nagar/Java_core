<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html lang="en">
<head>
  <title>Placement cell - index</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Placement cell</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
     
     <!-- <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
         <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul> -->
      </li>
      <!-- <li><a href="#">Home</a></li> -->
      <li><a href="SCreateProfile.jsp">Create Profile</a></li>
      <li><a href="SUpdateProfile.jsp">Update Profile</a></li>
      <li><a href="SApplyJob.jsp">Apply Job</a></li>
      <li><a href="SViewStatus.jsp">View Status</a></li>
	
	  <li><a href="#">Logout</a></li>	  
    </ul>
  </div>
</nav>
<div class="container">
<h2 style="text-align:center">Welcome <b><u><% out.print(session.getAttribute("email1")); %><a></u></b></a></h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="slide1.jpg" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="slide2.jpg" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="slide3.jpg" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span> 
    </a>
  </div>
  <center>
  <h3>-- Placement Cell --</h3>
  </center>
  <p>
  </p>
  <p>
  </p>
  <p>
  </p>
</div>
</body>
</html>