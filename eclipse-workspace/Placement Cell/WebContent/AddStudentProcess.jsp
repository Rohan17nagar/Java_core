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
String p_fname1 = request.getParameter("p_fname");
String p_lname1 = request.getParameter("p_lname");
//String mob1 = request.getParameter("mob");
String email1 = request.getParameter("email");
String password1 = request.getParameter("password");
String dob1 = request.getParameter("s_dob");
String s_branch1 = request.getParameter("s_branch1");
/* String description1 = request.getParameter("description");*/
String p_college1 = request.getParameter("p_college");
String gender1 = request.getParameter("s_gender");

out.println(p_fname1);
out.println(p_lname1);
//out.println(mob1);
out.println(email1);
out.println(password1);
//out.println(description1);
out.println(p_college1);
out.println(gender1);



String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "placement_cell";
String userid = "root";
String password = "root";

try {
Class.forName(driver);
out.println("Driver loaded success..");
} 
catch (ClassNotFoundException e) {
out.println("Error in Driver loading");
}
%>
<h1>Retrieve data from database in jsp</h1>
<%
try{
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/placement_cell?useSSL=false","root","root");
	String sql ="INSERT INTO student(s_fname,s_lname,s_email,s_password,s_dob,s_branch,s_college,s_gender)values(?,?,?,?,?,?,?,?)";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, p_fname1);
	ps.setString(2, p_lname1);
	ps.setString(3, email1);
	ps.setString(4, password1);
	ps.setString(5, dob1);
	ps.setString(6, s_branch1);
	ps.setString(7, p_college1);
	ps.setString(8, gender1);
//	ps.setString(7, address1);
	int i = ps.executeUpdate();
	out.print("success..");
	con.close();
	response.sendRedirect("AddPlacementOfficer.jsp");
}

catch(Exception e){
	out.println("Error in Database Query..");
}
%>
</body>
</html>