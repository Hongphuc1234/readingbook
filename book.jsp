<%-- 
    Document   : book
    Created on : Oct 31, 2021, 12:23:51 AM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </head>
        <body>
            <table border="1px solid black">
                <tr>
                    <th>ID</th>
                    <th>BookName</th>
                     <th>img</th>
                    <th>Athor</th>
                    <th>Author_ID</th>
                    <th>Category_ID</th>
                    <th>Summary</th>
                    <th>Link</th>
                     <th>Operations</th>
                </tr>
                <c:forEach items="${list}" var="x">
                <tr>
                    <td>${x.bookID}</td>
                    <td>${x.bookname}</td>
                     <td>${x.image}</td>
                    <td>${x.bookAuthor}</td>
                    <td>${x.authorID}</td>
                     <td>${x.categoryID}</td>
                      <td>${x.summary}</td>
                       <td>${x.link}</td>
                    <td>
                        
                        <a href="delete?sid=${x.bookID}">delete</a>
                    </td>
                </tr>
            </c:forEach>

        </table>
            <a href="addbook.jsp">Add Book</a>    
            <a href="home">Return home</a>
          
    </body>
</html>

