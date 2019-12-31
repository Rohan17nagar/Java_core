<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>

<%
String email = request.getParameter("email");
String pass = request.getParameter("password");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "placement_cell";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>

<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr>
<td>first name</td>
<td>last name</td>
<td>City name</td>
<td>Email</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from placement_officer";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	if(resultSet.getString("p_email").equals(email) && resultSet.getString("p_password").equals(pass)){
		session.setAttribute("email1", email);
		String college = resultSet.getString("p_college");		
		session.setAttribute("college1", college);
		response.sendRedirect("POfficerHome.jsp");
	}
}
response.sendRedirect("PlacementOfficerLogin.jsp");
%>
<% 
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>