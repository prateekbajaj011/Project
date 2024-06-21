<%-- 
    Document   : BillingCode
    Created on : Sep 14, 2018, 10:53:14 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
    <body>
        <%@page import="java.sql.*" %>
        <%! String cardno,cardname,transactionid,datee,amount; int expmonth,expyear,cvv,amt,custid; %> 
        <%
            try
            {
                amt=Integer.parseInt(session.getAttribute("Total").toString());
                custid=Integer.parseInt(session.getAttribute("CustomerID").toString());
                
              cardno=request.getParameter("cnumber");
              cardname=request.getParameter("cname");
              expmonth=Integer.parseInt(request.getParameter("exmonth"));
              expyear=Integer.parseInt(request.getParameter("exyear"));
              cvv=Integer.parseInt(request.getParameter("CVV"));
              transactionid=request.getParameter("trid");
              amount=request.getParameter("ammt");
              
              Class.forName("oracle.jdbc.driver.OracleDriver");
              Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","watchinfo" ,"watchinfo");
              String qry="select * from bankdetail where card_number=? and card_name=? and exp_month=? and exp_year=? and cvv=?";
              PreparedStatement ps=con.prepareStatement(qry);
              
              ps.setString(1, cardno);
              ps.setString(2, cardname);
              ps.setInt(3, expmonth);
              ps.setInt(4, expyear);
              ps.setInt(5, cvv);

              ResultSet rs=ps.executeQuery();
              if(rs.next()){
            try
            {
                 java.util.Date d=new java.util.Date();
              datee=d.toString();
               
              Class.forName("oracle.jdbc.driver.OracleDriver");
              Connection con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","watchinfo" ,"watchinfo");
              String qry1="insert into paymentdetail values(?,?,?,?,?)";
              PreparedStatement ps1=con1.prepareStatement(qry1);

              ps1.setString(1, transactionid);
              ps1.setString(2, datee);
              ps1.setInt(3, amt);
              ps1.setString(4, cardno);
              ps1.setInt(5, custid);
              ps1.executeQuery();
              
              response.sendRedirect("MyOrder.jsp");
              
              String dt=rs.getString(2);
              session.setAttribute("DATE", dt);
              ps1.close();
              con1.close();
              
            }catch(Exception ex){
            out.println(ex);
            }
              }else{
              out.println("INVALID DETAILS");
              }
               ps.close();
               con.close();                
            }
            catch(Exception ex){
                out.println("NOT VALID"+ex);
        }
        %>
    </body>
</html>
