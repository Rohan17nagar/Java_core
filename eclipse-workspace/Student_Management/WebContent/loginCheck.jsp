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
String email = request.getParameter("email");
String pass = request.getParameter("password");
if(email.equals("root") && pass.equals("root"))
{
	session.setAttribute("email", email);
	response.sendRedirect("index.jsp");
}
else{
	response.sendRedirect("login.jsp");
}
%>
</body>
</html>