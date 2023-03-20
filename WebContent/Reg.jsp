<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Registration</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body style="background-color:powderblue;">
<h2>Registration!</h2>
<div class="container">
  <div class="row">
    <div class="col-sm-4">
   
    </div>
    <div class="col-sm-6">
      <h3>New Registration</h3>
      <form action="./RegController" method="post">
  <div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" id="email" name="email"
    required="required" autofocus="autofocus">
  </div>
  <div class="form-group">
    <label for="uname">Name:</label>
    <input type="text" class="form-control" id="uname" name="uname" required="required">
  </div>
  <div class="form-group">
    <label for="mobile">Mobile:</label>
    <input type="text" class="form-control" id="mobile" name="mobile" required="required">
  </div>
  
 <div class="form-group">
    <label for="address">Address:</label>
    <textarea rows="10" cols="40" id="address" name="address" class="form-control" required="required"></textarea>
  </div>
 
 <div class="form-group">
    <label for="pin">PinCode:</label>
   <input type="text" class="form-control" id="pin" name="pin" required="required">
  </div>

 <div class="form-group">
    <label for="password">password:</label>
   <input type="password" class="form-control" id="password" name="password" required="required">
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>
      
      
    </div>
    <div class="col-sm-2">
      
    </div>
  </div>
</div>
</body>
</html>
