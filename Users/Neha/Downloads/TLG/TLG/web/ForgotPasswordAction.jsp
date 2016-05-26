<%-- 
    Document   : ForgotPasswordAction
    Created on : May 21, 2015, 9:17:42 PM
    Author     : SONY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="connections.UserServices" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(request.getParameter("sbtnSubmit")!=null){
                
               String un=request.getParameter("txtUsername");
               System.out.println("hello"+un);
               String result=new UserServices().forgotPassword(un);
               
               if(result.equalsIgnoreCase("sent")){
                   response.sendRedirect("ForgotPassword.jsp?msg=Password has been sent"+" to your email");
               }else{
                   response.sendRedirect("ForgotPassword.jsp?msg=Invalid Username");
               }
           }else{
               response.sendRedirect("login.jsp");
           }
          
            %>
           
    </body>
</html>
