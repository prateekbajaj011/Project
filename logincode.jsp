<%-- 
    Document   : logincode
    Created on : Aug 28, 2018, 2:31:49 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        
        <%@page import="java.sql.*" %>
        <%! String unm,pwd; %> 
        <%
            try
            {
              Class.forName("oracle.jdbc.driver.OracleDriver");
              Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","watchinfo" ,"watchinfo");
              String qry="select * from registration where email=? and password=?";
              PreparedStatement ps=con.prepareStatement(qry);
              
              unm=request.getParameter("txtuser");
              pwd=request.getParameter("txtpwd");
              ps.setString(1, unm);
              ps.setString(2, pwd);
              
              ResultSet rs=ps.executeQuery();
              
              if(rs.next())
              {
               
                 String cnm=rs.getString(1);
                 int cid = rs.getInt(2);
                 String email=rs.getString(8);
                 String mob=rs.getString(3);
                 String addr=rs.getString(4);
                 String cty=rs.getString(5);
                 String stt=rs.getString(6);
                 String zp=rs.getString(7);
                 
                 session.setAttribute("CustomerID", cid);
                 session.setAttribute("Custname", cnm);
                 session.setAttribute("Email_ID", email);
                 session.setAttribute("Mobile_NO", mob);
                 session.setAttribute("Address", addr);
                 session.setAttribute("City", cty);
                 session.setAttribute("State", stt);
                 session.setAttribute("Zip", zp);
                  
                  response.sendRedirect("LoginHome.jsp");
              }
              else
              {
                  out.println("Try again");
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
