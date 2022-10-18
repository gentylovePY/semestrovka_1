<%--
  Created by IntelliJ IDEA.
  User: romanginiatov
  Date: 17.10.2022
  Time: 21:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
   <link rel="stylesheet" type="text/css" href="css/home.css">
</head>
<body>
<%
  String name = (String) session.getAttribute("username");

  if (name == null){


%>
<div class="container">
  <nav>
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">Prosuct</a></li>
      <li><a href="#">Thames</a></li>
      <li><a href="#">About</a></li>
      <li><a href="#">FAQ</a></li>
      <li style="float: right;"><a href="/login">Login</a></li>
      <li style="float: right;"><a href="/register">Registration</a></li>

    </ul>
  </nav>
</div>
<%
  }else if (name != null){


%>
<div class="container">
  <nav>
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">Prosuct</a></li>
      <li><a href="#">Thames</a></li>
      <li><a href="#">About</a></li>
      <li><a href="#">FAQ</a></li>
      <li style="float: right;"><a href="logout">Log out</a></li>
      <h5 style="float: right; color: white; font-size: 20px">Welcome, <%=name%></h5>

    </ul>
  </nav>
</div>

<%
  }%>
</body>
</html>
