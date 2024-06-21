<%-- 
    Document   : Logout
    Created on : Sep 17, 2018, 4:23:14 PM
    Author     : Bajaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <div>
            <%
            try{
                session.invalidate();
                
                session=request.getSession(false);
                if(session==null){
                    response.sendRedirect("index.jsp");
                }
            } catch(Exception ex){
            out.println("Session Not Empty"+ex);
            }
            %>
        </div>
    </body>
</html>
