/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rental.user;

/**
 *
 * @author Teoh
 */
public class userSchedule {
    private String bookID, day, dateNeed, depart, arriveback, location;
    private int status;
    
    public String getBookID(){
        return bookID;
    }
    
    public void setBookID(String bookID){
        this.bookID = bookID;
    }
    
    public String getDay(){
        return day;
    }
    
    public void setDay(String day){
        this.day = day;
    }
    
    public String getDate(){
        return dateNeed;
    }
    
    public void setDate(String dateNeed){
        this.dateNeed = dateNeed;
    }
    
    public String getDepart(){
        return depart;
    }
    
    public void setDepart(String depart){
        this.depart = depart;
    }
    
    public String getArriveback(){
        return arriveback;
    }
    
    public void setArriveback(String arriveback){
        this.arriveback = arriveback;
    }
    public String getLocation(){
        return location;
    }
    
    public void setLocation(String location){
        this.location = location;
    }
    
    public int getStatus(){
        return status;
    }
    
    public void setStatus(int status){
        this.status = status;
    }
}
