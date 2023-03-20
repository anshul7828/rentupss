<%@page import="java.sql.ResultSet"%>
<%@page import="Database.DAO"%>
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



  <div class="overlay" data-overlay></div>

 

  <!--



  <!--
    - HEADER
  -->

  <header>

    <div class="header-top">

      <div class="container">

        <ul class="header-social-container">

          <li>
            <a href="#" class="social-link">
              <ion-icon name="logo-facebook"></ion-icon>
            </a>
          </li>

          <li>
            <a href="#" class="social-link">
              <ion-icon name="logo-twitter"></ion-icon>
            </a>
          </li>

          <li>
            <a href="https://www.instagram.com/accounts/emailsignup/" class="social-link">
              <ion-icon name="logo-instagram"></ion-icon>
            </a>
          </li>

          <li>
            <a href="#" class="social-link">
              <ion-icon name="logo-linkedin"></ion-icon>
            </a>
          </li>

        </ul>

        <div class="header-alert-news">
          <p class="d1">
            <b> Rent is the new trend</b>
          
          </p>
        </div>

        <div class="header-top-actions">
          <p class="d1">
            <b> <span style="color: rgb(255, 255, 255)">Don't sell.... rent it! </span></b>
          
          </p>
         

        </div>

      </div>

    </div>

    <div class="header-main">

      <div class="container">

        <a href="#" class="header-logo">
          <img src="./assets/images/logo/20220828_020406.jpg" alt="Anon's logo" width="50" height="50" class="myimg">
        </a>

        <div class="header-search-container">

          <input type="search" name="search" class="search-field" placeholder="Enter your product name...">

          <button class="search-btn">
            <ion-icon name="search-outline"></ion-icon>
          </button>

        </div>

        <div class="header-user-actions">

          <button class="action-btn">
      <a href="signout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a>
          </button>

          <button class="action-btn">
            <ion-icon name="heart-outline"></ion-icon>
            <span class="count">0</span>
          </button>

          <button class="action-btn">
            <ion-icon name="bag-handle-outline"></ion-icon>
            <span class="count">0</span>
          </button>

        </div>

      </div>

    </div>

    <nav class="desktop-navigation-menu">

      <div class="container">

        <ul class="desktop-menu-category-list">

          <li class="menu-category">
            <a href="#" class="menu-title">Home</a>
          </li>

          <li class="menu-category">
            <a href="#" class="menu-title">Categories</a>

            <div class="dropdown-panel">

              <ul class="dropdown-panel-list">

                <li class="menu-title">
                  <a href="w2.html">Electronics</a>
                </li>

        <%
					DAO obj = new DAO();
					ResultSet rs = obj.queryReturner("select * from categorymaster limit 6");
					while (rs.next()) {
				%>
				<li class="panel-list-item"><a href="searchProduct.jsp?id=<%=rs.getString(2)%>"><%=rs.getString(2)%></a>
				</li>
				<%
					}
				%>
				<li><a href="#"></a></li>

        
                <li class="panel-list-item">
                  <a href="#">
                    <img src="./assets/images/headerp3.jpg" alt="headphone collection" width="250"
                      height="119">
                  </a>
                </li>

              </ul>

              <ul class="dropdown-panel-list">

                <li class="menu-title">
                  <a href="#">sports</a>
                </li>

                <li class="panel-list-item">
                  <a href="#">Cricket gears</a>
                </li>

                <li class="panel-list-item">
                  <a href="#">Football gears</a>
                </li>

                <li class="panel-list-item">
                  <a href="#">gym equipment</a>
                </li>
                
                <li class="panel-list-item">
                  <a href="#">bicycle gears</a>
                </li>

                <li class="panel-list-item">
                  <a href="#">hockey gears</a>
                </li>

                <li class="panel-list-item">
                  <a href="#">chess</a>
                </li>

             

                <li class="panel-list-item">
                  <a href="#">
                    <img src="./assets/images/headerp2.jpg" alt="men's fashion" width="250" height="119">
                  </a>
                </li>

              </ul>

              <ul class="dropdown-panel-list">

                <li class="menu-title">
                  <a href="#">furniture</a>
                </li>

                <li class="panel-list-item">
                  <a href="#">al-mirah</a>
                </li>

                <li class="panel-list-item">
                  <a href="#">Sofas</a>
                </li>

                <li class="panel-list-item">
                  <a href="#">Couch</a>
                </li>

                <li class="panel-list-item">
                  <a href="#">Tables</a>
                </li>

                <li class="panel-list-item">
                  <a href="#">Bed</a>
                </li>
                

                <li class="panel-list-item">
                  <a href="#">Chair</a>
                </li>
                


                <li class="panel-list-item">
                  <a href="#">
                    <img src="./assets/images/headerp4.jpg" alt="women's fashion" width="250" height="119">
                  </a>
                </li>

              </ul>

              <ul class="dropdown-panel-list">

                <li class="menu-title">
                  <a href="#">shoes </a>
                </li>

                <li class="panel-list-item">
                  <a href="#">formal</a>
                </li>

                <li class="panel-list-item">
                  <a href="#">casual</a>
                </li>

                <li class="panel-list-item">
                  <a href="#">sports</a>
                </li>

                <li class="panel-list-item">
                  <a href="#">sneakers</a>
                </li>

                <li class="panel-list-item">
                  <a href="#">sneakers high top</a>
                </li>

                <li class="panel-list-item">
                  <a href="#">Boots</a>
                </li>
                <li class="panel-list-item">
                  <a href="#">
                    <img src="./assets/images/headerp1.jpg" alt="mouse collection" width="250" height="119">
                  </a>
                </li>

              </ul>

            </div>
          </li>

          <li class="menu-category">
            <a href="#" class="menu-title">My Product</a>

            <ul class="dropdown-list">

              <li class="dropdown-item">
                <a href="useraddProduct.jsp">Add product</a>
              </li>

              <li class="dropdown-item">
                <a href="#">view and delete</a>
              </li>

            </ul>
          </li>

          <li class="menu-category">
            <a href="#" class="menu-title">Women's</a>

            <ul class="dropdown-list">

              <li class="dropdown-item">
                <a href="#">Dress & Frock</a>
              </li>

              <li class="dropdown-item">
                <a href="#">sunglasses</a>
              </li>

              <li class="dropdown-item">
                <a href="#">Shoes</a>
              </li>

              <li class="dropdown-item">
                <a href="#">Watch</a>
              </li>

            </ul>
          </li>

          <li class="menu-category">
            <a href="#" class="menu-title">Jewelry</a>

            <ul class="dropdown-list">

              <li class="dropdown-item">
                <a href="#">Earrings</a>
              </li>

              <li class="dropdown-item">
                <a href="#">Couple Rings</a>
              </li>

              <li class="dropdown-item">
                <a href="#">Necklace</a>
              </li>

              <li class="dropdown-item">
                <a href="#">Bracelets</a>
              </li>

            </ul>
          </li>

          <li class="menu-category">
            <a href="#" class="menu-title">Watches</a>

            <ul class="dropdown-list">

              <li class="dropdown-item">
                <a href="#">Smart</a>
              </li>

              <li class="dropdown-item">
                <a href="#">Mechanical watch</a>
              </li>

              <li class="dropdown-item">
                <a href="#">Wrist Watch</a>
              </li>

              <li class="dropdown-item">
                <a href="#">analog Watch</a>
              </li>

            </ul>
          </li>

          <li class="menu-category">
            <a href="#" class="menu-title">Most Rented</a>
          </li>

        </ul>

      </div>

    </nav>

    <div class="mobile-bottom-navigation">

      <button class="action-btn" data-mobile-menu-open-btn>
        <ion-icon name="menu-outline"></ion-icon>
      </button>

      <button class="action-btn">
        <ion-icon name="bag-handle-outline"></ion-icon>

        <span class="count">0</span>
      </button>

      <button class="action-btn">
        <ion-icon name="home-outline"></ion-icon>
      </button>

      <button class="action-btn">
        <ion-icon name="heart-outline"></ion-icon>

        <span class="count">0</span>
      </button>

      <button class="action-btn" data-mobile-menu-open-btn>
        <ion-icon name="grid-outline"></ion-icon>
      </button>

    </div>

    <nav class="mobile-navigation-menu  has-scrollbar" data-mobile-menu>

      <div class="menu-top">
        <h2 class="menu-title">Menu</h2>

        <button class="menu-close-btn" data-mobile-menu-close-btn>
          <ion-icon name="close-outline"></ion-icon>
        </button>
      </div>

      <ul class="mobile-menu-category-list">

        <li class="menu-category">
          <a href="#" class="menu-title">Home</a>
        </li>

        <li class="menu-category">

          <button class="accordion-menu" data-accordion-btn>
            <p class="menu-title">Men's</p>

            <div>
              <ion-icon name="add-outline" class="add-icon"></ion-icon>
              <ion-icon name="remove-outline" class="remove-icon"></ion-icon>
            </div>
          </button>

          <ul class="submenu-category-list" data-accordion>

            <li class="submenu-category">
              <a href="#" class="submenu-title">Formals</a>
            </li>

            <li class="submenu-category">
              <a href="#" class="submenu-title">Casuals</a>
            </li>

            <li class="submenu-category">
              <a href="#" class="submenu-title">Shoes</a>
            </li>

            <li class="submenu-category">
              <a href="#" class="submenu-title">Wallet</a>
            </li>

          </ul>

        </li>

        <li class="menu-category">

          <button class="accordion-menu" data-accordion-btn>
            <p class="menu-title">Women's</p>

            <div>
              <ion-icon name="add-outline" class="add-icon"></ion-icon>
              <ion-icon name="remove-outline" class="remove-icon"></ion-icon>
            </div>
          </button>

          <ul class="submenu-category-list" data-accordion>

            <li class="submenu-category">
              <a href="#" class="submenu-title">Dress & Frock</a>
            </li>

            <li class="submenu-category">
              <a href="#" class="submenu-title">Shoes</a>
            </li>

            <li class="submenu-category">
              <a href="#" class="submenu-title">sunglasses</a>
            </li>

            <li class="submenu-category">
              <a href="#" class="submenu-title">Wallet</a>
            </li>

          </ul>

        </li>

        <li class="menu-category">

          <button class="accordion-menu" data-accordion-btn>
            <p class="menu-title">Jewelry</p>

            <div>
              <ion-icon name="add-outline" class="add-icon"></ion-icon>
              <ion-icon name="remove-outline" class="remove-icon"></ion-icon>
            </div>
          </button>

          <ul class="submenu-category-list" data-accordion>

            <li class="submenu-category">
              <a href="#" class="submenu-title">Earrings</a>
            </li>

            <li class="submenu-category">
              <a href="#" class="submenu-title">Couple Rings</a>
            </li>

            <li class="submenu-category">
              <a href="#" class="submenu-title">Necklace</a>
            </li>

            <li class="submenu-category">
              <a href="#" class="submenu-title">Bracelets</a>
            </li>

          </ul>

        </li>

        <li class="menu-category">

          <button class="accordion-menu" data-accordion-btn>
            <p class="menu-title">Watches</p>

            <div>
              <ion-icon name="add-outline" class="add-icon"></ion-icon>
              <ion-icon name="remove-outline" class="remove-icon"></ion-icon>
            </div>
          </button>

          <ul class="submenu-category-list" data-accordion>

            <li class="submenu-category">
              <a href="#" class="submenu-title">Analog</a>
            </li>

            <li class="submenu-category">
              <a href="#" class="submenu-title">Wrist</a>
            </li>

            <li class="submenu-category">
              <a href="#" class="submenu-title">Mechanical</a>
            </li>

            <li class="submenu-category">
              <a href="#" class="submenu-title">smart</a>
            </li>

          </ul>

        </li>


        <li class="menu-category">
          <a href="#" class="menu-title">most rented</a>
        </li>

      </ul>

      <div class="menu-bottom">

        <ul class="menu-category-list">

          <li class="menu-category">

            <button class="accordion-menu" data-accordion-btn>
              <p class="menu-title">Language</p>

              <ion-icon name="caret-back-outline" class="caret-back"></ion-icon>
            </button>

            <ul class="submenu-category-list" data-accordion>

              <li class="submenu-category">
                <a href="#" class="submenu-title">English</a>
              </li>

              <li class="submenu-category">
                <a href="#" class="submenu-title">Espa&ntilde;ol</a>
              </li>

              <li class="submenu-category">
                <a href="#" class="submenu-title">Fren&ccedil;h</a>
              </li>

            </ul>

          </li>

          <li class="menu-category">
            <button class="accordion-menu" data-accordion-btn>
              <p class="menu-title">Currency</p>
              <ion-icon name="caret-back-outline" class="caret-back"></ion-icon>
            </button>

            <ul class="submenu-category-list" data-accordion>
              <li class="submenu-category">
                <a href="#" class="submenu-title">USD &dollar;</a>
              </li>

              <li class="submenu-category">
                <a href="#" class="submenu-title">EUR &euro;</a>
              </li>
            </ul>
          </li>

        </ul>

        <ul class="menu-social-container">

          <li>
            <a href="#" class="social-link">
              <ion-icon name="logo-facebook"></ion-icon>
            </a>
          </li>

          <li>
            <a href="#" class="social-link">
              <ion-icon name="logo-twitter"></ion-icon>
            </a>
          </li>

          <li>
            <a href="#" class="social-link">
              <ion-icon name="logo-instagram"></ion-icon>
            </a>
          </li>

          <li>
            <a href="#" class="social-link">
              <ion-icon name="logo-linkedin"></ion-icon>
            </a>
          </li>

        </ul>

      </div>

    </nav>

  </header>






</body>
</html>