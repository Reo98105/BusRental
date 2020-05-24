package com.rental.dao;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.rental.user.userDriver;
import com.rental.connection.DBConnection;
import com.rental.user.userBooking;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
    
    //add driver's userID into driver table by select most recent record from user table
    public static int saveDri(){
        int status = 0;
        try{
            con = DaoDriver.getConnection();
            PreparedStatement ps = con.prepareStatement("insert into driver (userID) select MAX(userID) from user where role = 'Driver'");
            
            status = ps.executeUpdate();
            
            con.close();
        }
        catch(SQLException ex){
            ex.printStackTrace();
        }
        return status;
    }
    
    //retrieve Sunday's schedule
    public static userBooking getSunDetail(int id){
        userBooking book = new userBooking();
        
        try{
            con = DaoBook.getConnection();
            PreparedStatement ps = con.prepareStatement("select day.day, book.bookDateNeed, book.depart, book.arriveback, book.location "
                    + "from schedule s "
                    + "join bookdetail book on s.bookID = book.bookID "
                    + "join driver on s.driverID = driver.driverID "
                    + "join dayofweek day on s.dayID = day.dayID "
                    + "where s.driverID = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                book.setFullname(rs.getString("fullname"));
            }
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return book;
    }
}
