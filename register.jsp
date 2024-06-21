<%-- 
    Document   : register
    Created on : Aug 5, 2018, 10:06:11 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%><!-- UTF stands for UCS Transformation Format, UCS stands for Unified Computing System developed by Cisco. The size of character in UTF-8 may be 1 byte to 4 bytes. -->
<!DOCTYPE html>
<html>
<head>
<title>Registration Page</title>
    <link rel="stylesheet" type="text/css" href="RG.css">
<body a link="white" vlink="white"><!-- a link(active link) and v link(visited link) -->


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
<li><a href="login.jsp">SIGN IN</a></li>
<li><a href="index.jsp">||</a></li>
<li><a href="register.jsp">SIGN UP</a></li>
</ul>
</td>
</tr>
</table>
</div>

    
    <div class="registerbox">
    
        <h1><u>Register Here</u></h1>
        <form action="SuccessRegister.jsp">
            <p>Full Name</p>
            <input type="text" name="fn" placeholder="Full Name"/>
            <p>Cust ID</p>
            <input type="number" name="cid" placeholder="Customer ID"/>
	    <p>Mobile Number</p>	
            <input type="number" name="mb" placeholder="Mobile No."/>
	    <p>Address</p> 		
            <input type="text" name="add" placeholder="Address"/>
            <p>City</p> 		
            <input type="text" name="cty" placeholder="City"/>
            <p>State</p> 		
            <input type="text" name="stt" placeholder="State"/>
            <p>Zip-Code</p> 		
            <input type="number" name="zp" placeholder="Zip-Code"/>
            <p>E-mail Address</p>
            <input type="text" name="em" placeholder="E-mail Address"/>
	    <p>Password</p>		
            <input type="password" name="pss" placeholder="Password"/>
	    <p>Re-Enter Password</p>		
            <input type="password" name="repass" placeholder="Re-Enter Password"/>
            <input type="submit" name="" value="Register"/>
            <a href="ForgetPSS.jsp">Forget Password...</a><br>
            <a href="login.jsp">Already have an account...</a><br>
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

</body>
</head>
</html>