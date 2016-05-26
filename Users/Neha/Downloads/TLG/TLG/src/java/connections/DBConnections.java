package connections;

/**
 *
 * @author Aashish
 */
import java.sql.*;
import javax.servlet.ServletContext;


public class DBConnections {
    static Connection con;
    public static Connection getConnection()
    {
        try{
   Class.forName("com.mysql.jdbc.Driver");
   con = DriverManager.getConnection("jdbc:mysql://localhost/limotaxi","root","neha");
           System.out.println("created connection");

   return con;
   }
        catch(Exception ex)
        {
            System.err.println(ex);
            ex.printStackTrace();
        }
        return con;
    }
    
}
