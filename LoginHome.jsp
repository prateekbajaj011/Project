<%-- 
    Document   : LoginHome
    Created on : Aug 30, 2018, 7:24:45 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
<link rel="stylesheet" href="loginhome.css">
<script defer src="https://use.fontawesome.com/releases/v5.2.0/js/all.js" integrity="sha384-4oV5EgaV02iISL2ban6c/RmotsABqE4yZxZLcYMAdG7FAPsyHYAPpywE9PJo+Khy" crossorigin="anonymous"></script>
</head>
<body a link="white" vlink="white"> 

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
        <li><a href="MyOrder.jsp">MY ORDER'S</a></li>
        <li><a href="ViewCart.jsp">WISHLIST</a></li>
        <li><a href="Notification.jsp">NOTIFICATION</a></li>
        <li><a href="Logout">LOGOUT</a></li>
    </ul>
</li>
</ul>
</td>
</tr>
</table>
</div>

<div class="slider">
<div class="slides">
<div class="slide1">
<img src="images/PRM_7405 copy (1).jpg" class="img1" />
</div>
<div class="slide1">
<img src="images/PRM_7416 (1).jpg" class="img2" />
</div>
<div class="slide1">
<img src="images/PRM_7416.jpg" class="img3"/>
</div>
<div class="slide1">
<img src="images/PRM_7421 copy.jpg" class="img4"/>
</div>
<div class="constant">
<h1><u>AB Collection</u></h1>
<p>Comfort is a very important things nowadays because it is a condition of satifaction.</p>
<a class="btnshopnow">Shop Now!</a>
</div>
</div>
</div>

<div class="HME">
<table>
<th><h2>PERFORMANCE AND PRESTIGE</h2></th>
<tr>
<td><h3>THE AB WATCHES</h3></td>
</tr>
<tr>
<td>AB watches are crafted from the finest raw materials and assembled with scrupulous attention to detail. Every component is designed, developed and produced in-house to the most exacting standards.</td>
</tr>

</table>
</div>

<div class="image">
<table>
<tr>
<td><image src="images/PRE_0859 copy.jpg" height="400" width="250"/></td>
<td><image src="images/PRE_0853 copy.jpg" height="400" width="250"/></td>
</tr>
<tr>
<td><figcaption><font size="5">DATE-36</font></figcaption></td>
<td><figcaption><font size="5">DATE-37</font></figcaption></td>
</tr>
</table>
</div>

<div class="image">
<table>
<tr>
<td><image src="images/PRE_0449 copy.jpg" height="400" width="250"/></td>
<td><image src="images/PRE_1791 copy.jpg" height="400" width="350"/></td>
</tr>
<tr>
<td><figcaption><font size="5">MULTI COLOR-22</font></figcaption></td>
<td><figcaption><font size="5">MULTI COLOR-23</font></figcaption></td>
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
            
            <div class="inner2">
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
                <a href="#">Facebook</a>
                <a href="#">Twitter</a>
                <a href="#">Google +</a>
                <a href="#">Youtube</a>
            </div>
        </div>

        <hr>
        <div class="copyright">
            <span>Copyright by AB Collection © 2018</span>
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