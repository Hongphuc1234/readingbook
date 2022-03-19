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
public class content {
    private String content_ID;
    private String b_content;
    private String book_ID;
private String book_name;
private String book_author;
    public content() {
    }

    public content(String content_ID, String b_content, String book_ID, String book_name, String book_author) {
        this.content_ID = content_ID;
        this.b_content = b_content;
        this.book_ID = book_ID;
        this.book_name = book_name;
        this.book_author = book_author;
    }

    public String getContent_ID() {
        return content_ID;
    }

    public void setContent_ID(String content_ID) {
        this.content_ID = content_ID;
    }

    public String getB_content() {
        return b_content;
    }

    public void setB_content(String b_content) {
        this.b_content = b_content;
    }

    public String getBook_ID() {
        return book_ID;
    }

    public void setBook_ID(String book_ID) {
        this.book_ID = book_ID;
    }

    public String getBook_name() {
        return book_name;
    }

    public void setBook_name(String book_name) {
        this.book_name = book_name;
    }

    public String getBook_author() {
        return book_author;
    }

    public void setBook_author(String book_author) {
        this.book_author = book_author;
    }

    @Override
    public String toString() {
        return "content{" + "content_ID=" + content_ID + ", b_content=" + b_content + ", book_ID=" + book_ID + ", book_name=" + book_name + ", book_author=" + book_author + '}';
    }

   
}
