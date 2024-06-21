<%-- 
    Document   : ViewTrack
    Created on : Sep 18, 2018, 3:31:46 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>View Track Details</title>
<meta charset="utf-8">
<link rel="stylesheet" href="viewtrack.css">
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
</ul>
</td>
</tr>
</table>
</div>
   
    
            <%@page import="java.io.* , java.sql.*" %>
        <%! 
            String orderno,Cust_ID; ResultSet rs;          %> 
        <%
            try
            {
                
              orderno=request.getParameter("track");
              System.out.println(orderno);
              Class.forName("oracle.jdbc.driver.OracleDriver");
              Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","watchinfo" ,"watchinfo");
              String qry="select * from ORDERDETAIL where order_number=?";
              PreparedStatement ps=con.prepareStatement(qry);
              
              ps.setString(1, orderno);
              
              rs=ps.executeQuery();
              rs.next();
              //ps.close();
              //con.close();
             
            }

            catch(Exception ex){
                  out.println(ex);
              }
%>

 <div>
    <p><b>Order Number:&ensp;&ensp;</b> <%= rs.getString(1) %></p>
    <p><b>Order Date:&ensp;&ensp;</b> <%= rs.getString(2) %></p>
    <p><b>Customer ID:&ensp;&ensp;</b> <%= rs.getString(3) %></p>
    <p><b>Order Amount:&ensp;&ensp;</b>₹ <%= rs.getString(4) %></p><br />
</div>

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
        <br />
    <font size="5" align="center"><p><b>Order Details</b></p><hr></font>
              
              <div class="trackimageleft">
                  <image src="" widht="100px" height="200px"/>
              </div>
   
          
          <%    
              while(rs.next()){
          %>
          
    <div class="trackleft">
       
        <p><b>ASIN:</b>&ensp;&ensp;<%= rs.getString("Asin") %></p>
        <p><b>Customer_ID:</b>&ensp;&ensp;<%= rs.getString("Cust_ID") %></p>
        <p><b>Product_Name:</b>&ensp;&ensp;<%= rs.getString("PRODUCT_NAME") %></p>
        <p><b>Price:</b>&ensp;&ensp;₹ <%= rs.getString("PRICE") %></p>
        <p><b>Order Status:</b>&ensp;&ensp; Ready to Dispatched</p>
        <hr>

            
       <br/><br/>         
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
