/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package usebean;

import usebean.*;
import connections.DBConnections;
import connections.DBConnections;
import javax.servlet.ServletContext;
import java.sql.*;

public class LoginBean {
    private String email; 
    private String pass;
   
    public void setEmail( String email )
    {
         this.email= email;
    }
    public void setPass( String pass )
    {
        this.pass = pass;
    }
  
    public String getEmail()
    {
        return email;
    }
    public String getPass()
    {
        return pass;
    }
    
    
    public Boolean verify( String email,String password)
    {
        boolean flag = false;
        String id="";
        Connection con = DBConnections.getConnection();
        try
        {
            PreparedStatement pst = con.prepareStatement("select * from drivers where email= '"+email+"' and password = '"+password+"' and profile_status='1'");
//            pst.setString(1,email);
//            pst.setString(2,pass);
            
            ResultSet rst = pst.executeQuery();
            if(rst.next())
            {
                id=rst.getString("id");
            flag = true;}
        }
        catch(Exception ex)
        {
            System.err.println(ex);
            ex.printStackTrace();
        }
        return flag;
    }
}
