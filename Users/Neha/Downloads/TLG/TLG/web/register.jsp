
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
<div class="headr">
<div class="headrleft"><img src="images/logo.png" alt="Logo"/></div>
<!--<div class="headrright">Welcome <a href="#">User Name</a> <a href="#" class="logout">Logout</a></div>-->
</div>


<div class="container">

<div class="dashbordform">
  <form action="register2.jsp" name="customer" id="customer" method="post">
    <div class="frm">
        
<select name="membertype" class="sloption">
    <!--<option value="customer">Customer</option>-->

                <option value="driver">Driver</option></select> 

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
 
 <div class="driver box"><h2>Driver Form</h2><p>Are you a Driver? Fill this form</p>
<div class="dfrm">
   
            <label >user picture</label>   
    
    <input type="file"    name="image" required="">
	</div>
	<div class="dfrm">
   
           <label >Name </label>  
            <input placeholder="Name" type="text"  name="name" required="">
			</div>
        <div class="dfrm">    
			<label >Email</label> 
            <input placeholder="Email Address" type="text"  name="email" required="">
			</div>
			 <div class="dfrm">
           <label >Mobile no.</label> 
	<input placeholder="Mobile Number" type="text"  name="mobile" required="">
	</div>
<!--         <div class="dfrm">
         <label >provisional license picture </label>      <input type="file"    name="prov_image">
        </div>
		<div class="dfrm">
         <label >provisional license expiry date </label><input type="date" name="expiry_date" >
		 </div>
        <div class="dfrm"> 
         <label >limousine taxi license picture </label>      <input type="file"    name="limo_image">
         </div>
		 <div class="dfrm">
         <label >limousine taxi license expiry date </label><input type="date" name="license_exp_date"  >
          </div>-->
		  <div class="dfrm">
        <label >Password </label> <input placeholder="Password" type="password"  name="password" required="">
         </div>
             
<!--         <div class="dfrm">
		 <label >Vehicle</label>
         <input placeholder="vehicle" type="text"  name="vehicle">
		 </div>
		 <div class="dfrm">
          <label >Vehicle Image</label>
		  <input  type="file"  name="vehicle_image">
		  </div>
         <div class="dfrm">
		  <label >Provisional plate</label>
         <input placeholder="Provisional plate" type="text"  name="prov_plate">
         </div>
		 <div class="dfrm">
		 <label >Limousine Plate</label>
         <input placeholder="limousine plate" type="text"  name="limo_plate">
         </div>
		  <div class="dfrm">
     <label >insurance picture </label>      <input type="file"    name="insurance_image">
      </div>
	  <div class="dfrm">
	  <label >Longitude </label>  
      <input placeholder="longitude" type="text"  name="lon"></div>
      <div class="dfrm">
     <label >insurance expiry date </label><input type="date" name="ins_exp_date">
     
     </div>
     <div class="dfrm">
	 <label >Latitude </label>  
      <input placeholder="latitude" type="text"  name="lat">
	  </div>-->
<!--      <div class="dfrm">
        <label >Shift time</label>  
           <input placeholder="Shift Time" type="text"  name="Shift time">
          </div>-->
		    <div class="dfrm">
		   <label >Shift start time   </label>  
            <input placeholder="hr:min:sec" type="text"  name="shift_start_time" required="">
            </div>
			 <div class="dfrm">
			<label >Shift end time </label>  
             <input placeholder="hr:min:sec" type="text" name="shift_end_time" required="">
              </div>
             

 <div class="dfrm">
<input name="LOGIN" type="submit" value="SignUp" class="logbutton"/>


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
