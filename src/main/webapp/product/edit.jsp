<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: susu
  Date: 29/11/2021
  Time: 9:51 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Edit Product</title>
</head>
<body>
<h1>Edit Product</h1>
<p>
  <c:if test='${requestScope["message"] != null}'>
    <span class="message">${requestScope["message"]}</span>
  </c:if>
</p>
<p>
  <a href="/ProductServlet">Back to product list</a>
</p>
<form method="post">
  <fieldset>
    <legend>Product information</legend>
    <table>
      <tr>
        <td>Name: </td>
        <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
      </tr>
      <tr>
        <td>Price: </td>
        <td><input type="text" name="price" id="price" value="${requestScope["product"].getPrice()}"></td>
      </tr>
      <tr>
        <td>Description: </td>
        <td><input type="text" name="description" id="description" value="${requestScope["product"].getDescription()}"></td>
      </tr>
      <tr>
        <td>Supplier: </td>
        <td><input type="text" name="supplier" id="supplier" value="${requestScope["product"].getSupplier()}"></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Update product"></td>
      </tr>
    </table>
  </fieldset>
</form>
</body>
</html>