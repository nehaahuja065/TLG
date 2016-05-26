
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connections.DBConnections"%>
<%@page import="java.sql.Connection"%>
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
       <%
   if(session.getAttribute("name")==null || session.getAttribute("password") == null)
        {
            response.sendRedirect("login.jsp?status=invalid");
        }
   %>
    
<div class="headr">
    <div class="headrleft"><img src="images/logo.png" alt="Logo"/></div>
    <%
    String name =(String)session.getAttribute("name");
%>
<div class="headrright">Welcome <a href="#"><%=name%></a> <a href="Logout.jsp" class="logout">Logout</a></div>
</div>


<div class="container">

<div class="dashbordform">
  <!--<form action="register2.jsp" name="customer" id="customer" method="post">-->
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
 
 <!--<div class="driver box"><h2>Driver Form</h2><p>Are you a Driver? Fill this form</p>-->
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
<div class="dfrm">
   
<!--            <label >user picture</label>   
    
    <input type="file"    name="image" required="">
	</div>-->
	<div class="dfrm">
   
           <label >Name </label>  
            <input placeholder="Name" type="text" value=<%=rs.getString("name")%> name="name" required="">
			</div>
        <div class="dfrm">    
			<label >Email</label> 
            <input placeholder="Email Address" type="text" value=<%=rs.getString("email")%> name="email" required="">
			</div>
			 <div class="dfrm">
           <label >Mobile no.</label> 
	<input placeholder="Mobile Number" type="text" value=<%=rs.getString("mobile")%>  name="mobile" required="">
	</div>

           

		    <div class="dfrm">
		   <label >Shift start time   </label>  
            <input placeholder="hr:min:sec" type="text" value=<%=rs.getString("shift_start_time")%> name="shift_start_time" required="">
            </div>
			 <div class="dfrm">
			<label >Shift end time </label>  
             <input placeholder="hr:min:sec" type="text" value=<%=rs.getString("shift_end_time")%> name="shift_end_time" required="">
              </div>
        <%
                }
                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
%>      

<!-- <div class="dfrm">
<input name="LOGIN" type="submit" value="SignUp" class="logbutton"/>


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

</body>
</html>
