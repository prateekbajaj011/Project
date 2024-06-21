<%-- 
    Document   : PassResetcode
    Created on : Sep 13, 2018, 1:41:11 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
  
         <%@page import="java.sql.*" %>
        <%! String Cust_ID,Password; %> 
        <%
            try
            {
                              
             Cust_ID=session.getAttribute("CustomerID").toString();
             Password=request.getParameter("pass");
              
             Class.forName("oracle.jdbc.driver.OracleDriver");
              Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","watchinfo" ,"watchinfo");
              String qry="update registration set password=? where custid=?";
              PreparedStatement ps=con.prepareStatement(qry);
                               
              ps.setString(2, Cust_ID);
              ps.setString(1, Password);
                            
              ps.executeUpdate();    
              
              response.sendRedirect("passreset.jsp");
              ps.close();
              con.close();                
            }
            catch(Exception ex){
                out.println(ex);
        }
        %>
  
    </body>
</html>
