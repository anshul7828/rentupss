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
<body style="background-color:powderblue;">
<jsp:include page="userHeader.jsp"></jsp:include>
<h2>Registration!</h2>
<div class="container">
  <div class="row">
    <div class="col-sm-4">
  
    </div>
    <div class="col-sm-6">
      <h3>New Product</h3>
      <form action="./ProductController" method="post" enctype="multipart/form-data">
  
  <div class="form-group">
    <label for="pname">Product Name:</label>
    
   <span width = "10%"> <input type="text" class="form-control" id="pname" name="pname" required="required">
  </div></span>
  
  
  <div class="form-group">
    <label for="desc">Description:</label>
    <textarea rows="5" cols="30" id="desc" name="desc" class="form-control" required="required"></textarea>
  </div>
  
  
  
  <div class="form-group">
    <label for="price">Price Per Day: (between 0 and 5000):</label>
    <input type="range"  class="form-control" id="price" name="price" 
    min="0" max="5000" 
    required="required">
  </div>
  
  <div class="form-group">
    <label for="discount">Discount %: (between 0 and 100):</label>
    <input type="range"  class="form-control" id="discount" name="discount" 
    min="0" max="100" 
    required="required">
  </div>
 
 
 
 <div class="form-group">
    <label for="city">City:</label>
   <span width = "10%"> <input type="text" class="form-control" id="city" name="city" required="required">
  </div></span>
  
  

 <div class="form-group">
    <label for="category">Category:</label>
    
   <select id="category" name="category" class="form-control">
   <%
categoryModel obj= new categoryModel();
   ResultSet rs = obj.getAllCategory();
   while(rs.next()){
	   %>
	   <option><%=rs.getString(2) %>
   <%}
   
   %>
   
   </select>
  </div>
  
  <div class="form-group">
    <label for="ph1">Photo 1:</label>
   <input type="file" class="form-control" id="ph1" name="ph1" required="required">
  </div>
  
  <div class="form-group">
    <label for="ph2">Photo 2:</label>
   <input type="file" class="form-control" id="ph2" name="ph2" required="required">
  </div>
  
  <div class="form-group">
    <label for="ph3">Photo 3:</label>
   <input type="file" class="form-control" id="ph3" name="ph3" required="required">
  </div>
  
  
 <center> <button type="submit" class="btn btn-success">Submit</button>
</center></form>
      <br>
      
    </div>
    <div class="col-sm-2">
 
    </div>
  </div>
</div>

</body>
</html>