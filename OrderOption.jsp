<%-- 
    Document   : OrderOption
    Created on : Sep 16, 2018, 6:18:48 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%><!-- UTF stands for UCS Transformation Format, UCS stands for Unified Computing System developed by Cisco. The size of character in UTF-8 may be 1 byte to 4 bytes. -->
<!DOCTYPE html>
<html>
<head>
<title>Category Product</title>
<link rel="stylesheet" href="Cat.css">
<script defer src="https://use.fontawesome.com/releases/v5.2.0/js/all.js" integrity="sha384-4oV5EgaV02iISL2ban6c/RmotsABqE4yZxZLcYMAdG7FAPsyHYAPpywE9PJo+Khy" crossorigin="anonymous"></script>
</head>
<body a link="black" vlink="black"><!-- a link(active link) and v link(visited link) --> 
    

<div class="Home">
<table>
<tr>
<td><a href="index.jsp"><image src="images/logo.jpg" width="260" height="120"/></a></td>
<td>
<ul>
    <li><a href="Collection.jsp"><font color="white">COLLECTIONS</font></a></li>
<li><a href="about.jsp"><font color="white">ABOUT AB</font></a></li>
<li><a href="category.jsp"><font color="white">WATCH CATEGORY</font></a></li>
<li><a href="Contact.jsp"><font color="white">CONTACT US</font></a></li>
<li><a href="search.jsp"><font color="white"><i class="fas fa-search"/></i></font></a></li>
<li><a href="ViewCart.jsp"><font color="white"><i class="far fa-heart"></i></font></a></li>
<li><a href="#"><%= session.getAttribute("Custname")%> </a>
    <ul>
        <li><a href="Profile.jsp">MY PROFILE</a></li>
        <li><a href="MyOrder.jsp">MY ORDER'S</a></li>
        <li><a href="ViewCart.jsp">WISHLIST</a></li>
        <li><a href="Notification.jsp">NOTIFICATION</a></li>
        <li><a href="Logout.jsp">LOGOUT</a></li>
    </ul>
</li>
</ul>
</td>
</tr>
</table>
</div>

<div>
<table cellpadding="20" align="center">
<tr>
    <td><font size="10"><u>CHECK YOUR ORDER STATUS</u></font></td>
</tr>
</table>
</div>

<div class="cat">
<ul>
    <li><a href="Track.jsp"><div class="BDY">TRACK ORDER</div></a></li>
<li><a href="ReturnOrder.jsp"><div class="BDY">RETURN ORDER</div></a></li>
<li><a href="CancelOrder.jsp"><div class="BDY">CANCEL ORDER</div></a></li>
</ul>
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
