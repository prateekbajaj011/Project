<%-- 
    Document   : CancelCode
    Created on : Sep 18, 2018, 6:58:54 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%@page import="java.io.* , java.sql.*" %>
        <%!   String orderno; ResultSet rs;          %> 
        <%
            try
            {
                
              orderno=request.getParameter("cancel");
             
              
              Class.forName("oracle.jdbc.driver.OracleDriver");
              Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","watchinfo" ,"watchinfo");
              String qry="delete from orderdetail where order_number=?";
              PreparedStatement ps=con.prepareStatement(qry);
              
              ps.setString(1, orderno);
             
              rs=ps.executeQuery();
              
              if(rs.next()){
              response.sendRedirect("CancelOrder.jsp");
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
