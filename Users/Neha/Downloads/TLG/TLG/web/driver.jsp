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


<link href="css/stylesheet.css" rel="stylesheet" type="text/css" />

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
<div class="headrleft"><img src="images/logo.png" alt="Logo"/></div>
<%
    String name1 =(String)session.getAttribute("name");
%>
<div class="headrright">Welcome <a href="#"><%=name1%></a> <a href="Logout.jsp" class="logout">Logout</a></div>
</div>


<div class="container">



    
        <% 
            String id="";
            String name="";
             Connection con = DBConnections.getConnection();
             
             ArrayList<Object> alist = new ArrayList();
            
        try
        {
            
            PreparedStatement pst = con.prepareStatement("select * from drivers ");
           
            
            
            ResultSet rst = pst.executeQuery();
            while(rst.next())
            {  
          id= rst.getString("id");
            
           name= rst.getString("name");
            
            
            
           %>
               


<div class="drivrpanl">

    <div class="drivr"><p><%=id%></p> <a href="View_Profile.jsp?id=<%=id%>"><%=name%></a></div>


</div>

</div>

<% }
        }catch(Exception ex){}
            
       
        
        %>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../libs/jquery/dist/jquery.min.js"><\/script>')</script>
<script src="model/remodal.js"></script>



</body>
</html>
