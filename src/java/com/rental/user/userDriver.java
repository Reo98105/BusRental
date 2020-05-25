package com.rental.user;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Teoh
 */
public class userDriver {
    private String  id, username, fname, password, plat, role;
    private int cap, status;

    public String getDriID(){
        return id;
    }
    
    public void setDriID(String id){
        this.id = id;
    }
    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getPlat(){
        return plat;
    }
    
    public void setPlat(String plat){
        this.plat = plat;
    }
    
    public String getRole(){
        return role;
    }
    
    public void setRole(String role){
        this.role = role;
    }
    
    public int getCap(){
        return cap;
    }
    
    public void setCap(int cap){
        this.cap = cap;
    }
    
    public int getStatus(){
        return status;
    }
    
    public void setStatus(int status){
        this.status = status;
    }
}
