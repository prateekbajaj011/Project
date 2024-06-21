<%-- 
    Document   : Notification
    Created on : Sep 12, 2018, 6:05:43 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%><!-- UTF stands for UCS Transformation Format, UCS stands for Unified Computing System developed by Cisco. The size of character in UTF-8 may be 1 byte to 4 bytes. -->

<!DOCTYPE html>
<html>
<head>
<title>MY PROFILE</title>
<link rel="stylesheet" href="notification.css">
<script src="java.js"></script>
<script defer src="https://use.fontawesome.com/releases/v5.2.0/js/all.js" integrity="sha384-4oV5EgaV02iISL2ban6c/RmotsABqE4yZxZLcYMAdG7FAPsyHYAPpywE9PJo+Khy" crossorigin="anonymous"></script>
</head>
<body a link="black" vlink="black"><!-- a link(active link) and v link(visited link) --> 

    <div>
        <%
          if(session.getAttribute("CustomerID")==null) 
              response.sendRedirect("login.jsp");
            
        %>
    </div>
    
<div class="Home">
<table>
<tr>
    <td><a href="index.jsp"><image src="images/logo.jpg" width="260" height="120"/></a></td>
<td>
<ul>
<li><a href="Collection.jsp">COLLECTIONS</a></li>
<li><a href="about.jsp">ABOUT AB</a></li>
<li><a href="category.jsp">WATCH CATEGORY</a></li>
<li><a href="Contact.jsp">CONTACT US</a></li>
<li><a href="search.jsp"><i class="fas fa-search"/></i></a></li>
<li><a href="ViewCart.jsp"><i class="far fa-heart"></i></a></li>
<li><a href="#"><%= session.getAttribute("Custname").toString() %> </a>
    <ul>
        <li><a href="Profile.jsp">MY PROFILE</a></li>
        <li><a href="#">MY ORDER'S</a></li>
        <li><a href="#">WISHLIST</a></li>
        <li><a href="#">NOTIFICATION</a></li>
        <li><a href="#">LOGOUT</a></li>
    </ul>
</li>
</ul>
</td>
</tr>
</table>
</div>
  
    
    <div class="left">
        <table>
            <tr>
                <td><image src="images/admin.jpg" style="border-radius: 10px;" width="70" height="70"/></td>
                <td><b>Hello, <%= session.getAttribute("Custname").toString() %></b></td>
            </tr>
        </table>  
    
    </div>
            
            <div class="down">
                <p>&ensp;<i class="fab fa-get-pocket"></i><a href="#">&ensp;&ensp;&ensp;MY ORDER'S</p><hr></a>
                
                <p>&ensp;<i class="fas fa-shopping-basket"></i>&ensp;&ensp;&ensp;ACCOUNT SETTING</p>
                <p><a href="Profile.jsp">&ensp;&ensp;&ensp;Profile Information</p></a>
                <p><a href="CheckPass.jsp">&ensp;&ensp;&ensp;Change Password</p></a>
        <hr>
                <p>&ensp;<i class="fas fa-file-medical-alt"></i>&ensp;&ensp;&ensp;MY STUFF</p>
                <p><a href="ViewCart.jsp">&ensp;&ensp;&ensp;My Cart</p></a>
                <p><a href="Notification .jsp">&ensp;&ensp;&ensp;All Notification</p></a>
                <p><a href="OrderOption.jsp">&ensp;&ensp;&ensp;Order Status</p></a>
        <hr>
                <p>&ensp;<i class="fas fa-power-off"></i>&ensp;&ensp;&ensp;LOGOUT</p>
                
            </div>
    <div class="right">
        <table class="NOTI">
            <tr>
                <td><center><image src="images/noti.jpg"/></center></td>
            </tr>
            <tr>
                <td><center>All caught up!</center></td>
            </tr>
            <tr>
                <td><center>There are no new notifications for you</center></td>
            </tr>
        </table>
    </div>
            
<div class="footer">

        <div class="outer">
            <div class="inner">
                <h4><u>AB COLLECTIONS</u></h4>
                <a href="Men.jsp">Men's</a>
                <a href="Women.jsp">Women's</a>
                <a href="Kid.jsp">Kid's</a>
                <a href="Collection.jsp">All our Watches</a>
		</div>
            
            <div class="inner">
                <h4><u>TERMS AND CONDITION</u></h4>
                <a href="Privacy.jsp">Privacy Notice</a>
                <a href="Term.jsp">Terms of Use</a>
            </div>
            <div class="inner2">
                <h4><u>CUSTOMER SERVICE</u></h4>
                <a href="MAP.jsp">Find a Service Center</a>
                <a href="Collection.jsp">Online Catalogue</a>
                <a href="Service.jsp">Service Prices</a>
            </div>
            <div class="inner2">
                <h4><u>FOLLOW US</u></h4>
                <a href="www.facebook.com">Facebook</a>
                <a href="https://twitter.com/login?lang=en">Twitter</a>
                <a href="www.youtube.com">Youtube</a>
            </div>
        </div>

        <hr>
        <div class="copyright">
            <p>Copyright by AB Collection © 2018</p>
        </div>
</div>
    </body>
</html>