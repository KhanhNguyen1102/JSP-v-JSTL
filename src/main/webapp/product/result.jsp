<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: susu
  Date: 29/11/2021
  Time: 11:22 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Kết quả tìm kiếm</title>
</head>
<body>
<h1>Kết quả tìm kiếm</h1>
<a href="/ProductServlet"> Quay lại trang chủ</a>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Price</td>
        <td>Description</td>
        <td>Supplier</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${result}' var="product">
        <tr>
            <td><a href="/ProductServlet?action=view&id=${product.getId()}">${product.getName()}</a></td>
            <td>${product.getPrice()}</td>
            <td>${product.getDescription()}</td>
            <td>${product.getSupplier()}</td>
            <td><a href="/ProductServlet?action=edit&id=${product.getId()}">edit</a></td>
            <td><a href="/ProductServlet?action=delete&id=${product.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
