<%--
  Created by IntelliJ IDEA.
  User: romanginiatov
  Date: 16.10.2022
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <h1>User Login From</h1>
    <form action="login" method="post">
        <table>
            <tr><td>User Name: </td> <td><input type="text" name="username"></td></tr>
            <tr><td>Password: </td> <td><input type="password" name="password"></td></tr>
            <tr><td></td> <td><input type="submit" value="Login"></td></tr>
        </table>
    </form>

</div>
</body>
</html>
