package com.rental.dao;




import com.rental.connection.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Reo
 */
public class DaoLogin {
    
    private static Connection con;
    
    //get connection info from DBConnection
    public static Connection getConnection(){
        con = DBConnection.getConnection();
        return con;
    }
    
    //verrify staff info
    public static boolean validateStaff(String un, String pass){
        boolean status = false;
        try{
            Connection con = DaoLogin.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from user where username=? and password=?");
            ps.setString(1, un);
            ps.setString(2, pass);
            
            ResultSet rs = ps.executeQuery();
            status = rs.next();
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        return status;
    }
}
