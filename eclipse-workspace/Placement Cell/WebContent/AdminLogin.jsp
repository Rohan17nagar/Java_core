<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Placement cell - Admin log in</title>
</head>
<body>

<style>
  .header-image {
  background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("header_img.png");
  height: 50%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
.header-text {
  text-align: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
}
.header-text button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 10px 25px;
  color: black;
  background-color: #ddd;
  text-align: center;
  cursor: pointer;
}
.header-text button:hover {
  background-color: #555;
  color: white;
}
.bg {
  /* The image used */
  background-image: url("background_img.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
} 
body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
}
* {
  box-sizing: border-box;
}
/* Add styles to the form container */
.container {
  position: absolute;
  right: 0;
  margin: 10px;
  max-width: 500px;
  padding: 16px;
  background-color: white;
}
/* Full-width input fields */
input[type=text], input[type=password] ,li{
  width: 100%;
  padding: 15px;
  margin: 5px 0 5px 0;
  border: none;
  background: #f1f1f1;
}
input[type=text]:focus, input[type=password]:focus,li:focus {
  background-color: #ddd;
  outline: none;
}
</style>
<div class="header-image">
  <div class="header-text">
    <h1 style="font-size:50px">Welcome To Placement Cell Admin Login</h1>
    <p></p>
    <!--  <button></button> -->
  </div>
</div>
<div class="bg">
<center>
<h1 class="text-danger">Login</h1>
</center>
<form name="regForm" action="AdminLoginCheck.jsp" method="post" onsubmit="return validation()" class="container" >
		<label for="email">Email address :</label> <input type="text" name="email"> <font color='red'><DIV id="une"></DIV></font> <br>
		<label for="password">Password :</label><input type="password" name="password"><font color='red'><DIV id="password"></DIV></font><br>
		 
		<button type="submit" class="btn btn-primary btn-lg btn-block" value="register">Log In</button>
	<!--
		<p class="text-muted" style="text-align:center">-------------------------      OR      -------------------------</p>
	 
	 	<a href="Register.jsp" ><span style="text-align:center"><p style="text-align:center">Create New Account</p></span></a>
	-->
</form>
</body>
</html>
<%-- <%
try{
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	Class.forName("com.mysql.cj.jdbc.Driver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:mysql://localhost:3306/placement_cell?useSSL=false","root","root");  
	//here sonoo is database name, root is username and password  
	PreparedStatement ps = con.prepareStatement("select * from admin where email=? and password=?");
	ResultSet rs=ps.executeQuery();  
	if(rs.next()){
		response.sendRedirect("AdminHome.jsp");
	}
	else {
        response.sendRedirect("index.jsp");
    }
}
catch(Exception e){	
}
%> --%>