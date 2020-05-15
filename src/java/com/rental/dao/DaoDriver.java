package com.rental.dao;



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.rental.user.userDriver;
import com.rental.connection.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author Reo
 */
public class DaoDriver {
    private static Connection con;
    
    //get connection info from DBConnection
    public static Connection getConnection(){
        con = DBConnection.getConnection();
        return con;
    }
    
    //add hepa into database
    public static int save(userDriver dri){
        int status = 0;
        try{
            Connection con = DaoDriver.getConnection();
            PreparedStatement ps = con.prepareStatement("insert into user(u_fname, u_name, u_password, u_role) values(?,?,?,?)");
            
            ps.setString(1, dri.getUsername());
            ps.setString(2, dri.getName());
            ps.setString(3, dri.getPassword());
            ps.setString(4, dri.getRole());
            
            status = ps.executeUpdate();
            
            con.close();
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        return status;
    }
}
