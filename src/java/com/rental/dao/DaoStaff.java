package com.rental.dao;



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.rental.user.userStaff;
import com.rental.connection.DBConnection;
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
public class DaoStaff {
    
    private static Connection con;
    
    //get connection info from DBConnection
    public static Connection getConnection(){
        con = DBConnection.getConnection();
        return con;
    }
    
    //create
    public static int save(userStaff staff){
        int status = 0;
        try{
            con = DaoStaff.getConnection();
            PreparedStatement ps = con.prepareStatement("insert into user(username, fullname, password, role) values(?,?,?,?)");
            
            ps.setString(1, staff.getUsername());
            ps.setString(2, staff.getName());
            ps.setString(3, staff.getPassword());
            ps.setString(4, staff.getRole());
            
            status = ps.executeUpdate();
            
            con.close();
        }
        catch(SQLException ex){
            ex.printStackTrace();
        }
        return status;
    }
    
    //retrieve
    public static userStaff getUser(String un){
        userStaff staff = new userStaff();
        try{
            con = DaoStaff.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from user where username = ?");
            
            ps.setString(1, un);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                staff.setUsername(rs.getString("username"));
                staff.setName(rs.getString("fullname"));                
                staff.setRole(rs.getString("role"));
            }
            con.close();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return staff;
    }
    
    //retrieve userID by using username
    public static userStaff getUserID(String un){
        userStaff staff = new userStaff();
        try{
            con = DaoStaff.getConnection();
            PreparedStatement ps = con.prepareStatement("select userID from user where username = ?");
            
            ps.setString(1, un);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                staff.setID(rs.getInt("userID"));
            }
            con.close();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return staff;
    }
    
    //retrieve username by using userID
    public static List<userStaff> getUsername(int id){
        List<userStaff> listStaff = new ArrayList<userStaff>();
        try{
            con = DaoStaff.getConnection();
            PreparedStatement ps = con.prepareStatement("select username from bookdetail inner join user where userID = ?");
            
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                userStaff staff = new userStaff();
                staff.setUsername(rs.getString("username"));
                listStaff.add(staff);
            }
            con.close();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return listStaff;
    }
    
    //update staff password
    public static int update(userStaff staff){
        int status = 0;
        try{
            con = DaoStaff.getConnection();
            PreparedStatement ps = con.prepareStatement("update user set password = ? where username = ?");
            ps.setString(1, staff.getPassword());
            ps.setString(2, staff.getUsername());
            
            status = ps.executeUpdate();
            
            con.close();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return status;
    }
    
    //retrieve password by using username
    public static userStaff getPassword(String un){
        userStaff staff = new userStaff();
        try{
            con = DaoStaff.getConnection();
            PreparedStatement ps = con.prepareStatement("select password from user where username = ?");
            
            ps.setString(1, un);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                staff.setPassword(rs.getString("password"));
            }
            con.close();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return staff;
    }
}