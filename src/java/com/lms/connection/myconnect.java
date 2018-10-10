/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.connection;
import java.sql.*;
/**
 *
 * @author abhishek.panja554
 */
public class myconnect {
    public static Connection dbcon(){
        Connection con= null;
        String driver="com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/lmsnb";
        String user="root";
        String pass="";
        try{
            Class.forName(driver);
            System.out.println("Driver Found");
            try{
                con=DriverManager.getConnection(url,user,pass);
                System.out.println("Connection established");
            } catch(SQLException e){
                System.out.println("Connection not established");
                e.printStackTrace();
            }
        
        }
        catch(ClassNotFoundException e){
            System.out.println("Driver not Found");
            e.printStackTrace();
        }
        return con;
    }
    
}
