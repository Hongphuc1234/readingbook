/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author ADMIN
 */
public class Account {
    private int userID;
    private String user;
    private String pass;
    private String name ;
    private String ad;
    
    public Account() {
    }

    public Account(int userID, String user, String pass, String name, String ad) {
        this.userID = userID;
        this.user = user;
        this.pass = pass;
        this.name = name;
        this.ad = ad;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAd() {
        return ad;
    }

    public void setAd(String ad) {
        this.ad = ad;
    }

    @Override
    public String toString() {
        return "Account{" + "userID=" + userID + ", user=" + user + ", pass=" + pass + ", name=" + name + ", ad=" + ad + '}';
    }

}