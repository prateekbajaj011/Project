<%-- 
    Document   : Kid
    Created on : Aug 23, 2018, 6:46:19 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%><!-- UTF stands for UCS Transformation Format, UCS stands for Unified Computing System developed by Cisco. The size of character in UTF-8 may be 1 byte to 4 bytes. -->
<!DOCTYPE html>
<html>
<head>
    <title>KID'S COLLECTION</title>
<link rel="stylesheet" href="Kid.css">
<script src="java.js"></script>
<script defer src="https://use.fontawesome.com/releases/v5.2.0/js/all.js" integrity="sha384-4oV5EgaV02iISL2ban6c/RmotsABqE4yZxZLcYMAdG7FAPsyHYAPpywE9PJo+Khy" crossorigin="anonymous"></script>
</head>
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
<li><a href="wish.jsp"><i class="far fa-heart"></i></a></li>
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

<!--First Product Row -->

<div class="product">
		<div class="container">
			<div class="product_section_title">KID'S COLLECTION</div>
                        
			<div class="product_one">
				<div class="product_img">
					<img src="images\image5.jpg">
				</div>
				<div class="product_text">
					<h4>HyperChrome Ultra Light</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star2.png">
				</div>
				<div class="product_desc">
					<b>AB Collection Digital-01 - For Kid's</b>
				</div>
				<div class="product_price">
					<div class="price">
						₹999.00
					</div>	
					<br></br>
                                        <div class="button">
                                            <a href="Wish.jsp">ADD TO CART</a>
					</div>
					<div class="button">
                                            <a href="register.jsp">BUY NOW!</a>
					</div>
				</div>	
			</div>
                        
			<div class="product_one product_two">
				<div class="product_img">
					<img src="images\image6.jpg">
				</div>
				<div class="product_text">
					<h4>HyperChrome Ultra Light</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star2.png">
				</div>
				<div class="product_desc">
					<b>AB Collection Digital-02 - For Kid's</b> 
				</div>
				<div class="product_price">
					<div class="price">
						₹999.00
					</div>	
					<br></br>
				        <div class="button">
                                            <a href="Wish.jsp">ADD TO CART</a>
					</div>
					<div class="button">
                                            <a href="register.jsp">BUY NOW!</a>
					</div>
				</div>	
			</div>

			<div class="product_one product_three">
				<div class="product_img">
					<img src="images\image7.jpg">
				</div>
				<div class="product_text">
					<h4>HyperChrome Ultra Light</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star2.png">
				</div>
				<div class="product_desc">
					<b>AB Collection Digital-03 - For Kid's</b>
				</div>
				<div class="product_price">
					<div class="price">
						₹999.00
					</div>	
					<br></br>
					<div class="button">
                                            <a href="Wish.jsp">ADD TO CART</a>
					</div>
					<div class="button">
                                            <a href="register.jsp">BUY NOW!</a>
					</div>
				</div>	
			</div>

			<div class="product_one product_four">
				<div class="product_img">
					<img src="images\image8.jpg">
				</div>
				<div class="product_text">
					<h4>HyperChrome Ultra Light</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star2.png">
				</div>
				<div class="product_desc">
					<b>AB Collection Digital-04 - For Kid's</b>
				</div>
				<div class="product_price">
					<div class="price">
						₹999.00
					</div>	
					<br></br>
					<div class="button">
                                            <a href="Wish.jsp">ADD TO CART</a>
					</div>
					<div class="button">
                                            <a href="register.jsp">BUY NOW!</a>
					</div>
				</div>	
			</div>

<!--Second Product Row -->

<div class="product">
		<div class="container">
			<div class="product_one">
				<div class="product_imgKID">
					<img src="images\image32.jpg">
				</div>
				<div class="product_text">
					<h4>HyperChrome Ultra Light</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star2.png">
				</div>
				<div class="product_desc">
					<b>AB Collection Digital-05 - For Kid's</b>
				</div>
				<div class="product_price">
					<div class="price">
						₹999.00
					</div>	
					<br></br>
					<div class="button">
                                            <a href="Wish.jsp">ADD TO CART</a>
					</div>
					<div class="button">
                                            <a href="register.jsp">BUY NOW!</a>
					</div>
				</div>	
			</div>

			<div class="product_one product_two">
				<div class="product_imgKID">
					<img src="images\image29.jpg">
				</div>
				<div class="product_text">
					<h4>HyperChrome Ultra Light</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star2.png">
				</div>
				<div class="product_desc">
					<b>AB Collection Digital-06 - For Kid's</b> 
				</div>
				<div class="product_price">
					<div class="price">
						₹999.00
					</div>	
					<br></br>
					<div class="button">
                                            <a href="Wish.jsp">ADD TO CART</a>
					</div>
					<div class="button">
                                            <a href="register.jsp">BUY NOW!</a>
					</div>
				</div>	
			</div>

			<div class="product_one product_three">
				<div class="product_imgKID">
					<img src="images\image30.jpg">
				</div>
				<div class="product_text">
					<h4>HyperChrome Ultra Light</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
				</div>
				<div class="product_desc">
					<b>AB Collection Digital-07 - For Kid's</b>
				</div>
				<div class="product_price">
					<div class="price">
						₹999.00
					</div>	
					<br></br>
					<div class="button">
                                            <a href="Wish.jsp">ADD TO CART</a>
					</div>
					<div class="button">
                                            <a href="register.jsp">BUY NOW!</a>
					</div>
				</div>	
			</div>

			<div class="product_one product_four">
				<div class="product_imgKID">
					<img src="images\image31.jpg">
				</div>
				<div class="product_text">
					<h4>HyperChrome Ultra Light</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star2.png">
					<img src="images\star2.png">
				</div>
				<div class="product_desc">
					<b>AB Collection Digital-08 - For Kid's</b>
				</div>
				<div class="product_price">
					<div class="price">
						₹999.00
					</div>	
					<br></br>
					<div class="button">
                                            <a href="Wish.jsp">ADD TO CART</a>
					</div>
					<div class="button">
                                            <a href="register.jsp">BUY NOW!</a>
					</div>
				</div>	
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