<%-- 
    Document   : Logout
    Created on : 21 May, 2016, 7:44:04 PM
    Author     : My pc
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <%
            session.removeAttribute("name");
            session.removeAttribute("password");
           // session.removeAttribute("userid");
            session.invalidate();
            response.sendRedirect("login.jsp");
            %>
    </body>
</html>
