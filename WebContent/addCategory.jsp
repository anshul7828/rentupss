<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Rentups</title>

  <!--
    - favicon
  -->
  <link rel="shortcut icon" href="./assets/images/logo/20220828_020406.jpg" type="image/x-icon">

  <!--
    - custom css link
  -->
  <link rel="stylesheet" href="style-prefix.css">

  <!--
    - google font link
  -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="adminHeader.jsp"></jsp:include>


 
<center>
    			<form action="./CategoryController" method="post">
					<label for="t1">  <span style="width:20%"><input type="text" id="t1" name="t1"
						required placeholder="category name" autofocus="autofocus"> </span> 
					</label><br> <span style="width:5%"><input type="submit" value="submit" name="b1" /></span>
				</form>
		</center>

    
</body>

</html>