<%-- 
    Document   : ReturnCode
    Created on : Sep 19, 2018, 2:15:52 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%@page import="java.io.* , java.sql.*" %>
        <%! String orderno,datee,description;            %> 
        <%
            try
            {
                java.util.Date d=new java.util.Date();
              datee=d.toString();
              
              orderno=request.getParameter("OrderNo.");
              description=request.getParameter("DESC.");
            
              Class.forName("oracle.jdbc.driver.OracleDriver");
              Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","watchinfo" ,"watchinfo");
              String qry="insert into returndetail values(?,?,?)";
              PreparedStatement ps=con.prepareStatement(qry);
              
              ps.setString(1, orderno);
              ps.setString(2, datee);
              ps.setString(3, description);
              ps.executeUpdate();
              
              response.sendRedirect("ReturnOrder.jsp"); 
              ps.close();
              con.close();
              
              }
            
              catch(Exception ex){
                  out.println(ex);
              }
%>
    </body>
</html>
