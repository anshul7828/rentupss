<%@page import="java.sql.ResultSet"%>
<%@page import="Model.categoryModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="adminHeader.jsp"></jsp:include>
	<h2> Category List!</h2>
<div class="container">
  <div class="row">
    <div class="col-sm-4">
    
    </div>
    <div class="col-sm-4">

<table class="table table-striped">
    <thead>
      <tr>
              <th>Category ID</th>
        <th>Category Name</th>
        <th>Controls</th>
      </tr>
    </thead>
    <tbody>
<%
try{
categoryModel cm = new categoryModel();
ResultSet rs = cm.getAllCategory();
while(rs.next())
{%>
  
      <tr>
        <td><%= rs.getString(1) %></td>
        <td><%= rs.getString(2) %></td>
        <td><a href="DeleteCatgory.jsp?id=<%= rs.getString(1)%>">
        Delete
        </a>
        </td>
      </tr>
    
<%}
}
catch(Exception ex)
{
  out.println(ex);
}

%>
     </tbody>
  </table>
       </div>
    <div class="col-sm-4">

    </div>
  </div>
</div>






	
</body>
</html>