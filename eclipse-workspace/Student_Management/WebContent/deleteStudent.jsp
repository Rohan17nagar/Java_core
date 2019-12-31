<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="service.ConnectionTest"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
try {
	Connection con = ConnectionTest.getConnectionTest();
    Statement st=con.createStatement();
    String id= String.valueOf(request.getParameter("id"));
    String Query="delete from student where s_id ='"+id+"'";
   	int i=st.executeUpdate(Query);
   	response.sendRedirect("student.jsp");
} 
catch (SQLException e) {
out.println("Error");
}
%>
</body>
</html>