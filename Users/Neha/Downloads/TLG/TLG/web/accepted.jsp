<%-- 
    Document   : accepted
    Created on : May 23, 2016, 2:05:39 PM
    Author     : Neha
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String driver_id= request.getParameter("id");
        
        
        response.setContentType("text/html;charset=UTF-8");
       Connection conn;
            
            
          try{  
            
            conn = connections.DBConnections.getConnection();
    
    


 String sql1 ="update dispatched_orders set status='accepted' where driver_id ='"+driver_id+"'" ;
        
            PreparedStatement pst=conn.prepareStatement(sql1);
            pst.execute(); 
         System.out.println("hello");    
    System.out.println("pst.execute() accepted"+pst.execute());
    request.getRequestDispatcher("dashboard.jsp").forward(request, response);
}catch(Exception ex){}




%>
