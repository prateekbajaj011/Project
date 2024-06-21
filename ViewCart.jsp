<%-- 
    Document   : ViewCart
    Created on : Sep 11, 2018, 1:19:52 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%><!-- UTF stands for UCS Transformation Format, UCS stands for Unified Computing System developed by Cisco. The size of character in UTF-8 may be 1 byte to 4 bytes. -->

<!DOCTYPE html>
<html>
<head>
<title>SHOPPING CART</title>
<link rel="stylesheet" href="viewcart.css">
<script defer src="https://use.fontawesome.com/releases/v5.2.0/js/all.js" integrity="sha384-4oV5EgaV02iISL2ban6c/RmotsABqE4yZxZLcYMAdG7FAPsyHYAPpywE9PJo+Khy" crossorigin="anonymous"></script>
</head>
<body a link="black" vlink="white"> <!-- a link(active link) and v link(visited link) --> 

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
    

    <%@page import="java.io.* , java.sql.*" %>
        <%! 
            String Cust_ID; ResultSet rs;          %> 
        <%
            try
            {
                
              Cust_ID=session.getAttribute("CustomerID").toString();
              
              Class.forName("oracle.jdbc.driver.OracleDriver");
              Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","watchinfo" ,"watchinfo");
              String qry="select * from cart where cust_id=?";
              PreparedStatement ps=con.prepareStatement(qry);
              
              ps.setString(1, Cust_ID);
              rs=ps.executeQuery();
        %>
          
    <font size="5" align="center"><p><b>MY CART</b></p><hr></font>
              
              <div class="cartimageleft">
                  <image src="" widht="100px" height="200px"/>
              </div>
   
          
          <%    
              while(rs.next()){
          %>
          
    <div class="cartleft">
       
        <p><b>ASIN:</b>&ensp;&ensp;<%= rs.getString("Asin") %></p>
        <p><b>Customer_ID:</b>&ensp;&ensp;<%= rs.getString("Cust_ID") %></p>
        <p><b>Product_Name:</b>&ensp;&ensp;<%= rs.getString("PRODUCT_NAME") %></p>
        <p><b>Price:</b>&ensp;&ensp;<%= rs.getString("PRICE") %></p>
        <p><b>Date:</b>&ensp;&ensp;<%= rs.getString("ADD_DATE") %></p>
        <p><b>Quantity:</b>&ensp;&ensp;<input type="number" style="width:30px; text-align: center;" value="<%= rs.getString("QUANTITY") %>"/>
            &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<a href="RemoveCart.jsp?ASIN=<%= rs.getString("Asin") %>"><input type="submit" style="cursor: pointer;" value="Remove from Cart"/></a>
       <hr><br/><br/>         
    </div>
        
          <%            
              }        
          ps.close();
          con.close();
            }
            catch(Exception ex){
                  out.println(ex);
              }
%>
<%
            
           try
            {
              
              Cust_ID  =session.getAttribute("CustomerID").toString(); 
              
              Class.forName("oracle.jdbc.driver.OracleDriver");
              Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","watchinfo" ,"watchinfo");
              String qry="Select sum(price) from cart where cust_ID=?";
              
              PreparedStatement ps=con.prepareStatement(qry);
              ps.setString(1, Cust_ID);
              
              ResultSet rs= ps.executeQuery();
              rs.next();
              
              int TotalAmt=Integer.parseInt(rs.getString(1));
              session.setAttribute("Total", TotalAmt);
            
              ps.close();
              con.close();
              }
              catch(Exception ex){
                  out.println(ex);
              }
              %>
              
<%
            
           try
            {
              
              Cust_ID  =session.getAttribute("CustomerID").toString(); 
              
              Class.forName("oracle.jdbc.driver.OracleDriver");
              Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","watchinfo" ,"watchinfo");
              String qry="Select count(asin) from cart where cust_ID=?";
              
              PreparedStatement ps=con.prepareStatement(qry);
              ps.setString(1, Cust_ID);
              
              ResultSet rs= ps.executeQuery();
              rs.next();
              
              int TotalCount=Integer.parseInt(rs.getString(1));
              session.setAttribute("ItemCount", TotalCount);
            
              ps.close();
              con.close();
              }
              catch(Exception ex){
                  out.println(ex);
              }
              %>              

              
    <div class="cartright">
        <font align="center"><p>&ensp;&ensp;<b>PRICE DETAILS</b></p><hr></font>
        <p><b>&ensp;&ensp;Amount Payable&ensp;&ensp;(<%= session.getAttribute("ItemCount")%>  items):</b>&ensp;&ensp;&ensp;&ensp; ₹ &ensp;<%= session.getAttribute("Total")%></p>    
        <a href="Collection.jsp"><input type="submit" name="" value="Continue Shopping"></a>
        <a href="BillingDetail.jsp"><input type="submit" style="float: right;" name="" value="Proceed to Checkout!"/> </a>
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