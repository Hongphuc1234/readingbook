<%-- 
    Document   : addbook
    Created on : Oct 31, 2021, 12:50:38 AM
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="css/stylecreate.css" rel="stylesheet" type="text/css"/>
          <link href="	https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="addbook" method="post">
       <div class="card">
    <div class="text-center">
        <h3>Create New Book</h3> <span class="abt"><a href="bookmanage">Return Book List</a></span>
    </div>
    <div class="form mt-3">
        <div class="inputbox"> <input type="text" class="form-control" placeholder="BOOK ID" name="id"> </div>
        <div class="input-group inputbox"> <input type="text" placeholder="authorID" class="form-control" name="auid"> <input type="text" placeholder="categoryID" class="form-control" name="cateo"> </div>
        <div class="inputbox"> <input type="text" class="form-control" placeholder="Img Link" name="image"> </div>
        <div class="inputbox"> <input type="text" class="form-control" placeholder="Name" name="name"> </div>
         <div class="inputbox"> <input type="text" class="form-control" placeholder="Summary" name="review"> </div>
        
    </div>
   
            <div  class="text-right form mt-2 text-center" > <button>CREATE BOOK</button> </div>
           
    <div class="mt-1">
       
    </div>
</div>
            </form>
    </body>
</html>

