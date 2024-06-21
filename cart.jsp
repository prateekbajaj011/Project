<%-- 
    Document   : cart
    Created on : Sep 4, 2018, 12:58:31 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%><!-- UTF stands for UCS Transformation Format, UCS stands for Unified Computing System developed by Cisco. The size of character in UTF-8 may be 1 byte to 4 bytes. -->
<!DOCTYPE html>
<html>

    <body>
 
   <%@page import=" java.util.* , java.io.* , java.sql.*" %>            <!-- this is java header file -->
        <%! String Prod_Name,datee,Cust_ID,Asin,QTY,Price;
              %> 
        <%
            try
            {
              java.util.Date d=new java.util.Date();            //date header file
              datee=d.toString();
              
              Cust_ID  =session.getAttribute("CustomerID").toString();
              Prod_Name=request.getParameter("Prod_Name");
              Asin  =request.getParameter("ASIN");
              QTY      =request.getParameter("QTY");
              Price    =request.getParameter("PRICE");
              
              Class.forName("oracle.jdbc.driver.OracleDriver");         //driver name
              Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","watchinfo" ,"watchinfo");       //database connection
              String qry="insert into cart values(?,?,?,?,?,?)";            //get the values from database trhrough this query
              PreparedStatement ps=con.prepareStatement(qry);
              
              ps.setString(1, Asin);
              ps.setString(2, Cust_ID);
              ps.setString(3, Prod_Name);
              ps.setString(4, QTY);
              ps.setString(5, Price);
              ps.setString(6, datee);
              
              ps.executeUpdate();                       //through this we execute query
              response.sendRedirect("Collection.jsp");
              ps.close();
              con.close();
              
              }
            
              catch(Exception ex){
                  out.println(ex);
              }
%>

            </body>
</html>
