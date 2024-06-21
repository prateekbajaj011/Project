<%-- 
    Document   : ReturnOrder
    Created on : Sep 18, 2018, 7:39:06 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Return Order</title>
    <script type="text/javascript">
        function myalert(){
            alert("Return Approved");
        }
        </script>
<meta charset="utf-8">
<link rel="stylesheet" href="return.css">
<script defer src="https://use.fontawesome.com/releases/v5.2.0/js/all.js" integrity="sha384-4oV5EgaV02iISL2ban6c/RmotsABqE4yZxZLcYMAdG7FAPsyHYAPpywE9PJo+Khy" crossorigin="anonymous"></script>
<title>Tracking Detail</title>
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
            <form action="ReturnCode.jsp">
                <p style="font-size: 50px; "><u>Return Your Order</u></p><br />
            <center><p>Your Order Number:
            <input type="number" name="OrderNo."/></p></center>
            <center><p>Return Description:
                    <textarea type="text" rows="10" cols="50" name="DESC."></textarea></center></p>
            <center><input type="submit" value="RETURN ORDER" onclick="myalert()"/></center>
            </form>
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

