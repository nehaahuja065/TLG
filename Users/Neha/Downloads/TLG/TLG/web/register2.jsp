<jsp:useBean id="obj" class= "usebean.RegisterBean"/>  
<jsp:setProperty property="*" name="obj"/> 
 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@page  import="usebean.UserServi  ces" %>--%>
  
 <%
           
     if(obj.verify())
            {
//               String pass =request.getParameter("password");
//               session.setAttribute("pass", pass);
//            System.out.println("register2 pass"+pass); 
               String email=request.getParameter("email");
                session= request.getSession();
            session.setAttribute("email", email);
//           
//             System.out.println("register2"+email);  
//               
//            System.out.println("hello");
//            if(request.getParameter("submit")!=null){
//                
//               
//             
//                 
//               System.out.println("password email"+email);
//               String result=new UserServices().forgotPassword(email,pass);
//               
//               if(result.equalsIgnoreCase("sent")){
                   response.sendRedirect("Authorized.jsp?");
//               }else{
//                   response.sendRedirect("index.jsp?msg=Invalid Username");
//               }
           
            
        %>
        
        "registration successful... "
        
        
        <%
                
            
            }
                %>