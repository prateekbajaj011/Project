<%-- 
    Document   : BillingDetail
    Created on : Sep 14, 2018, 2:34:47 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Shipping & Payment Details</title>
<link rel="stylesheet" href="Billing.css">
<script defer src="https://use.fontawesome.com/releases/v5.2.0/js/all.js" integrity="sha384-4oV5EgaV02iISL2ban6c/RmotsABqE4yZxZLcYMAdG7FAPsyHYAPpywE9PJo+Khy" crossorigin="anonymous"></script>
</head>
<body a link="black" vlink="white"> 

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
<li><a href="wish.jsp"><i class="far fa-heart"></i></a></li>
<li><a href="#"><%= session.getAttribute("Custname")%> </a>
    <ul>
        <li><a href="Profile.jsp">MY PROFILE</a></li>
        <li><a href="MyOrder.jsp">MY ORDER'S</a></li>
        <li><a href="cart.jsp">WISHLIST</a></li>
        <li><a href="Notification.jsp">NOTIFICATION</a></li>
        <li><a href="Logout.jsp">LOGOUT</a></li>
    </ul>
</li>
</ul>
</td>
</tr>
</table>
</div>
    
    <div class="billbox">
        
    <div class="billboxleft">
        <h1><u>Customer Details</u></h1>
      
            <p>Full Name</p>
            <input type="text" readonly="true" value="<%= session.getAttribute("Custname")%>"/>
            <p>E-mail Address</p>
            <input type="text" readonly="true" value="<%= session.getAttribute("Email_ID") %>"/>
            <p>Address</p>
            <input type="text" size="50" readonly="true" value="<%= session.getAttribute("Address") %>"/>
	    <p>Mobile Number</p>	
            <input type="text" readonly="true" value="<%= session.getAttribute("Mobile_NO")%>"/>
            <p>City</p>	
            <input type="text" readonly="true" value="<%= session.getAttribute("City") %>"/>
            <p>State</p>	
            <input type="text" readonly="true" value="<%= session.getAttribute("State") %>"/>
            <p>Zip</p>	
            <input type="text" readonly="true" value="<%= session.getAttribute("Zip") %>"/>
	    
    </div>
            
            
        <div class="billboxright">
            
            <h1><u>Payment Details</u></h1>
            <form action="BillingCode.jsp">
            <p>Transaction ID</p>	
            <input type="text" name="trid" placeholder="Transaction ID"/>
            <p>Card Number</p>	
            <input type="text" name="cnumber" placeholder="1855 XXXX XXXX XX09"/>
            <p>Card Holder Name</p>	
            <input type="text" name="cname" placeholder="Name"/>
            <p>Exp Month</p>	
            <input type="number" name="exmonth" placeholder="08"/>
	    <p>Exp Year</p>	
            <input type="number" name="exyear" placeholder="2018"/>
	    <p>CVV</p>	
            <input type="password" name="CVV" placeholder="CVV"/>
            <center><input type="submit" value="PAY NOW"/></center>
            </form>
        </div>         
            
  </div>    
   
<p style="margin-top:65%; margin-left: 20px; font-size: 40px; font-weight: bold;">Total Amount to be Pay:-&nbsp; ₹&nbsp;<%= session.getAttribute("Total")%></p>


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