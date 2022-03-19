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
public class Chuong {
    private String Chuong_ID;
    private String Noidung;
    private String BookID;
    private String chuong;
    

    public Chuong() {
    }

    public Chuong(String Chuong_ID, String Noidung, String BookID, String chuong) {
        this.Chuong_ID = Chuong_ID;
        this.Noidung = Noidung;
        this.BookID = BookID;
        this.chuong = chuong;
    }

    public String getChuong_ID() {
        return Chuong_ID;
    }

    public void setChuong_ID(String Chuong_ID) {
        this.Chuong_ID = Chuong_ID;
    }

    public String getNoidung() {
        return Noidung;
    }

    public void setNoidung(String Noidung) {
        this.Noidung = Noidung;
    }

    public String getBookID() {
        return BookID;
    }

    public void setBookID(String BookID) {
        this.BookID = BookID;
    }

    public String getChuong() {
        return chuong;
    }

    public void setChuong(String chuong) {
        this.chuong = chuong;
    }

    @Override
    public String toString() {
        return "Chuong{" + "Chuong_ID=" + Chuong_ID + ", Noidung=" + Noidung + ", BookID=" + BookID + ", chuong=" + chuong + '}';
    }

   
    
}
