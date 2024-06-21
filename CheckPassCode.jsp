<%-- 
    Document   : CheckPassCode
    Created on : Sep 12, 2018, 3:52:04 PM
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
              String qry="select * from registration where custid=? and password=?";
              PreparedStatement ps=con.prepareStatement(qry);
                               
              ps.setString(1, Cust_ID);
              ps.setString(2, Password);
                            
              ResultSet rs=ps.executeQuery();
              
              if(rs.next())
              {
               response.sendRedirect("passreset.jsp");
              }
              else
              {
                  response.sendRedirect("CheckPass.jsp");
              }
                             
            }
            catch(Exception ex){
                out.println(ex);
        }
            
            
            
            
        %>
  
    </body>
</html>
