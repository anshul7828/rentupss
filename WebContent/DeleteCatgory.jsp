<%@page import="Database.DAO"%>
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
String id= request.getParameter("id");
DAO obj = new DAO();
obj.queryExcuter("delete from categorymaster where categoryid="+id);
response.sendRedirect("ViewCategory.jsp");

%>
</body>
</html>