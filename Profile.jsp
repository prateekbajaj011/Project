<%-- 
    Document   : Profile
    Created on : Sep 6, 2018, 3:29:52 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%><!-- UTF stands for UCS Transformation Format, UCS stands for Unified Computing System developed by Cisco. The size of character in UTF-8 may be 1 byte to 4 bytes. -->

<!DOCTYPE html>
<html>
<head>
<title>MY PROFILE</title>
<link rel="stylesheet" href="profile.css">
<script defer src="https://use.fontawesome.com/releases/v5.2.0/js/all.js" integrity="sha384-4oV5EgaV02iISL2ban6c/RmotsABqE4yZxZLcYMAdG7FAPsyHYAPpywE9PJo+Khy" crossorigin="anonymous"></script>
</head>
<body a link="black" vlink="black"> <!-- a link(active link) and v link(visited link) -->
    
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
<li><a href="#"><%= session.getAttribute("Custname") %> </a>
    <ul>
        <li><a href="Profile.jsp">MY PROFILE</a></li>
        <li><a href="OrderOption.jsp">MY ORDER'S</a></li>
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
  
    
    <div class="left">
        <table>
            <tr>
                <td><image src="images/admin.jpg" style="border-radius: 10px;" width="70" height="70"/></td>
                <td><b>Hello, <%= session.getAttribute("Custname") %></b></td>
            </tr>
        </table>  
    
    </div>
            
            <div class="down">
                <p>&ensp;<i class="fab fa-get-pocket"></i><a href="MyOrder.jsp">&ensp;&ensp;&ensp;MY ORDER'S</p><hr></a>
                
                <p>&ensp;<i class="fas fa-shopping-basket"></i>&ensp;&ensp;&ensp;ACCOUNT SETTING</p>
                <p><a href="Profile.jsp">&ensp;&ensp;&ensp;Profile Information</p></a>
                <p><a href="CheckPass.jsp">&ensp;&ensp;&ensp;Change Password</p></a>
        <hr>
                <p>&ensp;<i class="fas fa-file-medical-alt"></i>&ensp;&ensp;&ensp;MY STUFF</p>
                <p><a href="ViewCart.jsp">&ensp;&ensp;&ensp;My Cart</p></a>
        <p><a href="Notification.jsp">&ensp;&ensp;&ensp;All Notification</p></a>
        <p><a href="OrderOption.jsp">&ensp;&ensp;&ensp;Order Status</p></a>
        <hr>
                <p><a href="Logout.jsp">&ensp;<i class="fas fa-power-off"></i>&ensp;&ensp;&ensp;LOGOUT</p>
                
            </div>
    <div class="right">
              
    <p>&ensp;&ensp;&ensp;<u><b>PERSONAL INFORMATION</b></u></p>
    &ensp;&ensp;&ensp;<input type="text" readonly="true" value="<%= session.getAttribute("Custname")%>"/>
    &ensp;&ensp;&ensp;<input type="text" size="50" readonly="true" value="<%= session.getAttribute("Address") %>"/>
    <hr>
    
    <p>&ensp;&ensp;&ensp;<u><b>E-MAIL ADDRESS</b></u></p>
    &ensp;&ensp;&ensp;<input type="text" readonly="true" value="<%= session.getAttribute("Email_ID")%>"/>   
        <hr>
    
    <p>&ensp;&ensp;&ensp;<u><b>MOBILE NUMBER</b></u></p>
    &ensp;&ensp;&ensp;<input type="text" readonly="true" value="<%= session.getAttribute("Mobile_NO")%>"/>
        <hr>
    
        
     <p>&ensp;&ensp;&ensp;<u><b>FAQ</b></u></p>

     <p>&ensp;&ensp;&ensp;<b>What happens when I update my email address (or mobile number)?</b></p>
     <p>&ensp;&ensp;&ensp; Your login email id (or mobile number) changes, likewise. You'll receive all your account related communication on your updated email address (or mobile number).</p>
     
     <p>&ensp;&ensp;&ensp;<b>When will my login account be updated with the new email address (or mobile number)?</b></p>
     <p>&ensp;&ensp;&ensp;It happens as soon as you confirm the verification code sent to your email (or mobile) and save the changes.</p>
     
     <p>&ensp;&ensp;&ensp;<b>What happens to my existing login account when I update my email address (or mobile number)?</b></p>
     <p>&ensp;&ensp;&ensp; Updating your email address (or mobile number) doesn't invalidate your account. Your account remains fully functional. You'll continue seeing your Order history, saved information and personal details.</p>
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
    </body>
</html>