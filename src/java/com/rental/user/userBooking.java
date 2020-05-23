package com.rental.user;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Reo
 */
public class userBooking {
    private String  bookDate, dateNeed, depart, arriveback, purpose, location, fullname;
    private int id, pax, status, bookID;

    public String getBookDate(){
        return bookDate;
    }
    
    public void setBookdate(String bookDate){
        this.bookDate = bookDate;
    }
    
    public String getDateNeed() {
        return dateNeed;
    }

    public void setDateNeed(String dateNeed) {
        this.dateNeed = dateNeed;
    }

    public String getPurpose() {
        return purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }
    
    public String getDepart() {
        return depart;
    }

    public void setDepart(String depart) {
        this.depart = depart;
    }
    
    public String getArriveback() {
        return arriveback;
    }

    public void setArriveback(String arriveback) {
        this.arriveback = arriveback;
    }
    
    public String getLocation(){
        return location;
    }
    
    public void setLocation(String location){
        this.location = location;
    }
    
    public int getPax(){
        return pax;
    }
    
    public void setPax(int pax){
        this.pax = pax;
    }
    
    public int getID(){
        return id;
    }
    
    public void setID(int id){
        this.id = id;
    }
    
    public int getStatus(){
        return status;
    }
    
    public void setStatus(int status){
        this.status = status;
    }
    
    public int getBookID(){
        return bookID;
    }
    
    public void setBookID(int bookID){
        this.bookID = bookID;
    }
    
    public String getFullname(){
        return fullname;
    }
    
    public void setFullname(String fullname){
        this.fullname = fullname;
    }
}
