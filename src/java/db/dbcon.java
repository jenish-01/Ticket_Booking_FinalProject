package db;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class dbcon {
    Connection con;
    public dbcon() throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie?useSSL=false","root","2428jj@N");
    }
            
public Connection connect()
{
   return con; 
}
    }
    

