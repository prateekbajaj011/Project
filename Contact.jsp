<%-- 
    Document   : Contact
    Created on : Aug 1, 2018, 5:34:33 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CT.css">
<script defer src="https://use.fontawesome.com/releases/v5.2.0/js/all.js" integrity="sha384-4oV5EgaV02iISL2ban6c/RmotsABqE4yZxZLcYMAdG7FAPsyHYAPpywE9PJo+Khy" crossorigin="anonymous"></script>
<title>Contact Us</title>
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
</ul>
</td>
</tr>
</table>
</div>

    
<center><h1>Contact Us</h1><center><hr>

<div class="heading">
<p><font size="5">Do you have any AB Collection-related questions?</font></p>

<p><font size="5">Fill out the form below and we’ll get back to you as soon as possible.</font></p>
</div>
<div>
<table cellspacing="10">
    <form action="ContactCode.jsp"> 
<tr>
    <td><select id="select" name="SLT">
<option>SELECT</option>
<option value="Mr.">Mr.</option>
<option value="Ms.">Ms.</option>
<option value="Mrs.">Mrs.</option>
</select></td> 	
<td><input type="text" name="FNM" placeholder="First Name"/></td>
<td><input type="text" name="LNM" placeholder="Last Name"/></td>
<td><input type="text" name="ST" placeholder="State"/></td>
</tr>
<tr>
<td><input type="text" name="CTY" placeholder="City"/></td>
<td><input type="number" name="ZIP" placeholder="Zip code"/></td>
<td><input type="number" name="MNO" placeholder="Mobile Number"/></td>
<td><input type="text" name="EMAIL" placeholder="Email Address"/></td>
</tr>
</table>
<table align="center">
<tr>
<td><textarea rows="10" cols="100" name="DIS" placeholder="Description"></textarea></td>
</tr>
<table>
<tr>
<td><input type="checkbox" id="txt1"/></td>
<td>I have read and agree to the Privacy Policy</td>
</tr>
</table>
<tr>
<td><input type="submit" value="Submit"/></td>
</tr>
</form>
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
