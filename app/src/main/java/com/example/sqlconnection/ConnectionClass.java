package com.example.sqlconnection;

import android.annotation.SuppressLint;
import android.os.StrictMode;
import android.util.Log;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionClass {

    @SuppressLint("NewApi")
    public static Connection CONN(){
         String url="127.0.0.1:1433";
         String username ="root";
         String password="Temp123";
         String db="Greenfield";

        StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();

        StrictMode.setThreadPolicy(policy);
        Connection conn = null;
        String ConnURL = null;

        try{
            ConnURL = "jdbc:jtds:sqlserver://" + url + ";"
                    + "databaseName=" + db + ";user=" + username + ";password="
                    + password + ";";
            conn = DriverManager.getConnection(ConnURL);
        } catch (SQLException se) {
        Log.e("ERROR", se.getMessage());
    } catch (ClassNotFoundException e) {
        Log.e("ERROR", e.getMessage());
    } catch (Exception e) {
        Log.e("ERROR", e.getMessage());
    }
        return conn;

    }


}
