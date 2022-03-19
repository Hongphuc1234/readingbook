/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import context.DBcontext;
import entity.Account;
import entity.Book;
import entity.Category;
import entity.Chuong;
import entity.content;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author ADMIN
 */
public class DAO {
      Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs =null;
    public Account login(String user, String pass){
        String query = "select*from Account\n" +
"where [User] = ?\n" +
"and Pass = ?";
        try{
            
            conn =new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,user);
            ps.setString(2,pass);
            rs = ps.executeQuery();
            while (rs.next()){
               return new Account(rs.getInt(1),
                        rs.getString(2),
                       rs.getString(3),
                       rs.getString(4),
                        rs.getString(5));
            }
        } catch(Exception e){
            
        }
        return null;
    }
    public Account getaccountbyid(String id){
        String query ="select * from Account\n" +
"                where UserID=?";
        try {
            conn = new DBcontext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1,id);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public List<Book> getlistBook(){
        String query = "select * from Book";
        try{
            
            conn =new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            List<Book> list= new ArrayList<>();
            while (rs.next()){
              list.add( new Book(rs.getString(1),
                      rs.getString(2),
                      rs.getString(3), 
                      rs.getString(4),
                      rs.getString(5),
                      rs.getString(6)));
            }
            return list;
        } catch(Exception e){
            
        }
        return null;
    }
    public Chuong getchuongbyid(String did, String bid){
       String query ="select * from chuong where BookID = ? and chuong = ?";
        try {
            conn = new DBcontext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1,bid);
            ps.setString(2,did);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Chuong(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public List<Category> getlistCategory(){
        String query = "select * from Category";
        try{
            
            conn =new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            List<Category> listc= new ArrayList<>();
            while (rs.next()){
              listc.add( new Category(rs.getInt(1),
                      rs.getString(2)));
            }
            return listc;
        } catch(Exception e){
            
        }
        return null;
    }
    
     public Book getLast() {
        String query = "select top 1 * from Book\n" +
"order by BookID desc";
        try {
            conn = new DBcontext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Book(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
      public content getcontentbybookID(String kid) {
        String query = "select * from content where book_ID = ?";
        try {
            conn = new DBcontext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, kid);
            rs = ps.executeQuery();
            while(rs.next()){
                return new content(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
      public void AddAccount( String user , String pass , String admin ,String name ,String phone){
        String query ="insert into Account\n" +
"values(?,?,?,?,?)";
        try{
            
            conn =new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, admin);
            ps.setString(4, name);
            ps.setString(5, phone);
           ps.executeUpdate();
          
        } catch(Exception e){
            
    }
     }
       public void Addbook(String id , String name , String img , String authorid ,String cateoid ,String review){
        String query ="insert into Book\n" +
"values(?,?,?,?,?,?)";
        try{
            
            conn =new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, name);
            ps.setString(3, img);
            ps.setString(4, authorid);
            ps.setString(5, cateoid);
            ps.setString(6, review);
           ps.executeUpdate();
          
        } catch(Exception e){
            
    }
     }
      public List<Book> getlistBookbycatID(String cid){
        String query = "select* from Book \n" +
"where CategoryID= ?";
        try{
            
            conn =new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            List<Book> list= new ArrayList<>();
            while (rs.next()){
              list.add( new Book(rs.getString(1),
                      rs.getString(2),
                      rs.getString(3),
                      rs.getString(4),
                      rs.getString(5),
                      rs.getString(6)));
            }
            return list;
        } catch(Exception e){
            
        }
        return null;
    }
        public List<Book> getlistBookbyname(String name){
        String query = "select* from Book \n" +
"where Bookname like ?";
        try{
            
            conn =new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,"%"+name+"%");
            rs = ps.executeQuery();
            List<Book> list= new ArrayList<>();
            while (rs.next()){
              list.add( new Book(rs.getString(1),
                      rs.getString(2),
                      rs.getString(3),
                      rs.getString(4),
                      rs.getString(5),
                      rs.getString(6)));
            }
            return list;
        } catch(Exception e){
            
        }
        return null;
    }
      public Book review(String bid) {
        String query = "select * from Book\n" +
"where BookID =?";
        try {
            conn = new DBcontext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, bid);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Book(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    } 
        public void updateAcc (String id , String user ,String pass , String ad){
           String query ="update Account\n" +
"set pass =?,\n" +
"name =?,\n" +
"ad = ? \n" +
"where UserID=?";
        try{
            
            conn =new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,user);
            ps.setString(2,pass);
           
             ps.setString(3,ad);
            ps.setString(4,id);
           ps.executeUpdate();
          
        } catch(Exception e){
            
    }
     }
         public void deleteBook(String id){
        String query ="delete from Book where BookID =?";
        try{
            
            conn =new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,id);
           ps.executeUpdate();
          
        } catch(Exception e){
            
    }
     }
         public content getcontentbyid(String bid){
             String query = "select * from content1 where book_ID =?";
             try {
            conn = new DBcontext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, bid);
            rs = ps.executeQuery();
            while(rs.next()){
                return new content(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5));
            }
        } catch (Exception e) {
        }
        return null;
         } 
        /* public Chuong getchuongbyID(String cid){
             String query = "select * from content1 where book_ID =?";
             try {
            conn = new DBcontext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, bid);
            rs = ps.executeQuery();
            while(rs.next()){
                return new content(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5));
            }
        } catch (Exception e) {
        }
        return null;
         }*/
    public static void main(String[] args) {
      DAO accountDAO = new DAO();
      accountDAO.Addbook("sad","sadsa", "sadsa", "sadsadsa", "dfgfdg", "dfgdgfdg");
      List<Book> list = accountDAO.getlistBook();
        for(Book b : list){
            System.out.println(b);
        }
        Chuong cn = accountDAO.getchuongbyid("2","2");
        System.out.println(cn);
      
        List<Category> listc = accountDAO.getlistCategory();
        for(Category a : listc){
            System.out.println(a);
        }
    }
}