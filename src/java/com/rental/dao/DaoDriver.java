package com.rental.dao;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.rental.user.userDriver;
import com.rental.connection.DBConnection;
import com.rental.user.userSchedule;
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
    
    //add driver's scheduling details
    public static int[] saveSchedule(int id){
        int[] status = null;
        try{
            con = DaoDriver.getConnection();
            con.setAutoCommit(false);
            PreparedStatement ps = con.prepareStatement("insert into schedule(driverID, dayID) values(?,?)");
            
            for(int dayID = 0; dayID < 7; dayID ++){
            ps.setInt(1, id);
            ps.setInt(2, dayID);
            ps.addBatch();
            }            
            
            status = ps.executeBatch();
            
            con.commit();
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
            PreparedStatement ps = con.prepareStatement("select driver.driverID, user.fullname, user.role, driver.plateNo, driver.capacity "
                    + "from driver "
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
            con = DaoDriver.getConnection();
            PreparedStatement ps = con.prepareStatement("select driver.driverID, user.fullname, driver.capacity "
                    + "from driver "
                    + "join user on user.userID = driver.userID "
                    + "join schedule on schedule.driverID = driver.driverID "
                    + "where schedule.dayID = ? "
                    + "and schedule.status = 0");
            
            ps.setInt(1, dayID);
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
    
    public static int updateSchedule(int id, int driID, int dayID){
        int status = 0;
        try{
            con = DaoDriver.getConnection();
            PreparedStatement ps = con.prepareStatement("update schedule set bookID = ? where driverID = ? and dayID = ?");
            ps.setInt(1, id);
            ps.setInt(2, driID);
            ps.setInt(3, dayID);
            status = ps.executeUpdate();
            
            con.close();
        }
        catch(SQLException ex){
            ex.printStackTrace();
        }
        return status;
    }    
    
    //update driver bus detail
    public static int updateBus(String platNo,int cap, int id, int cond){
        int status = 0;
        try{
            con = DaoDriver.getConnection();
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
    
    //retrieve schedule's detail
    public static List<userSchedule> getSchedule(String id){
        List<userSchedule> listSchedule = new ArrayList<userSchedule>();
        try{
            con = DaoDriver.getConnection();
            PreparedStatement ps = con.prepareStatement("select schedule.bookID, dayofweek.day, bookdetail.bookDateNeed, bookdetail.depart, bookdetail.arriveback, bookdetail.location, schedule.status "
                    + "from schedule "
                    + "left outer join bookdetail on schedule.bookID = bookdetail.bookID "
                    + "right outer join dayofweek on schedule.dayID = dayofweek.dayID "
                    + "where driverID = ?");
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                userSchedule schedule = new userSchedule();
                schedule.setBookID(rs.getString("bookID"));
                schedule.setDay(rs.getString("day"));
                schedule.setDate(rs.getString("bookDateNeed"));
                schedule.setDepart(rs.getString("depart"));
                schedule.setArriveback(rs.getString("arriveback"));
                schedule.setLocation(rs.getString("location"));
                schedule.setStatus(rs.getInt("status"));
                listSchedule.add(schedule);
            }
            
            con.close();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return listSchedule;
    }
}
