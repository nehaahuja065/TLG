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
    <div class="headrleft"><a href="dashboard.jsp" ><img src="images/logo.png" alt="Logo"></a></div>
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
 
 <form action="dispatch_order" method="post"> 
 <div class="driver"><h2>Dispatch order</h2>

	<div class="dfrm">
   
           <label >Customer name</label>  
            <input placeholder="Customer Name" type="text" required="" name="name">
			</div>
        <div class="dfrm">    
			<label >Mobile</label> 
            <input placeholder="Mobile" type="text" required="" name="mobile">
			</div>
			 <div class="dfrm">
           <label >date</label> 
	<input placeholder="yyyy-mm-d" type="date" required="" name="date">
	</div>
        
		<div class="dfrm">
         <label >start address</label><input placeholder="Start Address" type="text" required="" name="start_address">
		 </div>
        <div class="dfrm"> 
         <label >end address</label><input placeholder="End Address" type="text" required="" name="end_address">
         </div>
	<div class="dfrm">
         <label >pickup time</label><input placeholder="hr:min:sec" type="text" required="" name="pickup_time">
		 </div>	 

 <div class="dfrm">
<input name="LOGIN" type="submit" value="Dispatch" class="logbutton"/>


 </div></form>
          <script language="JavaScript" type="text/javascript">
  var frmvalidator  = new Validator("driver");
  frmvalidator.addValidation("name","req","Please enter Name");
  frmvalidator.addValidation("email","req","Please enter E-Mail");
  frmvalidator.addValidation("email","email");
  frmvalidator.addValidation("mobile","num","Please enter Phone Number")

 
</script>
</div>



</div>

</body>
</html>
