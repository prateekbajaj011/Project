<%-- 
    Document   : SuccessRegister
    Created on : Aug 28, 2018, 3:16:55 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%><!-- UTF stands for UCS Transformation Format, UCS stands for Unified Computing System developed by Cisco. The size of character in UTF-8 may be 1 byte to 4 bytes. -->
<!DOCTYPE html>
<html>
   
    <body>
        
        <%@page import="java.io.* , java.sql.*" %>
        <%! String name,address,email,pass,mobile,city,state,zip;
            int id;            %> 
        <%
            try
            {
              name=request.getParameter("fn");
              id=Integer.parseInt(request.getParameter("cid"));
              mobile=request.getParameter("mb");
              address=request.getParameter("add");
              email=request.getParameter("em");
              pass=request.getParameter("pss");
              city=request.getParameter("cty");
              state=request.getParameter("stt");
              zip=request.getParameter("zp");
            
              Class.forName("oracle.jdbc.driver.OracleDriver");
              Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","watchinfo" ,"watchinfo");
              String qry="insert into registration values(?,?,?,?,?,?,?,?,?)";
              PreparedStatement ps=con.prepareStatement(qry);
              
              ps.setString(1, name);
              ps.setInt(2, id);
              ps.setString(3, mobile);
              ps.setString(4, address);
              ps.setString(5, city);
              ps.setString(6, state);
              ps.setString(7, zip);
              ps.setString(8, email);
              ps.setString(9, pass);
              ps.executeUpdate();
              
              response.sendRedirect("login.jsp");
              ps.close();
              con.close();
              
              }
            
              catch(Exception ex){
                  out.println(ex);
              }
%>
    </body>
</html>
