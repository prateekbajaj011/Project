<%-- 
    Document   : Collection
    Created on : Aug 21, 2018, 4:18:35 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Watch Collection</title>
<link rel="stylesheet" href="Collection.css">
<script src="java.js"></script>
<script defer src="https://use.fontawesome.com/releases/v5.2.0/js/all.js" integrity="sha384-4oV5EgaV02iISL2ban6c/RmotsABqE4yZxZLcYMAdG7FAPsyHYAPpywE9PJo+Khy" crossorigin="anonymous"></script>
</head>
<body a link="white" vlink="white">
    
    <div>
        <%
          if(session.getAttribute("CustomerID")==null) 
              response.sendRedirect("login.jsp");
            
        %>
    </div>
    
<div class="Home">
<table>
<tr>
    <td><a href="LoginHome.jsp"><image src="images/logo.jpg" width="260" height="120"/></a></td>
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
        <li><a href="#">MY ORDER'S</a></li>
        <li><a href="#">WISHLIST</a></li>
        <li><a href="#">NOTIFICATION</a></li>
        <li><a href="#">LOGOUT</a></li>
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
			<div class="product_section_title">LATEST ARRIVALS</div>
                        
			<div class="product_one">
				<div class="product_img">
                                    <a href="SHOWPRODUCT.jsp?ASIN=1"><img src="images\image1.jpg"></a>
				</div>
				<div class="product_text">
					<h4>True Automatic Diamonds</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star2.png">
				</div>
				<div class="product_desc">
					<b>AB Collection Centrix-01 - For Men's</b>
				</div>
				<div class="product_price">
					<div class="price">
						₹999.00
					</div>	
					<br></br>
					<div class="button">
                                            
                                            <a href="cart.jsp?ASIN=1&Prod_Name=AB Collection Centrix-01 - For Men's&QTY=1&PRICE=999">ADD TO CART </a>
					</div>
					<div class="button">
						BUY NOW!
					</div>
				</div>	
			</div>

			<div class="product_one product_two">
				<div class="product_img">
                                    <a href="SHOWPRODUCT.jsp?ASIN=2"><img src="images\image2.jpg"></a>
				</div>
				<div class="product_text">
					<h4>True Automatic Diamonds</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star2.png">
				</div>
				<div class="product_desc">
                                    <b>AB Collection Centrix-02 - For Men's</b>
				</div>
				<div class="product_price">
					<div class="price">
						₹999.00
					</div>	
					<br></br>
					<div class="button">
				<a href="cart.jsp?ASIN=2&Prod_Name=AB Collection Centrix-02 - For Men's&QTY=1&PRICE=999">ADD TO CART </a>
					</div>
					<div class="button">
						BUY NOW!
					</div>
				</div>	
			</div>

			<div class="product_one product_three">
				<div class="product_img">
                                    <a href="SHOWPRODUCT.jsp?ASIN=3"><img src="images\image3.jpg"></a>
				</div>
				<div class="product_text">
					<h4>True Automatic Diamonds</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star2.png">
				</div>
				<div class="product_desc">
                                    <b>AB Collection Centrix-03 - For Men's</b>
				</div>
				<div class="product_price">
					<div class="price">
						₹799.00
					</div>	
					<br></br>
					<div class="button">
					<a href="cart.jsp?ASIN=3&Prod_Name=AB Collection Centrix-03 - For Men's&QTY=1&PRICE=799">ADD TO CART </a>
					</div>
					<div class="button">
						BUY NOW!
					</div>
				</div>	
			</div>

			<div class="product_one product_four">
				<div class="product_img">
                                    <a href="SHOWPRODUCT.jsp?ASIN=4"><img src="images\image4.jpg"></a>
				</div>
				<div class="product_text">
					<h4>True Automatic Diamonds</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star2.png">
				</div>
				<div class="product_desc">
                                    <b>AB Collection Centrix-04 - For Men's</b>
				</div>
				<div class="product_price">
					<div class="price">
						₹799.00
					</div>	
					<br></br>
					<div class="button">
                                            
					<a href="cart.jsp?ASIN=4&Prod_Name=AB Collection Centrix-04 - For Men's&QTY=1&PRICE=799">ADD TO CART </a>
					</div>
					<div class="button">
						BUY NOW!
					</div>
				</div>	
			</div>
		</div>
	</div>

<!--Second Product Row -->

<div class="product">
		<div class="container">
			<div class="product_one">
				<div class="product_imgLDS">
                                    <a href="SHOWPRODUCT.jsp?ASIN=5"><img src="images\image9.jpg"></a>
				</div>
				<div class="product_text">
					<h4>True Diamonds</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star2.png">
					<img src="images\star2.png">
				</div>
				<div class="product_desc">
                                    <b>AB Collection Ceramic-05 - For Women's</b>
				</div>
				<div class="product_price">
					<div class="price">
						₹599.00
					</div>	
					<br></br>
					<div class="button">
			<a href="cart.jsp?ASIN=5&Prod_Name=AB Collection Ceramic-05 - For Women's&QTY=1&PRICE=599">ADD TO CART </a>
					</div>
					<div class="button">
						BUY NOW!
					</div>
				</div>	
			</div>

			<div class="product_one product_two">
				<div class="product_imgLDS">
					<a href="SHOWPRODUCT.jsp?ASIN=6"><img src="images\image10.jpg"></a>
				</div>
				<div class="product_text">
					<h4>True Diamonds</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star2.png">
				</div>
				<div class="product_desc">
                                    <b>AB Collection Ceramic-06 - For Women's</b>
				</div>
				<div class="product_price">
					<div class="price">
						₹699.00
					</div>	
					<br></br>
					<div class="button">
					<a href="cart.jsp?ASIN=6&Prod_Name=AB Collection Ceramic-06 - For Women's&QTY=1&PRICE=699">ADD TO CART </a>
					</div>
					<div class="button">
						BUY NOW!
					</div>
				</div>	
			</div>

			<div class="product_one product_three">
				<div class="product_imgLDS">
                                    <a href="SHOWPRODUCT.jsp?ASIN=7"><img src="images\image11.jpg"></a>
				</div>
				<div class="product_text">
					<h4>True Diamonds</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star2.png">
					<img src="images\star2.png">
					<img src="images\star2.png">
				</div>
				<div class="product_desc">
                                    <b>AB Collection Ceramic-07 - For Women's</b>
				</div>
				<div class="product_price">
					<div class="price">
						₹499.000
					</div>	
					<br></br>
					<div class="button">
			<a href="cart.jsp?ASIN=7&Prod_Name=AB Collection Ceramic-07 - For Women's&QTY=1&PRICE=499">ADD TO CART </a>
					</div>
					<div class="button">
						BUY NOW!
					</div>
				</div>	
			</div>

			<div class="product_one product_four">
				<div class="product_imgLDS">
                                    <a href="SHOWPRODUCT.jsp?ASIN=8"><img src="images\image12.jpg"></a>
				</div>
				<div class="product_text">
					<h4>True Diamonds</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
				</div>
				<div class="product_desc">
                                    <b>AB Collection Ceramic-08 - For Women's</b>
				</div>
				<div class="product_price">
					<div class="price">
						₹699.00
					</div>	
					<br></br>
					<div class="button">
				<a href="cart.jsp?ASIN=8&Prod_Name=AB Collection Ceramic-08 - For Women's&QTY=1&PRICE=699">ADD TO CART </a>
					</div>
					<div class="button">
						BUY NOW!
					</div>
				</div>	
			</div>
		</div>
	</div>
	
<!--Third Product Row -->

<div class="product">
		<div class="container">
			<div class="product_section_title">TOP SALE ARRIVALS</div>

			<div class="product_one">
				<div class="product_img">
                                    <a href="SHOWPRODUCT.jsp?ASIN=9"><img src="images\image5.jpg"></a>
				</div>
				<div class="product_text">
					<h4>Sporty Format</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
				</div>
				<div class="product_desc">
                                    <b>AB Collection Digital-01 - For Kid's</b>
				</div>
				<div class="product_price">
					<div class="price">
						₹549.00
					</div>	
					<br></br>
					<div class="button">
		<a href="cart.jsp?ASIN=9&Prod_Name=AB Collection Digital-01 - For Kid's&QTY=1&PRICE=549">ADD TO CART </a>
					</div>
					<div class="button">
						BUY NOW!
					</div>
				</div>	
			</div>

			<div class="product_one product_two">
				<div class="product_img">
                                    <a href="SHOWPRODUCT.jsp?ASIN=10"><img src="images\image6.jpg"></a>
				</div>
				<div class="product_text">
					<h4>Sporty Format</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
				</div>
				<div class="product_desc">
                                   <b>AB Collection Digital-02 - For Kid's</b>
				</div>
				<div class="product_price">
					<div class="price">
						₹549.00
					</div>	
					<br></br>
					<div class="button">
					<a href="cart.jsp?ASIN=10&Prod_Name=AB Collection Digital-02 - For Kid's&QTY=1&PRICE=549">ADD TO CART </a>
					</div>
					<div class="button">
						BUY NOW!
					</div>
				</div>	
			</div>

			<div class="product_one product_three">
				<div class="product_img">
                                    <a href="SHOWPRODUCT.jsp?ASIN=11"><img src="images\image7.jpg"></a>
				</div>
				<div class="product_text">
					<h4>Sporty Format</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
				</div>
				<div class="product_desc">
                                    <b>AB Collection Digital-03 - For Kid's</b>
				</div>
				<div class="product_price">
					<div class="price">
						₹549.00
					</div>	
					<br></br>
					<div class="button">
						<a href="cart.jsp?ASIN=11&Prod_Name=AB Collection Digital-03 - For Kid's&QTY=1&PRICE=549">ADD TO CART </a>
					</div>
					<div class="button">
						BUY NOW!
					</div>
				</div>	
			</div>

			<div class="product_one product_four">
				<div class="product_img">
                                    <a href="SHOWPRODUCT.jsp?ASIN=12"><img src="images\image8.jpg"></a>
				</div>
				<div class="product_text">
					<h4>Sporty Format</h4>
				</div>
				<div class="star_rating">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
					<img src="images\star1.png">
				</div>
				<div class="product_desc">
                                    <b>AB Collection Digital-04 - For Kid's</b>
				</div>
				<div class="product_price">
					<div class="price">
						₹699.00
					</div>	
					<br></br>
					<div class="button">
						<a href="cart.jsp?ASIN=12&Prod_Name=AB Collection Digital-04 - For Kid's&QTY=1&PRICE=699">ADD TO CART </a>
					</div>
					<div class="button">
						BUY NOW!
					</div>
				</div>	
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
            <span>Copyright by AB Collection © 2018</span>
        </div>
</div>

</body>
</html>