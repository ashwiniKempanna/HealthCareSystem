package comm.connection;
import java.io.*;
import java.sql.*;

public class ConnectionPool 
{

	Connection conn=null;
	public Connection getConnection() throws Exception
	{
	Class.forName("com.mysql.jdbc.Driver");
	conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/phar","root","root");
    
	return conn;

	}
}