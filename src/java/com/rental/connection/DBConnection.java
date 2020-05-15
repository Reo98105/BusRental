package com.rental.connection;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Reo
 */

public class DBConnection {
    public static Connection con;
    
    public static Connection getConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String myUrl = "jdbc:mysql://localhost:3306/busrental";
            con = DriverManager.getConnection(myUrl, "root", "admin");
        }
        catch(ClassNotFoundException | SQLException e){
        e.getMessage();
        }
        return con;
    }
    
    public void closeConnection(){
        try{
            con.close();
        }
        catch(SQLException e){
            e.getMessage();
        }
    }
}
