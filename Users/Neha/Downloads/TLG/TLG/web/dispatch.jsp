<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.*" %>
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
<title>Taxi and Limo Group</title>

<link rel="icon" type="image/png" href="images/icon.png" />
<link rel="apple-touch-icon" href="images/icon.png" />

  <link rel="stylesheet" href="model/remodal.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>

   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>

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
    <div class="headrleft"><a href="dashboard.jsp" ><img src="images/logo.png" alt="Logo"></a></div>
<%
    String name =(String)session.getAttribute("name");
%>
    <div class="headrright">Welcome <a href="#"><%=name%></a> <a href="Logout.jsp" class="logout">Logout</a></div>
</div>


<div class="container">

<div class="dashbordicons">

    <div class="dicon"> <a href="#modal" onclick="getLocation()"><img src="images/driver-icon.png" alt="Message"><br>Onilne Drivers</a></div>
          <div class="dicon">   <a href="dispatch_order.jsp" >       <img src="image/dispatch-icon.png" alt="Message"><br>Dispatch Order</a></div>

<div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc"><div class="remodelwidow">
 <img data-remodal-action="close" src="model/close.png" class="remodal-close" aria-label="Close"/>
  
    <h2 id="modal1Title">Online Drivers</h2>
    <div id="map_canvas" style="margin-right: 5px;margin-left:5px; width: 775px; height: 600px">
        <h5>
            Loading Online Drivers...
        </h5>

    <%

   ArrayList<String> latList = new   ArrayList<String>();

ArrayList<String> lonList = new   ArrayList<String>();
ArrayList<String> nameList = new   ArrayList<String>();


    String url = "jdbc:mysql://localhost:3306/limotaxi";

    try{

        String driver ="com.mysql.jdbc.Driver";

        Class.forName(driver).newInstance();

             

        Connection conn;

        conn = DriverManager.getConnection(url, "root","neha");

        Statement s = conn.createStatement();

        s.executeQuery ("select * from drivers ");

        ResultSet rs = s.getResultSet ();

        int count = 0;

        while (rs.next ()) {

                             

            latList.add( rs.getString ("lat"));

            lonList.add(rs.getString ("lon"));

              nameList.add( rs.getString("name"));

           

        }

        rs.close ();

        s.close ();

    }

    catch(Exception ee){

        System.out.println(ee.toString());  

    }

 

//    latList.add("28.66");
//
//    latList.add("28.66");
//
//    latList.add("28.66");
//
//    latList.add("28.66");
//
//   
//
//    lonList.add("77.12");
//
//    lonList.add("77.11");
//
//    lonList.add("77.10");
//
//    lonList.add("77.09");


   

 

     

%>
 

<script type="text/javascript">

   

var x = document.getElementById("demo");

 

var gmarkers = [];

var side_bar_html = "";

var side_bar_html_top = "";

 

var l1 = [<% for (int i = 0; i < latList.size(); i++) { %>'<%= latList.get(i) %>'<%= i + 1 < latList.size() ? ",":"" %><% } %>];

var l2 = [<% for (int i = 0; i < lonList.size(); i++) { %>'<%= lonList.get(i) %>'<%= i + 1 < lonList.size() ? ",":"" %><% } %>];
var l3= [<% for (int i = 0; i < nameList.size(); i++) { %>'<%= nameList.get(i) %>'<%= i + 1 < nameList.size() ? ",":"" %><% } %>];
 

var bounds = new google.maps.LatLngBounds();

 

function getLocation() {

    if (navigator.geolocation) {
//alert("Share Location To View Online Drivers!!");
        navigator.geolocation.getCurrentPosition(showPosition, showError);

    } else {

        x.innerHTML = "Geolocation is not supported by this browser.";

    }

  //  alert("hello "+navigator.geolocation.getCurrentPosition(showPosition, showError));

}

 

function showPosition(position) {

 

var latlng = new google.maps.LatLng(l1[0],l2[0],l3[0]);

            var locations = [];

                 

                

             for (i = 0; i < l1.length; i++) {

            locations[i]=[l3[i],l1[i],l2[i], 1];
      }     

      

       

        

         var options = {

        zoom: 3,

        center: latlng,

        mapTypeId: google.maps.MapTypeId.ROADMAP

      }

       var map = new google.maps.Map(document.getElementById("map_canvas"), options);

        var options = {

        zoom: 13,

        center: latlng,

        mapTypeId: google.maps.MapTypeId.ROADMAP

      }

       var map = new google.maps.Map(document.getElementById("map_canvas"), options);

        

         var infowindow = new google.maps.InfoWindow();

 

    var marker, i;

 

    for (i = 0; i < locations.length; i++) {

      marker = new google.maps.Marker({

        position: new google.maps.LatLng(locations[i][1], locations[i][2]),

        //position: new google.maps.LatLng(28.666702, 77.216705),

        map: map

      });

 

      google.maps.event.addListener(marker, 'click', (function(marker, i) {

        return function() {

          infowindow.setContent(locations[i][0]);

          infowindow.open(map, marker);

        }

      })(marker, i));

      }

      

}     

function showError(error) {

    switch(error.code) {

        case error.PERMISSION_DENIED:

            x.innerHTML = "User denied the request for Geolocation."

            break;

        case error.POSITION_UNAVAILABLE:

            x.innerHTML = "Location information is unavailable."

            break;

        case error.TIMEOUT:

            x.innerHTML = "The request to get user location timed out."

            break;

        case error.UNKNOWN_ERROR:

            x.innerHTML = "An unknown error occurred."

            break;

    }

}

 

    </script>
  </div>
</div>
</div>
<div>
</div> 








</div>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../libs/jquery/dist/jquery.min.js"><\/script>')</script>
<script src="model/remodal.js"></script>



</body>
</html>
