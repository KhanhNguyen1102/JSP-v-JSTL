<%--
  Created by IntelliJ IDEA.
  User: susu
  Date: 29/11/2021
  Time: 3:07 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Products</h1>
<p>
    <a href="/ProductServlet?action=create">Create new product</a> <br>
    <a href="/ProductServlet?action=findByName">Find a product</a>
</p>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Price</td>
        <td>Description</td>
        <td>Supplier</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td><a href="/ProductServlet?action=view&id=${product.getId()}">${product.getName()}</a></td>
            <td>${product.getPrice()}</td>
            <td>${product.getDescription()}</td>
            <td>${product.getSupplier()}</td>
            <td><a href="/ProductServlet?action=edit&id=${product.getId()}">edit</a></td>
            <td><a href="/ProductServlet?action=delete&id=${product.getId()}">delete</a></td>
            <td><a onclick="return confirm('Are you sure?')" href="/ProductServlet?action=delete1&id=${product.getId()}">delete1</a></td>

        </tr>
    </c:forEach>
</table>
</body>
</html>
