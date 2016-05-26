<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<jsp:useBean id="obj" class="usebean.LoginBean"/>  
<jsp:setProperty property="*" name="obj"/>  
<jsp:useBean id="obj1" class="connections.DBConnections"/>  
<jsp:setProperty property="*" name="obj1"/> 

 <%
     String email=request.getParameter("Name");
     String id="";
     session.setAttribute("name", email);
     String pass=request.getParameter("Password");
     session.setAttribute("password", pass);
     Connection con = obj1.getConnection();
     try{
    PreparedStatement pst = con.prepareStatement("select * from drivers where email= '"+email+"' and password = '"+pass+"' and profile_status='1'");
//            pst.setString(1,email);
//            pst.setString(2,pass);
            
            ResultSet rst = pst.executeQuery();
            if(rst.next())
            {
                id=rst.getString("id");
                 session.setAttribute("id", id);
            }
        }
        catch(Exception ex)
        {
            System.err.println(ex);
            ex.printStackTrace();
        }
     
           if(obj.verify(email,pass))
           {
           
               // request.setAttribute("errorMessage", "Invalid user or password");
       System.out.println("success");

%>
        %>
        
        Login successful...  
                <%
                   
//                   out.print("welcome"+email);
//                   session=request.getSession();
//                   String sss_email = ""; 
//                   if(session.getAttribute("email")!=null)
//                   {
//                       sss_email = session.getAttribute("email").toString();
//                       if(!sss_email.contains("@"))
//                       {
//                           session.setAttribute("loggedin","true");
//                           session.setAttribute("session_id",sss_email);
//                       }
//                   }
//                   session.setAttribute("email",email);
                   response.sendRedirect("dashboard.jsp?");
                //response.sendRedirect("BI.jsp?emailaddress="+email);
           
                %>

        <%  }      
            
           else  if(email.equals("admin@gmail.com")&&pass.equals("admin"))
            {
                response.sendRedirect("driver.jsp");
            }
            else
            {
                System.out.println("failure");
                out.print("error in login and password");
               
              
        %>
        <script type="text/javascript"> 
      alert("Invalid Login Credentials!");
          </script>     
               
               <%
               response.sendRedirect("login.jsp?status=wrong");
               
            }
        %>
        

        