<%@page import="java.sql.ResultSet"%>
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
<jsp:include page="userHeader.jsp"></jsp:include>
<%
String cat=request.getParameter("id");
%>
<h2>Search Result!- <%= cat %></h2>
<div class="container">
  <div class="row">
    <div class="col-sm-2">
   
      <p></p>
    </div>
    <div class="col-sm-8">
     
      <div class="product-main">

            <h2 class="title">New Products</h2>

            <div class="product-grid">
     <%
     DAO obj = new DAO();
     String sql = "select * from product where categoryname='"+cat+"'";
     ResultSet rs = obj.queryReturner(sql);
     while(rs.next())
     {%>
     
              <div class="showcase">

                <div class="showcase-banner">

                  <img src="./imagecont?id=<%=rs.getString("productid")%>" width="20%"  alt="Mens Winter Leathers Jackets" width="300" class="product-img default">
                  <img src="./imagecont?id=<%=rs.getString("productid")%>" width="20%"  alt="Mens Winter Leathers Jackets" width="300" class="product-img hover">

                  <p class="showcase-badge">new</p>

                  <div class="showcase-actions">

                    <button class="btn-action">
                      <ion-icon name="heart-outline"></ion-icon>
                    </button>

                    <button class="btn-action">
                      <ion-icon name="eye-outline"></ion-icon>
                    </button>

                    <button class="btn-action">
                      <ion-icon name="repeat-outline"></ion-icon>
                    </button>

                    <button class="btn-action">
                      <ion-icon name="bag-add-outline"></ion-icon>
                    </button>

                  </div>

                </div>

                <div class="showcase-content">

                  <a href="#" class="showcase-category"><%= cat %></a>

                  <a href="#">
                    <h3 class="showcase-title"><%= rs.getString(2) %></h3>
                      <h3 class="showcase-title"><%= rs.getString(3) %></h3>
                  </a>

                  <div class="showcase-rating">
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star-outline"></ion-icon>
                    <ion-icon name="star-outline"></ion-icon>
                  </div>

                  <div class="price-box">
                       <p class="price"><%= rs.getString(4) %></p>
                  </div>

                </div>

              </div>
   
     <%}
     
     %>
     
      </div>
      </div>
      
    </div>
   
   
  </div>
</div>


</body>
</html>