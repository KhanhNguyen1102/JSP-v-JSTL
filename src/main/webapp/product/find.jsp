<%--
  Created by IntelliJ IDEA.
  User: susu
  Date: 29/11/2021
  Time: 10:45 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Find a product by name</title>
</head>
<body>
    <h1>Find a product by name</h1>
<p>
    <a href="/ProductServlet">Quay về trang chính</a>
</p>
    <form method="post">
        <fieldset>
            <legend>Product information</legend>
            <table>
                <tr>
                    <td>Name: </td>
                    <td><input style="width: 200px" type="text" name="name" id="name" placeholder="Write product's name here"></td>
                </tr>

                <tr>
                    <td></td>
                    <td><input type="submit" value="Find"></td>
                </tr>
            </table>
        </fieldset>
    </form>
</body>
</html>
