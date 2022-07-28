<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<title>Reading books</title>
</head>
<body>
    <div class="container">
        <h1>All Books</h1>
        <table class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Language</th>
                <th>Number of Pages</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="book" items="${books}">
                <tr>
                    <td><c:out value="${book.id}"/></td>
                    <td><a href="/books/${book.id}"><c:out value="${book.description}"/></a></td>
                    <td><c:out value="${book.language}"/></td>
                    <td><c:out value="${book.numberOfPages}"/></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    </div>
</body>
</html>
