/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author lequa
 */
public class DBUtils {
     public static Connection makeConnection()throws Exception{
        try {
            String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + "\\" + instance + ";databaseName=" + dbName;
            if (instance == null || instance.trim().isEmpty()) {
                url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName;
            }
            url += ";CharacterSet=UTF-8";//important to add UTF-8 format
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            return DriverManager.getConnection(url, userID, password);
        } catch (SQLException ex) {
            System.out.println("Connection error! " + ex.getMessage());
        } catch (ClassNotFoundException ex) {
            System.out.println("Connection error! " + ex.getMessage());
        }
        return null;
    }
    private final static String serverName = "localhost";
    private final static String dbName = "YenSao";
    private final static String portNumber = "1433";
    private final static String instance = "";//LEAVE THIS ONE EMPTY IF YOUR SQL IS A SINGLE INSTANCE
    private final static String userID = "sa";
    private final static String password = "12345"; 
     public static Connection getConnection() throws ClassNotFoundException, SQLException, NamingException {
        Connection conn = null;
        Context context = new InitialContext();
        Context end = (Context) context.lookup("java:comp/env");
        DataSource ds = (DataSource) end.lookup("DBCon");
        conn = ds.getConnection();
        return conn;
    }
}

