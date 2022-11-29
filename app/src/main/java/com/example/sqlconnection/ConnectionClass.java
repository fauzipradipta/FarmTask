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
         String url="jdbc:jtds:sqlserver://172.1.2.2:1433;encrypt=true;databaseName=GreenField;user=root;password=Temp123";
//         String username ="root";
//         String password="Temp123";
//         String db="GreenField";

        StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();

        StrictMode.setThreadPolicy(policy);
        Connection conn = null;
        String ConnURL = null;

        try{
            Class.forName("net.sourceforge.jtds.jdbc.Driver");
            ConnURL = url;
            conn = DriverManager.getConnection(ConnURL);
        } catch (SQLException se) {
        Log.e("ERROR", se.getMessage());
        }  catch (Exception e) {
            Log.e("ERROR", e.getMessage());
        }
        return conn;

    }


}
