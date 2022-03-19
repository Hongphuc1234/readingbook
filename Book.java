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
public class Book {
    private String BookID ;
    private String Bookname;
    private String image;
    private String AuthorID;
    private String CategoryID;
    private String review;
   

    public Book() {
    }

    public Book(String BookID, String Bookname, String image, String AuthorID, String CategoryID, String review) {
        this.BookID = BookID;
        this.Bookname = Bookname;
        this.image = image;
        this.AuthorID = AuthorID;
        this.CategoryID = CategoryID;
        this.review = review;
    }

    public String getBookID() {
        return BookID;
    }

    public void setBookID(String BookID) {
        this.BookID = BookID;
    }

    public String getBookname() {
        return Bookname;
    }

    public void setBookname(String Bookname) {
        this.Bookname = Bookname;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getAuthorID() {
        return AuthorID;
    }

    public void setAuthorID(String AuthorID) {
        this.AuthorID = AuthorID;
    }

    public String getCategoryID() {
        return CategoryID;
    }

    public void setCategoryID(String CategoryID) {
        this.CategoryID = CategoryID;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

    @Override
    public String toString() {
        return "Book{" + "BookID=" + BookID + ", Bookname=" + Bookname + ", image=" + image + ", AuthorID=" + AuthorID + ", CategoryID=" + CategoryID + ", review=" + review + '}';
    }

        
}
