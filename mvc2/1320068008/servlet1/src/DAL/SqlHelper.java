package DAL;

import java.sql.*;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public class SqlHelper {
    private static String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";

    private static String dbURL="jdbc:sqlserver://localhost:1433;Databasename=login";

    private static String userName="sa";

    private static String userPwd="110110";

    private static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName(driverName);
        Connection conn= DriverManager.getConnection(dbURL,userName,userPwd);
        return conn;

    }

    public static ResultSet executeQuery(String SQL){
        try {
            Connection conn=getConnection();
            Statement stmt=conn.createStatement();

            ResultSet rs=stmt.executeQuery(SQL);
            return rs;
        }
        catch (Exception e){
            e.printStackTrace();
        }

        return null;
    }

    public static boolean executeUpdate(String SQL){
        try {
            Connection conn=getConnection();

            Statement stmt=conn.createStatement();
            int result=stmt.executeUpdate(SQL);
            if(result>0)
                return true;
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }
}
