<%-- 
    Document   : login
    Created on : May 7, 2016, 5:39:03 PM
    Author     : Neha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">

<title>Taxi and Limo Group</title>

<link rel="icon" type="image/png" href="images/tlg_logo.png" />
<link rel="apple-touch-icon" href="images/tlg_logo.png" />

<style type="text/css">
body{background-color:#FF9900; margin:0px; padding:0px;font-family: 'Open Sans';}
@font-face {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 300;
  src: local('Open Sans Light'), local('OpenSans-Light'), url(http://fonts.gstatic.com/s/opensans/v10/DXI1ORHCpsQm3Vp6mXoaTegdm0LZdjqr5-oayXSOefg.woff2) format('woff2'), url(http://fonts.gstatic.com/s/opensans/v10/DXI1ORHCpsQm3Vp6mXoaTXhCUOGz7vYGh680lGh-uXM.woff) format('woff');
}
.container{width:500px; max-width:98%; margin:0 auto; text-align:center;}
.loginbox{width:96%; float:left; background-color:#F1F1F1; padding:2%; margin:2% 0%;border-radius:5px; -moz-border-radius:5px; -webkit-border-radius:5px;}
.logtxt{font-size:26px; margin-top:2%; float:left; color:#666; text-align:left; font-weight:bold; padding:3% 0%;}
.loginput{padding:2% 1%;float:left; color:#FF9900; font-weight:bold; width:98%;}
.logfield{width:96%; padding:2%; font-family: 'Open Sans'; font-size:18px; border-radius:5px; -moz-border-radius:5px; -webkit-border-radius:5px; border:1px solid #CCC;}
.logfield:focus{border-color:white;background:white;box-shadow:0 0 18px #2793C7}

.paymethod{width:31%; text-align:center; padding:1%; float:left;  background-color:#D3D3D3; font-weight:bold; color:#333;}
.paymethod.pm1{border-radius:5px 0px 0px 5px;-moz-border-radius:5px 0px 0px 5px; float:left;-webkit-border-radius:5px 0px 0px 5px; background-color:#C8C8C8;}
.paymethod.pm3{border-radius:0px 5px 5px 0px;-moz-border-radius:0px 5px 5px 0px; float:left;-webkit-border-radius:0px 5px 5px 0px;  background-color:#B9B9B9;}
.forgot a{color:#FF9900; float:left; font-size:13px; font-style:italic; padding-top:30px;}
.logbutton{width:98%; padding:2%; float:left; margin:2% 0%; float:left; border:2px solid #F5BF1F; color:#fff; font-weight:bold; font-size:16px; cursor:pointer; text-transform:uppercase; border-radius:5px; -moz-border-radius:5px; -webkit-border-radius:5px; background: #FF9900; background: -webkit-linear-gradient(#FF9900, #F5BF1F); background: -o-linear-gradient(#FF9900, #F5BF1F); background: -moz-linear-gradient(#FF9900, #F5BF1F); background: linear-gradient(#FF9900, #F5BF1F);
.logbutton:hover{background:#F5BF1F !important;}	

</style>
</head>

<body>
<div class="container">
<img src="images/logo.png" alt="Logo" style="width:200px; max-width:95%; margin:2% 0%;" />
<form action="ForgotPasswordAction.jsp"  onsubmit="return check();">
            
            <br><br>  <h1>Forgot Password</h1>
               <label id="lblMsg" style="color: red">${param.msg}</label>
               
                            <div><strong>If you have forgotten your password, you can have it recover.
                                    <br />
                                    Please enter your username address below to do so.</strong><br />
                                <br />
                                <label>  An email with the instructions to recover your password will be sent to you.</label>
                            </div><br>
                           <strong>Email Id</strong>
                           <input id="txtUsername" name="txtUsername" type="text" class="txtStyle" oninput="return check();" /></td>
                           <br><br>
                                   <input id="sbtnSubmit" name="sbtnSubmit" type="submit" class="blue" value="Submit"/>
                                        <input id="btnCancel" name="btnCancel" type="button" class="blue" value="Cancel" onclick="window.location='login.jsp'"  />
                                        <br><br>
                                
                         
                            
                            <div>
                                Your Password has been sent to your email id.<br/>
                                Please check your email for further instruction.<br/>
                                Please <a href="login.jsp">Click here</a> to go back to the login page.
                            </div>
               </div>      
                
        </form
</div>


</body>
</html>
