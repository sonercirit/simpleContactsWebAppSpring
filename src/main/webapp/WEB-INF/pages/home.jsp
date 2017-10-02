<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Contact Management Screen</title>
</head>
<body>
<div align="center">
    <h1>Contact List</h1>
    <h3>
        <a href="newContact">New Contact</a>
    </h3>
    <form:form action="searchContact" method="post" modelAttribute="contact">
        <td><form:input path="searchString" /></td>
        <td><input type="submit" value="Search"></td>
    </form:form>
    <table border="1">

        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
        <th>Telephone</th>
        <th>Action</th>

        <c:forEach var="contact" items="${listContact}">
            <tr>

                <td>${contact.name}</td>
                <td>${contact.email}</td>
                <td>${contact.address}</td>
                <td>${contact.telephone}</td>
                <td><a href="editContact?id=${contact.id}">Edit</a>
                    <a href="deleteContact?id=${contact.id}">Delete</a></td>

            </tr>
        </c:forEach>
        <c:forEach var="contact" items="${searchContact}">
            <tr>

                <td>${contact.name}</td>
                <td>${contact.email}</td>
                <td>${contact.address}</td>
                <td>${contact.telephone}</td>
                <td><a href="editContact?id=${contact.id}">Edit</a>
                    <a href="deleteContact?id=${contact.id}">Delete</a></td>

            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>