
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    public static Connection getDBConnection() {
        Connection connection;
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            String userName = "root";
            String password = "root";
            String url = "jdbc:mysql://localhost:3307/rvb";
            connection = DriverManager.getConnection(url, userName, password);
            return connection;
        } catch (Exception ex) {
            return null;
        }//try catch closed
    }//getDBConnection() closed
}//class closed
