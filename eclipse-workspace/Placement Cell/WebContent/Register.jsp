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
<title>Placement cell - sign-up</title>
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
    <h1 style="font-size:50px">Welcome To Placement Cell</h1>
    <p></p>
    <!--  <button></button> -->
  </div>
</div>

<div class="bg">
<form name="regForm" action="Login.jsp" method="post" onsubmit="return validation()" class="container" >
		<label for="f_name"><b>First Name* :</b></label>
		<input type="text" name="f_name" align="right" id="f_name">
		<span id="fname" class="text-danger font-weight-bold"></span>
		<br>
		
		<label for="l_name">Last Name* :</label>
		<input type="text" name="l_name" id="l_name">
		<span id="lname" class="text-danger font-weight-bold"></span>
	
		 <br>
		
		<label for="mob">Mobile* :</label>
		<input type="text" name="mob" id="mob">
		<span id="mobile" class="text-danger font-weight-bold"></span>
		 <br>
		
		<label for="sel1">Gender* :</label>
		
		<select name="gender" class="form-control" id="sel1">
		<option selected="male" value="Default">Male</option>
		<option value="female">Female</option>
		<option value="other">Other</option>
		</select>
		
		<label for="email">Email* :</label>
		<input type="text" name="email" id="email_id" >
		<span id="email" class="text-danger font-weight-bold"></span>
		<br>
		
		<label for="password">Password* :</label>
	    <input type="password" name="password" id="pass">
	   	<span id="password" class="text-danger font-weight-bold"></span>
	    <br>
	    
		<label for="conf_password">Confirm Password* :</label>
	    <input type="password" name="conf_password" id="conf_password">
  		<span id="confpass" class="text-danger font-weight-bold"></span>
	  	<br>
		
		<input type="submit" class="btn btn-success btn-lg btn-block" value="Sign Up">
		
</form>
</div>

<script>

function validation(){
	var fname = document.getElementById("f_name").value;
	var lname = document.getElementById("l_name").value;
	var mob = document.getElementById("mob").value;
	var email = document.getElementById("email_id").value;
	var pass = document.getElementById("pass").value;
	var conf_pass = document.getElementById("conf_password").value;
	
	if(fname==""){
		document.getElementById('fname').innerHTML ="**Please enter first name";
		return false;
	}
	
	if((fname.length<=2)||(fname.length>20)){
		document.getElementById('fname').innerHTML ="**must be between 2-20";
		return false;		
	}
	
	if(lname==""){
		document.getElementById('lname').innerHTML ="**Please enter last name";
		return false;
	}
	

	if((lname.length<=2)||(lname.length>20)){
		document.getElementById('lname').innerHTML ="**must be between 2-20";
		return false;		
	}
	
	if(mob==""){
		document.getElementById('mobile').innerHTML ="**Please enter mobile number";
		return false;
	}
	
	if(isNaN(mob)){
		document.getElementById('mobile').innerHTML ="**Must be digits only";
		return false;
	}
	if(mob.length!=10){
		document.getElementById('mobile').innerHTML ="**Must be 10 digits only";
		return false;
	}
	
	if(email==""){
		document.getElementById('email').innerHTML ="**Please enter email id";
		return false;
	}
	if(email.indexOf('@')<=0){
		document.getElementById('email').innerHTML ="**@ at invalid position";
		return false;
	}
	if((email.charAt(email.length-4)!='.') && (email.charAt(email.length-3)!='.')){
		document.getElementById('email').innerHTML ="**(.) at invalid position";
		return false;
		
	}
	
	if(pass==""){
		document.getElementById('password').innerHTML ="**Please enter password";
		return false;
	}
	if((pass.length<=6)||(pass.length>10)){
		document.getElementById('password').innerHTML ="**must be between 6-10";
		return false;		
	}
	
	if(conf_pass==""){
		document.getElementById('confpass').innerHTML ="**Please enter confirm password";
		return false;
	}
	
	if(pass!=conf_pass){
		document.getElementById('confpass').innerHTML ="**password didn't match";
		return false;
	}
}
 </script> 
</body>
</html>