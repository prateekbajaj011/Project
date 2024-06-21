<%-- 
    Document   : MyOrder
    Created on : Sep 14, 2018, 11:12:38 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%><!-- UTF stands for UCS Transformation Format, UCS stands for Unified Computing System developed by Cisco. The size of character in UTF-8 may be 1 byte to 4 bytes. -->

<!DOCTYPE html>
<html>
<head>
<title>MY ORDER'S</title>
<link rel="stylesheet" href="order.css">
<script src="java.js"></script>
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
<li><a href="wish.jsp"><i class="far fa-heart"></i></a></li>
<li><a href="#"><%= session.getAttribute("Custname")%> </a>
    <ul>
        <li><a href="Profile.jsp">MY PROFILE</a></li>
        <li><a href="MyOrder.jsp">MY ORDER'S</a></li>
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
    
    <%@page import="java.io.* , java.sql.*" %>
        <%!       int orderno; String AMT,CustID,datee;
                  ResultSet rs;            %> 
        <%
            try
            {
                        
              Class.forName("oracle.jdbc.driver.OracleDriver");
              Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","watchinfo" ,"watchinfo");
              String qry="select max(ORDER_NUMBER) from ORDERDETAIL";
              PreparedStatement ps=con.prepareStatement(qry);
              
              rs=ps.executeQuery();
              rs.next();
              orderno=Integer.parseInt(rs.getString(1));
              orderno++;
            }
              catch(Exception ex){
                  out.println(ex);
              }
%>

<%
try{
             CustID=session.getAttribute("CustomerID").toString();
             AMT=session.getAttribute("Total").toString();
             java.util.Date d=new java.util.Date();
              datee=d.toString();
              
              Class.forName("oracle.jdbc.driver.OracleDriver");
              Connection con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","watchinfo" ,"watchinfo");
              String qry1="insert into orderdetail values(?,?,?,?)";
              PreparedStatement ps1=con1.prepareStatement(qry1);
              
              ps1.setInt(1, orderno);
              ps1.setString(2, datee);
              ps1.setString(3, CustID);
              ps1.setString(4, AMT);
              
              ResultSet rs1=ps1.executeQuery();
              rs1.next();  
              
              ps1.close();
              con1.close();
                      
              
            }catch(Exception ex){
                  out.println(ex);
            
            }
%>
    
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
            <p><i class="fas fa-handshake"></i>&ensp;&ensp;&ensp;THANK YOU FOR SHOPPING WITH AB COLLECTION&ensp;&ensp;&ensp;<i class="fas fa-handshake"></i></p>
            <p>YOUR ORDER HAS BEEN PLACED SUCCESSFULLY</p>
            <p>YOUR ORDER NUMBER</p>
            <p><input type="text" style="text-align:center;" value="<%= orderno %>"/></p>
            <p><a href="OrderOption.jsp"><center><input type="submit" value="Check Order Details"/></center></a></p>
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