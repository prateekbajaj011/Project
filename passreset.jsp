<%-- 
    Document   : passreset
    Created on : Aug 5, 2018, 10:01:08 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Reset Password</title>
<script type="text/javascript">
    function myFunction(){
        var x=document.getElementById("pass");
        var y=document.getElementById("cpypass");
        
        if(x.type=="password"){
           x.type="text";
        }else{x.type="password"}
        
         if(y.type=="password"){
           y.type="text"
        }else{y.type="password"}
    }
    
    function validate(){
        var password=document.getElementById("pass").value;
        var confirmpassword=document.getElementById("cpypass").value;
        
        if(password !== confirmpassword){
            alert("Password do not match");
            return false;
        }else{
            return true;
        }
    }
</script>
    <link rel="stylesheet" type="text/css" href="reset.css">
    <script defer src="https://use.fontawesome.com/releases/v5.2.0/js/all.js" integrity="sha384-4oV5EgaV02iISL2ban6c/RmotsABqE4yZxZLcYMAdG7FAPsyHYAPpywE9PJo+Khy" crossorigin="anonymous"></script>
</head>
<body a link="Black" vlink="black">
    
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
        <li><a href="Myorder.jsp">MY ORDER'S</a></li>
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
    
    <div class="left">
        <table>
            <tr>
                <td><image src="images/admin.jpg" style="border-radius: 10px;" width="70" height="70"/></td>
                <td><b>Hello, <%= session.getAttribute("Custname")%></b></td>
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
        <p><a href="Notification.jsp">&ensp;&ensp;&ensp;All Notification</p></a>
            <p><a href="OrderOption.jsp">&ensp;&ensp;&ensp;Order Status</p></a>
        <hr>
                <p>&ensp;<i class="fas fa-power-off"></i>&ensp;&ensp;&ensp;LOGOUT</p>
                
            </div> 
           

    <div class="resetbox">
    <img src="images\avatar.png" class="avatar">
        <h1>Password Reset</h1>
        <form action="login.jsp">
            <p>New Password</p>
            <input type="password" id="pass" placeholder="New Password">
            <p>Re-Enter New Password</p>
            <input type="password" id="cpypass" placeholder="Re-Enter New Password"/>
            <input type="checkbox" name="" onclick="myFunction()"/><ps>Show Password</ps>
            <input type="submit" name="" value="Change Password" onclick="return validate()"/>
            
            
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