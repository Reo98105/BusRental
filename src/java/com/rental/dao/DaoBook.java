package com.rental.dao;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.rental.user.userBooking;
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
public class DaoBook {
    
    private static Connection con;
    
    //get connection info from DBConnection
    public static Connection getConnection(){
        con = DBConnection.getConnection();
        return con;
    }
    
    //add book info into bookDetail
    public static int save(userBooking ubook){
        int status = 0;
        try{
            con = DaoBook.getConnection();
            PreparedStatement ps = con.prepareStatement("insert into bookdetail "
                    + "(userID, bookDate, bookDateNeed, depart, arriveback, purpose, location, pax) "
                    + "values(?,?,?,?,?,?,?,?) ");
            
            ps.setInt(1, ubook.getID());
            ps.setString(2, ubook.getBookDate());
            ps.setString(3, ubook.getDateNeed());
            ps.setString(4, ubook.getDepart());
            ps.setString(5, ubook.getArriveback());
            ps.setString(6, ubook.getPurpose());
            ps.setString(7, ubook.getLocation());
            ps.setInt(8, ubook.getPax());
            
            status = ps.executeUpdate();
            
            con.close();
        }
        catch(SQLException ex){
            ex.printStackTrace();
        }
        return status;
    }
    
    //retrieve all booked details from particular userID (for user)
    public static List<userBooking> getBookDetailByID(String un){
        List<userBooking> listBook = new ArrayList<userBooking>();
        
        try{
            con = DaoBook.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from bookdetail where userID = ?");
            ps.setString(1, un);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                userBooking book = new userBooking();
                book.setBookdate(rs.getString("bookDate"));
                book.setDateNeed(rs.getString("dateNeed"));
                book.setPurpose(rs.getString("purpose"));
                book.setLocation(rs.getString("location"));
                book.setPax(rs.getInt("pax"));
                book.setStatus(rs.getInt("approval"));
                listBook.add(book);
            }
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return listBook;
    }
    
    //partially retrieve all user request (hepa view)
    public static List<userBooking> getPartBookDetail(){
        List<userBooking> listBook = new ArrayList<userBooking>();
        
        try{
            con = DaoBook.getConnection();
            PreparedStatement ps = con.prepareStatement("select user.fullname ,bookdetail.bookID, bookdetail.bookDate, bookdetail.purpose, bookdetail.approval from bookdetail inner join user on user.userID = bookdetail.userID where bookdetail.approval = '0'");
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                userBooking book = new userBooking();
                book.setBookID(rs.getInt("bookID"));
                book.setFullname(rs.getString("fullname"));
                book.setBookdate(rs.getString("bookDate"));
                book.setPurpose(rs.getString("purpose"));
                book.setStatus(rs.getInt("approval"));
                listBook.add(book);
            }
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return listBook;
    }
    
    //retrieve all details from particular bookID (for hepa edit)
    public static userBooking getBookIDDetail(int id){
        userBooking book = new userBooking();
        
        try{
            con = DaoBook.getConnection();
            PreparedStatement ps = con.prepareStatement("select user.fullname , bookdetail.bookDate, bookdetail.DateNeed, bookdetail.purpose, bookdetail.location, bookdetail.pax, bookdetail.approval from bookdetail inner join user on user.userID = bookdetail.userID where bookdetail.bookID = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                book.setFullname(rs.getString("fullname"));
                book.setBookdate(rs.getString("bookDate"));
                book.setDateNeed(rs.getString("dateNeed"));
                book.setPurpose(rs.getString("purpose"));
                book.setLocation(rs.getString("location"));
                book.setPax(rs.getInt("pax"));
                book.setStatus(rs.getInt("approval"));
            }
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return book;
    }
    
    //update booking detail's approval
    public static int updateDetail(userBooking book){
        int status = 0;
        try{
            con = DaoBook.getConnection();
            PreparedStatement ps = con.prepareStatement("update bookdetail set approval = ? where bookID = ?");
            ps.setInt(1, book.getStatus()); 
            ps.setInt(2, book.getBookID());     
            
            status = ps.executeUpdate();
            
            con.close();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return status;
    }
    
    //retrieve all user request (pph view)
    public static List<userBooking> getBookDetail(){
        List<userBooking> listBook = new ArrayList<userBooking>();
        
        try{
            con = DaoBook.getConnection();
            PreparedStatement ps = con.prepareStatement("select user.fullname, bookdetail.bookID, bookdetail.dateNeed, bookdetail.location, bookdetail.pax, bookdetail.approval from bookdetail inner join user on user.userID = bookdetail.userID where bookdetail.approval = '1'");
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                userBooking book = new userBooking();
                book.setBookID(rs.getInt("bookID"));
                book.setFullname(rs.getString("fullname"));
                book.setDateNeed(rs.getString("dateNeed"));
                book.setLocation(rs.getString("location"));
                book.setPax(rs.getInt("pax"));
                book.setStatus(rs.getInt("approval"));
                listBook.add(book);
            }
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return listBook;
    }
}