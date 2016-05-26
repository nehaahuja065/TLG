<%-- 
    Document   : View_Profile_By_Admin
    Created on : May 7, 2016, 7:52:26 PM
    Author     : Neha
--%>


<%--<%@taglib  uri="http://displaytag.sf.net" prefix="display"%>--%>
<%@page import="java.util.ArrayList"%>
<%@page import="connections.DBConnections"%>
<%@page import="java.sql.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="a" %> 

 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
<table style="text-align: left;/* table-layout: fixed; */">
    <tbody>
        <tr>
        <th colspan="3" style="color:#1e5799; text-align: center;">User Details</th>
    </tr>
   
    <a:forEach var="user" items="${sessionScope['viewlist']}">
    
        <% session= request.getSession();
        ArrayList list= (ArrayList)session.getAttribute("viewlist");
        System.out.println(list);
        
        %>
                <tr>
                    <td>
                        <label>member type</label><label>${user.membertype}</label>
                </td>
                </tr>
                <tr>
            <label>email</label><label>${user.email}</label>
            </tr>
<tr>
    <td>
            <label >user picture  </label>   
    </td>
    <td><img src=${user.image}  alt="image" >
    </td>
            </tr>
             <tr>
            <label>name</label><label>${user.name}</label>
            </tr>
            
            <tr>
            <label>mobile</label><label>${user.mobile}</label>
            </tr>
        <tr>
         <label >provisional license picture </label>     <img src=${user.prov_image}></label
         </tr>
         <tr>
         <label >provisional license expiry date </label><label>${user.expiry_date}</label></tr>
         <tr>
         <label >limousine taxi license picture </label>  <img src=${user.limo_image}>
         </tr>
         <tr>
         <label >limousine taxi license expiry date </label><label>${user.license_exp_date}</label>
          </tr>
          <tr>
         <label >password </label><label>${user.password}</label>
         </tr>
         <tr>
         <label >vehicle </label><label>${user.vehicle}</label>
         </tr>
         <tr>
        
         <label >vehicle image </label><img src=${user.vehicle_image}>
         </tr>
         <tr>
          <label >prov plate </label><label>${user.prov_plate}</label>
         </tr>
         <tr>
          <label >limo plate </label><label>${user.limo_plate}</label>
         </tr>
     <label >insurance picture </label> <img src=${user.insurance_image}>
     </tr>
     <tr>
      <label >longitude </label><label>${user.lon}</label>
      </tr>
     <tr>
     <label >insurance expiry date </label><label>${user.ins_exp_date}</label>
     </tr>
     
     <tr>
      <label >latitude </label><label>${user.lat}</label>
      </tr>
      
      <tr>
     <label >payment mode</label><label>${user.payment_mode}</label>
</tr>
<tr>
       <label >card type</label><label>${user.card_type}</label>
</tr>
<tr>
        <label >cardholder name</label><label>${user.cardholder_name}</label>
        </tr>
        <tr>
        <label >card no</label><label>${user.cardno}</label>
        </tr>
         
         <tr>
        <label >expiry month</label><label>${user.exp_month}</label>
        </tr>
         <tr>
        <label >expiry year</label><label>${user.exp_year}</label>
        </tr>
         <tr>
         <label >payment date</label><label>${user.payment_date}</label>
         </tr>
         <tr>
         <label >current date</label><label>${user.current_date}</label>
         </tr>
         <tr>
         <label >address </label><label>${user.address}</label>
         </tr>
          <tr>
         <label >shift time </label><label>${user.shift_time}</label>
         </tr>
           <tr>
         <label >shift start time </label><label>${user.shift_start_time}</label>
         </tr>
            <tr>
         <label >shift end time </label><label>${user.shift_end_time}</label>
         </tr>
             
            
             <tr>           
						<!-- 	<input placeholder="Confirm Password" type="password" required="">-->
								<div class="sign-up">
									<input type="submit" value="approve" name="approve"/>
								</div>
             
</tr>
           

             <tr>           
						<!-- 	<input placeholder="Confirm Password" type="password" required="">-->
								<div class="sign-up">
									<input type="submit" value="disapprove" name="disapprove"/>
								</div>
             
</tr>
    
    </a:forEach>


</tbody>
</table>
    
    </body>
</html>
