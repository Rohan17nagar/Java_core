<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="service.ConnectionTest"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Student Data</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<div class="container">
  <h2>Student Data :</h2>
  <p></p>            
  <table class="table table-dark">
    <thead>
      <tr>
        <th>ID</th>
        <th>name</th>
        <th>Education</th>
        <th>C_ID</th>
		<th>delete</th>
		<th>Update</th>
      </tr>
    </thead>
    <tbody>
    <% 
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
} catch (ClassNotFoundException e) {
	out.println("Error in driver loading..");
}
try {
	Connection con = ConnectionTest.getConnectionTest();
	Statement stmt = con.createStatement();
	String sql = "select * from student";
	ResultSet rs = stmt.executeQuery(sql);
	int i=0;
	while(rs.next()) {	
//String id = Integer.toString(rs.getInt("s_id"));	
%>		
	      <tr>
	        <td><%=rs.getInt("s_id")%></td>
	        <td><%=rs.getString("s_name")%></td>
	        <td><%=rs.getString("education")%></td>
	        <td><%=rs.getInt("c_id")%></td>
	        <td>
	       	<a href="deleteStudent.jsp?id=<%=rs.getInt("s_id")%>" class="btn btn-info btn-sm" name="delete">
          	<span class="glyphicon glyphicon-trash"></span> 
       	 	</a>     
            </td>
			<td>
	       <p>
        <a href="#" class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-check"></span> Check
        </a>
      </p> 
            </td>
	      </tr>
	<%}%> 
	</tbody>
	  </table>
	</div>
<% 
i++;
	rs.close();
	stmt.close();
	con.close();			
} catch (SQLException e) {
	out.println("Error");
}
%>
</body>
</html>