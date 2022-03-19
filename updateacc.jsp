
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
        <form action="updateacc" method="post">
            <h1>${is}</h1>
       <div class="card">
    <div class="text-center">
        <h3>Update Your Account</h3> <span class="abt"> <a href="home">Return Home</a></span>
    </div>
    <div class="form mt-3">
        <div class="inputbox">Username <input  value="${st.user}"type="text" class="form-control"  name="user"> </div>
        <div class="input-group inputbox"> <input  value="${st.userID}"type="text" class="form-control" name="id"> <input value="${st.ad}" type="number"  class="form-control" name="admin"> </div>
        PassWord<div class="inputbox"> <input value="${st.pass}" type="text" class="form-control"  name="pass"> </div>
        Name<div class="inputbox"> <input value="${st.name}" type="text" class="form-control"  name="name"> </div>
      
    </div>
   
            <div class="text-right"> <button>UPDATE ACCOUNT</button> </div>
            <p>after update you will return Login</p>
    <div class="mt-1">
       
    </div>
</div>
            </form>
    </body>
</html>
