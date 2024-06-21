<%-- 
    Document   : RemoveCart
    Created on : Sep 16, 2018, 2:27:32 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%@page import="java.io.* , java.sql.*" %>
        <%!   String asin, Cust_ID; ResultSet rs;          %> 
        <%
            try
            {
                
              asin=request.getParameter("ASIN");
             
              
              Class.forName("oracle.jdbc.driver.OracleDriver");
              Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","watchinfo" ,"watchinfo");
              String qry="delete from cart where asin=?";
              PreparedStatement ps=con.prepareStatement(qry);
              
              ps.setString(1, asin);
             
              rs=ps.executeQuery();
              
              if(rs.next()){
              response.sendRedirect("ViewCart.jsp");
              }
              else{
              out.println("record not found");
              }
              ps.close();
              con.close();
              
            }

            catch(Exception ex){
                  out.println(ex);
              }
%>

    </body>
</html>
