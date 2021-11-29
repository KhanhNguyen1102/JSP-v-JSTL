<%--
  Created by IntelliJ IDEA.
  User: susu
  Date: 29/11/2021
  Time: 9:58 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>View product</title>
</head>
<body>
<h1>product details</h1>
<p>
  <a href="/ProductServlet">Back to product list</a>
</p>
<table>
  <tr>
    <td>Name: </td>
    <td>${requestScope["product"].getName()}</td>
  </tr>
  <tr>
    <td>Price: </td>
    <td>${requestScope["product"].getPrice()}</td>
  </tr>
  <tr>
    <td>Description: </td>
    <td>${requestScope["product"].getDescription()}</td>
  </tr>
  <tr>
    <td>Supplier: </td>
    <td>${requestScope["product"].getSupplier()}</td>
  </tr>
</table>
</body>
</html>