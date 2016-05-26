<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
<title>Taxi and Limo Group</title>

<link rel="icon" type="image/png" href="images/icon.png" />
<link rel="apple-touch-icon" href="images/icon.png" />

<link href="st.css" rel="stylesheet" type="text/css" />

</head>

<body>
<div class="headr">
<div class="headrleft"><img src="images/logo.png" alt="Logo"/></div>

<p id="demo"></p>

 <div id="auto"></div>
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
$('#auto').load('alert.jsp');
refresh();
},5000);
};
</script>

<script>
var x = document.getElementById("demo");

function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else { 
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}

function showPosition(position) {
    x.innerHTML = "Latitude: " + position.coords.latitude + 
    "<br>Longitude: " + position.coords.longitude;
    window.location.replace("dashboard?lat="+position.coords.latitude+"&&lon="+position.coords.longitude);
     
}
</script>




<%
    String name =(String)session.getAttribute("name");
     String name1 =request.getParameter("Name");
%>
<div class="headrright">Welcome <a href="#"><%=name%></a> <a href="#" class="logout">Logout</a><br><br>

<br>

<a href="#" class="turnon" onclick="getLocation()">Turn Online</a> <a href="turnoff" class="turnoff" >Turn Offline</a></div>
</div>

<div class="container">

<div class="dashbordicons">
<div class="dicon"><a href="#"><img src="images/messages-icon.png" alt="Message"><br>Messages</a></div>
<div class="dicon"><a href="driver_orders.jsp"><img src="images/order-icon.png" alt="Message"><br>Orders</a></div>
<div class="dicon"><a href="#"><img src="images/order-icon.png" alt="Message"><br>Drivers</a></div>
<div class="dicon"><a href="dispatch.jsp"><img src="images/driver-icon.png" alt="Message"><br>Dispatch Order</a></div>
</div>

</div>

</body>
</html>
