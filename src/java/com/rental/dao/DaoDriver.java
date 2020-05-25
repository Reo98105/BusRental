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
import java.util.ArrayList;
import java.util.List;

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
    
    //retrieve driver info
    public static userDriver getDriver(String un){
        userDriver dri = new userDriver();
        try{
            con = DaoDriver.getConnection();
            PreparedStatement ps = con.prepareStatement("select driver.driverID, user.fullname, user.role, driver.plateNo, driver.capacity from driver "
                    + "join user on user.userID = driver.userID "
                    + "where user.username = ?");
            
            ps.setString(1, un);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                dri.setDriID(rs.getString("driverID"));
                dri.setFname(rs.getString("fullname"));
                dri.setRole(rs.getString("role"));
                dri.setPlat(rs.getString("plateNo"));
                dri.setCap(rs.getInt("capacity"));
            }
            con.close();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return dri;
    }
    
    //retrieve driver status code
    public static userDriver getDriverStatus(String id){
        userDriver dri = new userDriver();
        try{
            con = DaoDriver.getConnection();
            PreparedStatement ps = con.prepareStatement("select status "
                    + "from driver join user "
                    + "on driver.userID = user.userID "
                    + "where user.username = ?");
            
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                dri.setStatus(rs.getInt("status"));
            }
            con.close();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return dri;
    }
    
    //retrieve username by using userID
    public static List<userDriver> getFreeDriver(int bookID, int dayID){
        List<userDriver> listDriver = new ArrayList<userDriver>();
        try{
            con = DaoStaff.getConnection();
            PreparedStatement ps = con.prepareStatement("select driver.driverID, user.fullname, driver.capacity "
                    + "from driver "
                    + "join user on driver.userID = user.userID "
                    + "join schedule on driver.driverID = schedule.driverID "
                    + "where schedule.bookID = ? "
                    + "and schedule.dayID = ?");
            
            ps.setInt(1, bookID);
            ps.setInt(2, dayID);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                userDriver dri = new userDriver();
                dri.setDriID(rs.getString("driverID"));
                dri.setFname(rs.getString("fullname"));
                dri.setCap(rs.getInt("capacity"));
                listDriver.add(dri);
            }
            con.close();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return listDriver;
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
    
    //update driver bus detail
    public static int updateBus(String platNo,int cap, int id, int cond){
        int status = 0;
        try{
            con = DaoStaff.getConnection();
            PreparedStatement ps = con.prepareStatement("update driver set plateNo = ?, capacity = ?, status = ? "
                    + "where driverID = ?");
            ps.setString(1, platNo);
            ps.setInt(2, cap);
            ps.setInt(3, cond);
            ps.setInt(4, id);
            
            status = ps.executeUpdate();
            
            con.close();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return status;
    }
}
