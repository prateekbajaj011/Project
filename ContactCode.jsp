<%-- 
    Document   : ContactCode
    Created on : Sep 22, 2018, 5:29:17 PM
    Author     : Bajaja
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%@page import="java.io.* , java.sql.* , java.time.LocalDate ;" %>
        <%! String gender,mobile,firstname,lastname,state,city,email,description,datee;
            int zip;            %> 
        <%
            
            try
            {
               LocalDate d=LocalDate.now();
               datee=d.toString(); 
               
              gender=request.getParameter("SLT");
              firstname=request.getParameter("FNM");
              lastname=request.getParameter("LNM");
              state=request.getParameter("ST");
              city=request.getParameter("CTY");
              zip=Integer.parseInt(request.getParameter("ZIP"));
              mobile=request.getParameter("MNO");
              email=request.getParameter("EMAIL");
              description=request.getParameter("DIS");
            
              Class.forName("oracle.jdbc.driver.OracleDriver");
              Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","watchinfo" ,"watchinfo");
              String qry="insert into contactus values(?,?,?,?,?,?,?,?,?,?)";
              PreparedStatement ps=con.prepareStatement(qry);
              
              ps.setString(1, gender);
              ps.setString(2, firstname);
              ps.setString(3, lastname);
              ps.setString(4, state);
              ps.setString(5, city);
              ps.setInt   (6, zip);
              ps.setString(7, mobile);
              ps.setString(8, email);
              ps.setString(9, description);
              ps.setString(10, datee);
              ps.executeUpdate();
              
              response.sendRedirect("Contact.jsp"); 
              ps.close();
              con.close();
              
              }
            
              catch(Exception ex){
                  out.println(ex);
              }
%>
    </body>
</html>
