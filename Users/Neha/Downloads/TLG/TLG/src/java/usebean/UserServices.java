/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package connections;

import java.sql.*;
import mail.SendSMTP;

/**
 *
 * @author SONY
 */
public class UserServices {
    public String forgotPassword(String un){
         String result="Failure sending email";
         try(Connection conn=DBConnections.getConnection();){
             PreparedStatement pstmt=conn.prepareStatement("select * from drivers  where name=? OR email=?");
             pstmt.setString(1,un);
             pstmt.setString(2,un);
             ResultSet rs=pstmt.executeQuery();
             
             if(rs.next()){
        System.out.println(rs.getString("email"));
            result=new SendSMTP().sendMail(rs.getString("email"),"your recovered password is :"+rs.getString("password"), "your recovered password is:");
         }
         }catch(Exception e){
             System.out.println("in forgot password "+e);
         }
         return result;
     }
}
