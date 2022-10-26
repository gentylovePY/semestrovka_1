<%--
  Created by IntelliJ IDEA.
  User: romanginiatov
  Date: 26.10.2022
  Time: 23:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="zakaz" method="post">
    <h2>fd</h2>
    <table border="1">
        <thead>
        <tr>
        <td>username</td>
        <td>bus</td>
        <td>startCity</td>
        <td>endCity</td>
        </tr>
        </thead>

<tr>
    <c:forEach var="lists" items="${list}">
    <tr>
    <td>${lists.username}</td>
    <td>${lists.bus}</td>
    <td>${lists.startCity}</td>
    <td>${lists.endCity}</td>
</tr>
    </c:forEach>
</tr>
    </table>
</form>
</body>
</html>
