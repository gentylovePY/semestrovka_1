<%--
  Created by IntelliJ IDEA.
  User: romanginiatov
  Date: 16.10.2022
  Time: 23:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="register" method="post">
  <table>
    <tr><td>User name</td><td><input type="text" name="username" ></td></tr>
    <tr><td>Password </td><td><input type="password" name="password" ></td></tr>
    <tr><td>Email </td><td><input type="text" name="email" ></td></tr>
    <tr><td>phone </td><td><input type="text" name="phone" ></td></tr>
    <tr><td></td><td><input type="submit" value="register"></td></tr>
  </table>
</form>
</body>
</html>
