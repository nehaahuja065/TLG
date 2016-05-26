<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="connections.DBConnections"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="a" %> 

<%@page import="java.util.ArrayList"%>
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
<title>Taxi and Limo Group</title>

<link rel="icon" type="image/png" href="images/icon.png" />
<link rel="apple-touch-icon" href="images/icon.png" />

  <link rel="stylesheet" href="model/remodal.css">


<link href="st.css" rel="stylesheet" type="text/css" />

</head>

<body>
    <script type ="text/javascript" src="js/jquery.min.js"></script>
<script type ="text/javascript">
$(document).ready( function()
{
refresh();
}
);

function refresh()
{
setTimeout(function(){
$('#auto').fadeOut('slow').load('alert.jsp').fadeIn('slow');
refresh();
},5000);
};
</script>
       <%
   if(session.getAttribute("name")==null || session.getAttribute("password") == null)
        {
            response.sendRedirect("login.jsp?status=invalid");
        }
   %>
<div class="headr">
    <div class="headrleft"><a href="dashboard.jsp"><img src="images/logo.png" alt="Logo"></a></div>
<%
    String name =(String)session.getAttribute("name");
%>
    <div class="headrright">Welcome <a href="#"><%=name%></a> <a href="Logout.jsp" class="logout">Logout</a></div>
</div>



<div class="container">
    <div class="drivrpanl">
        <div class="drivr"><a>Order Id</a> <a>Customer Name</a></div>
<!--<div class="drivr"><p>Order Id</p> <p>Customer Name</p><p>Start address</p><p>Destination address</p><p>Date</p><p>Pickup time</p><p>Mobile No</p><p>Approve/Disapprove</p></div>-->

    
        <% 
            String order_id="";
            String driver_id="";
            String customer_name="";
            String start_address="";
            String destination_address="";
             String  date="";
             String pickup_time="";
            String mobile_no="";
            ResultSet rst;
             Connection con = DBConnections.getConnection();
             
             ArrayList<Object> alist = new ArrayList();
            
        try
        {
            driver_id= (String) session.getAttribute("id");
            System.out.println(driver_id);
            PreparedStatement pst = con.prepareStatement("select * from dispatched_orders where driver_id='"+driver_id+"' and status='accepted'");
           
            
            
           rst = pst.executeQuery();
            while(rst.next())
            {  
          order_id= rst.getString("order_id");
          session.setAttribute("order_id", order_id);
            System.out.println( order_id );
           customer_name= rst.getString("cust_name");
           session.setAttribute("customer_name", customer_name);
           System.out.println( customer_name );
           start_address= rst.getString("start_address");
           System.out.println( start_address );
             session.setAttribute("start_address", start_address);
           destination_address= rst.getString("destination_address");
           session.setAttribute("destination_address",destination_address);
           System.out.println( destination_address );
            
           date= rst.getString("date");
            System.out.println( date );
              session.setAttribute("date",date);
           pickup_time= rst.getString("pickup_time");
            session.setAttribute("pickup_time",pickup_time);
           System.out.println( pickup_time );
            mobile_no= rst.getString("mobile_no");
           System.out.println( mobile_no );
            session.setAttribute("mobile_no",mobile_no ); 
            
           %>
               

           <div class="drivr"><a href="driver_orders2.jsp?code=<%=rst.getString("order_id")%>"><%=order_id%></a> <a href="driver_orders2.jsp?code=<%=rst.getString("order_id")%>"><%=customer_name%></a></div>

<!--    
               <div class="drivr"><p ><%=order_id%></p> <p><%=customer_name%></p><p><%=start_address%></p><p><%=destination_address%></p><p><%=date%></p><p><%=pickup_time%></p><p><%=mobile_no%></p><a href="history?code=<%=rst.getString("order_id")%>"> 
                       <input type="button" name="approve" value="approve"></a>
                   <a href="history_disapprove?code=<%=rst.getString("order_id")%>"> <input type="button" name="disapprove" value="disapprove"></a>-->
            <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc"><div class="remodelwidow">
 <img data-remodal-action="close" src="model/close.png" class="remodal-close" aria-label="Close"/>
  </div>
  
</div>





<% }
        }catch(Exception ex){ System.out.println(ex);}
            
       
        
        %>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../libs/jquery/dist/jquery.min.js"><\/script>')</script>
<script src="model/remodal.js"></script>



</body>
</html>
