<%--
  Created by IntelliJ IDEA.
  User: susu
  Date: 29/11/2021
  Time: 9:54 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Deleting product</title>
</head>
<body>
<h1>Delete product</h1>
<p>
  <a href="/ProductServlet">Back to product list</a>
</p>
<form method="post">
  <h3>Are you sure?</h3>
  <fieldset>
    <legend>Product information</legend>
    <table>
      <tr>
        <td>Name: </td>
        <td>${requestScope["product"].getName()}</td>
      </tr>
      <tr>
        <td>Price: </td>
        <td>${requestScope["product"].getEmail()}</td>
      </tr>
      <tr>
        <td>Description: </td>
        <td>${requestScope["product"].getDescription()}</td>
      </tr>
      <tr>
        <td>Supplier: </td>
        <td>${requestScope["product"].getSupplier()}</td>
      </tr>
      <tr>
        <td><input type="submit" value="Delete product"></td>
      </tr>
    </table>
  </fieldset>
</form>
</body>
</html>