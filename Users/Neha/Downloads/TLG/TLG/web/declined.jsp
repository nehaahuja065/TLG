<%-- 
    Document   : declined
    Created on : May 23, 2016, 2:06:48 PM
    Author     : Neha
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

Connection conn;
String driver_id= request.getParameter("id");
        try{
conn = connections.DBConnections.getConnection();
    
 String sql1 ="update dispatched_orders set status='not_accepted' where driver_id ='"+driver_id+"'" ;
        
        PreparedStatement   pst=conn.prepareStatement(sql1);
            pst.execute(); 
          System.out.println("hello not ");  
    System.out.println("pst.execute()2"+pst.execute());
    
    
    }catch(Exception ex){}
    
    }


%>
