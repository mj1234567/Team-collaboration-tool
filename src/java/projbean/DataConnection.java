/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projbean;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author mani
 */
public class DataConnection {
    
    
    public static Connection getConnection()
    {
          Connection con=null;
        try
        {
         String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

       con = DriverManager.getConnection(str, "test", "123456");
        }
        catch(Exception ex)
        {
          ex.printStackTrace();
        }
        return con;
    }
    
}
