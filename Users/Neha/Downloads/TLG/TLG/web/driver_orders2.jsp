<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<%@page import=" java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="connections.DBConnections"%>
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
<title>Taxi and Limo Group</title>

<link rel="icon" type="image/png" href="images/icon.png" />
<link rel="apple-touch-icon" href="images/icon.png" />

<link href="st.css" rel="stylesheet" type="text/css" />
  <style type="text/css">
  .sloption{width:98%; padding:1%;}
   .box{ padding: 20px; display: none; float:left;   margin-top: 20px;    border: 1px solid #ccc;   }
		</style>
    <script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>

    <script type="text/javascript">

    $(document).ready(function(){

        $("select").change(function(){

            $(this).find("option:selected").each(function(){
//
//                if($(this).attr("value")=="customer"){
//
//                    $(".box").not(".customer").hide();
//
//                    $(".customer").show();
//
//                }

                //else
                    if($(this).attr("value")=="driver"){

                    $(".box").not(".driver").hide();

                    $(".driver").show();
                    
            
            

                }

                else{

                    $(".box").hide();

                }

            });

        }).change();

    });

    </script>

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

<div class="dashbordform">
  
    <div class="frm">
        
<!--<select name="membertype" class="sloption">
    <option value="customer">Customer</option>

                <option value="driver">Driver</option></select> -->

<!--<div class="customer box"><h2>Customer Form</h2>
<div class="dfrm"><label>Name</label> <input placeholder="Name" type="text" name="name1"></div>
<div class="dfrm"><label>Email</label><input placeholder="Email Address" type="text" name="email1"></div>
<div class="dfrm"><label>Mobile</label><input placeholder="Mobile Number" type="text" name="mobile1"></div>
</div>-->
<!--<script type="text/javascript" src="validator.js"></script>
          <script language="JavaScript" type="text/javascript">
  var frmvalidator  = new Validator("customer");
  frmvalidator.addValidation("name","req","Please enter Name");
  frmvalidator.addValidation("email","req","Please enter E-Mail");
  frmvalidator.addValidation("email","email");
  frmvalidator.addValidation("mobile","req","Please enter Phone Number")

 
</script>-->
 <% 
            
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
            String order_id = request.getParameter("code");
        try
        {
            driver_id= (String) session.getAttribute("id");
            System.out.println(driver_id);
            PreparedStatement pst = con.prepareStatement("select * from dispatched_orders where order_id='"+order_id+"'");
           
            
            
           rst = pst.executeQuery();
            while(rst.next())
            {  
//          order_id= rst.getString("order_id");
//          session.setAttribute("order_id", order_id);
//            System.out.println( order_id );
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
                
<!-- <form action="dispatch_order" method="post"> -->
 <div class="driver"><h2>Order</h2>
     <div class="dfrm">
   
           <label >Order Id</label>
           
           
           <input value="<%=order_id%>" type="text"  name="name" readonly="">
			</div>

	<div class="dfrm">
   
           <label >Customer name</label>  
            <input  type="text"  name="name" value="<%=customer_name%>" readonly="">
			</div>
        <div class="dfrm">    
			<label >Mobile</label> 
            <input  type="text"  name="mobile" value="<%=mobile_no%>" readonly="">
			</div>
			 <div class="dfrm">
           <label >date</label> 
	<input  type="date"  name="date" value="<%=date%>" readonly="">
	</div>
        
		<div class="dfrm">
         <label >start address</label><input type="text"  name="start_address" value="<%=start_address%>" readonly="">
		 </div>
        <div class="dfrm"> 
         <label >end address</label><input placeholder="End Address" type="text"  name="end_address" value="<%=destination_address%>" readonly="">
         </div>
	<div class="dfrm">
         <label >pickup time</label><input  type="text" name="pickup_time" value="<%=pickup_time%>" readonly="">
		 </div>	 

<!-- <div class="dfrm">
<input name="LOGIN" type="submit" class="logbutton"/>


 </div></form>-->
          <script language="JavaScript" type="text/javascript">
  var frmvalidator  = new Validator("driver");
  frmvalidator.addValidation("name","req","Please enter Name");
  frmvalidator.addValidation("email","req","Please enter E-Mail");
  frmvalidator.addValidation("email","email");
  frmvalidator.addValidation("mobile","num","Please enter Phone Number")

 
</script>
</div>



</div>
<% }
        }catch(Exception ex){ System.out.println(ex);}
            
       
        
        %>
</body>
</html>
