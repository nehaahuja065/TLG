<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
    
<title></title>

</head>
<body>
    <%!String driver_id;int count=0;%>
    <% String url = "jdbc:mysql://localhost:3306/limotaxi";
     driver_id=(String)session.getAttribute("id");
    String order_id="0";
    
    
System.out.println(driver_id);
    try{

        String driver ="com.mysql.jdbc.Driver";

        Class.forName(driver).newInstance();

             

        Connection conn;

        conn = DriverManager.getConnection(url, "root","neha");

        Statement s = conn.createStatement();

        s.executeQuery ("select * from dispatched_orders where driver_id='"+driver_id+"' and status= 'ongoing'");
        

        ResultSet rs = s.getResultSet ();

         

       if(rs.next ()) {

                             
//        order_id= rs.getString("order_id");
//           count++;
        
     %>   
  



 <div id="auto"></div>
<script type="text/javascript">
         
            
               var retVal = confirm("Do you want to accept this order?");
               if( retVal == true ){
                 <%

    try{

 String sql1 ="update dispatched_orders set status='alerted' where driver_id ='"+driver_id+"'" ;
        
        PreparedStatement  pst=conn.prepareStatement(sql1);
            pst.executeUpdate(); 
         System.out.println("hello");    
    System.out.println("pst.execute()1"+pst.execute());
    }catch(Exception ex){}
    

           
    %>
               }
               else{
                 <%  try{

 String sql1 ="update dispatched_orders set status='not_accepted' where driver_id ='"+driver_id+"'" ;
        
        PreparedStatement  pst=conn.prepareStatement(sql1);
            pst.executeUpdate(); 
          System.out.println("hello not ");  
    System.out.println("pst.execute()2"+pst.execute());
    }catch(Exception ex){}%>
    

           
}        
            
         
      </script>




      <%
    }
    } 
       catch(Exception ee)
    {

        System.out.println(ee.toString());  

    } %>
</body>


</html>