<%@page import="java.sql.ResultSet"%>
<%@page import="connections.DBConnections"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
<title>Lucky Tour & Travel</title>

<link rel="icon" type="image/png" href="images/icon.png" />
<link rel="apple-touch-icon" href="images/icon.png" />

<link href="css/stylesheet.css" rel="stylesheet" type="text/css" />
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
     <%
   if(session.getAttribute("name")==null || session.getAttribute("password") == null)
        {
            response.sendRedirect("login.jsp?status=invalid");
        }
   %>
<div class="headr">
<div class="headrleft"><img src="images/logo.png" alt="Logo"/></div>
<div class="headrright">Welcome <a href="#">User Name</a> <a href="Logout.jsp" class="logout">Logout</a></div>
</div>


<div class="container">

<!--<div class="dashbordform">
  <form action="#" name="customer" id="customer" method="post">
    <div class="frm">
        
<select name="membertype" class="sloption">
    <option value="customer">Customer</option>

                <option value="driver">Driver</option></select> 

 
 <div class="driver box"><h2>Driver Information Form</h2>-->
<div class="dfrm">
    <%
        //String userid = (String)session.getAttribute("id");
        //String name =(String)session.getAttribute("name");
        
       String id =request.getParameter("id");
        	//Class.forName("com.mysql.jdbc.Driver");
    		try
                {//Create a connection to our database
               Connection con =  DBConnections.getConnection();
    				//create an SQL statement
    		PreparedStatement ps = con.prepareStatement("SELECT * FROM drivers WHERE id=?");
    				//set the ID to be the id above
    		//ps.setString(1,userid);
                ps.setString(1,id);
              //  System.out.println("User id is : " +userid);
                System.out.println("NAme is :" +id);
    				//Execute and retrieve our result
    		ResultSet rs = ps.executeQuery();
                if(rs.next()) {
    
    %>
   
            <label >user picture</label>   
    
    <input type="file"   required="" name="image">
	</div>
	<div class="dfrm">
   
           <label >Name </label>  
           <input placeholder="Name" type="text" value=<%=rs.getString("name")%> required="" name="name" readonly="readonly">
			</div>
        <div class="dfrm">    
			<label >Email</label> 
                        <input placeholder="Email Address" type="text" required="" name="email" readonly="readonly">
			</div>
			 <div class="dfrm">
           <label >Mobile no.</label> 
	<input placeholder="Mobile Number" type="text" required="" name="mobile" readonly="readonly">
	</div>
         <div class="dfrm">
         <label >provisional license picture </label>      <input type="file"   required="" name="prov_image">
        </div>
		<div class="dfrm">
         <label >provisional license expiry date </label><input type="text" name="expiry_date" required="" readonly="readonly">
		 </div>
        <div class="dfrm"> 
         <label >limousine taxi license picture </label>      <input type="file"   required="" name="limo_image">
         </div>
		 <div class="dfrm">
         <label >limousine taxi license expiry date </label><input type="text" name="license_exp_date"  required="" readonly="readonly">
          </div>
		
         <div class="dfrm">
		 <label >Vehicle</label>
         <input placeholder="vehicle" type="text" required="" name="vehicle" readonly="readonly">
		 </div>
		 <div class="dfrm">
          <label >Vehicle Image</label>
		  <input  type="file" required="" name="vehicle_image">
		  </div>
         <div class="dfrm">
		  <label >Vehicle Image</label>
         <input placeholder="Provisional plate" type="text" required="" name="prov_plate">
         </div>
		 <div class="dfrm">
		 <label >Limousine Plate</label>
         <input placeholder="limousine plate" type="text" required="" name="limo_plate" readonly="readonly">
         </div>
		  <div class="dfrm">
     <label >insurance picture </label>      <input type="file"   required="" name="insurance_image">
      </div>
	  <div class="dfrm">
	  <label >Latitude </label>  
      <input placeholder="longitude" type="text" required="" name="lon" readonly="readonly"></div>
      <div class="dfrm">
          <label >insurance expiry date </label><input type="text" name="ins_exp_date" readonly="readonly">
     
     </div>
     <div class="dfrm">
	 <label >Latitude </label>  
      <input placeholder="latitude" type="text" required="" name="lat" readonly="readonly">
	  </div>
      <div class="dfrm">
        <label >Shift time</label>  
           <input placeholder="shift_time" type="text" required="" name="Shift time" readonly="readonly">
          </div>
		    <div class="dfrm">
		   <label >Shift start time   </label>  
            <input placeholder="shift_start_time" type="text" required="" name="Shift start time" readonly="readonly">
            </div>
			 <div class="dfrm">
			<label >Shift end time </label>  
             <input placeholder="shift_end_time" type="text" required=""name="Shift end time" readonly="readonly">
              </div>
         <%
                }
                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
%>
 <div class="dfrm">
<input name="OK" type="submit" class="logbutton"/>


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
