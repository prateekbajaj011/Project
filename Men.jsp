<%-- 
    Document   : Men
    Created on : Aug 21, 2018, 5:18:31 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%><!-- UTF stands for UCS Transformation Format, UCS stands for Unified Computing System developed by Cisco. The size of character in UTF-8 may be 1 byte to 4 bytes. -->
<!DOCTYPE html>
<html>
<head>
    <title>MEN'S COLLECTION</title>
<link rel="stylesheet" href="Men.css">
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

<!--First Product Row -->

<div class="product">
		<div class="container">
			<div class="product_section_title">MEN'S COLLECTION</div>
                        
			<div class="product_one">
				<div class="product_img">
                                    <a href="SHOWPRODUCT.jsp?ASIN=13"><img src="images\image13.jpg"></a>
				</div>
				<div class="product_text">
					<h4>Hyper DiaMaster Automatic</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star2.png">
				</div>
				<div class="product_desc">
					<b>AB Collection DiaMaster-01 - For Men's</b>
				</div>
				<div class="product_price">
					<div class="price">
						₹1299.00
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
                                    <a href="SHOWPRODUCT.jsp?ASIN=14"><img src="images\image14.jpg"></a>
				</div>
				<div class="product_text">
					<h4>Hyper DiaMaster Automatic</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star2.png">
				</div>
				<div class="product_desc">
					<b>AB Collection DiaMaster-02 - For Men's</b> 
				</div>
				<div class="product_price">
					<div class="price">
						₹1299.00
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
                                    <a href="SHOWPRODUCT.jsp?ASIN=15"><img src="images\image15.jpg"></a>
				</div>
				<div class="product_text">
					<h4>Hyper DiaMaster Automatic</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star2.png">
				</div>
				<div class="product_desc">
					<b>AB Collection DiaMaster-03 - For Men's</b>
				</div>
				<div class="product_price">
					<div class="price">
						₹1299.00
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
                                    <a href="SHOWPRODUCT.jsp?ASIN=16"><img src="images\image20.jpg"></a>
				</div>
				<div class="product_text">
					<h4>Hyper DiaMaster Automatic</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star2.png">
				</div>
				<div class="product_desc">
					<b>AB Collection DiaMaster-04 - For Men's</b>
				</div>
				<div class="product_price">
					<div class="price">
						₹1599.00
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
				<div class="product_imgMEN">
                                    <a href="SHOWPRODUCT.jsp?ASIN=17"><img src="images\image16.jpg"></a>
				</div>
				<div class="product_text">
					<h4>True Diamonds Automatic</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star2.png">
				</div>
				<div class="product_desc">
					<b>AB Collection Ceramic-05 - For Men's</b>
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
				<div class="product_imgMEN">
                                    <a href="SHOWPRODUCT.jsp?ASIN=18"><img src="images\image17.jpg"></a>
				</div>
				<div class="product_text">
					<h4>True Diamonds Automatic</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star2.png">
				</div>
				<div class="product_desc">
					<b>AB Collection Ceramic-06 - For Men's</b> 
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
				<div class="product_imgMEN">
                                    <a href="SHOWPRODUCT.jsp?ASIN=19"><img src="images\image18.jpg"></a>
				</div>
				<div class="product_text">
					<h4>True Diamonds Automatic</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
				</div>
				<div class="product_desc">
					<b>AB Collection Ceramic-07 - For Men's</b>
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
				<div class="product_imgMEN">
                                    <a href="SHOWPRODUCT.jsp?ASIN=20"><img src="images\image19.jpg"></a>
				</div>
				<div class="product_text">
					<h4>True Diamonds Automatic</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star2.png">
					<img src="images\star2.png">
				</div>
				<div class="product_desc">
					<b>AB Collection Ceramic-08 - For Men's</b>
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