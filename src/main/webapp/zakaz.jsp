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
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/faq.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" >
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
    <link href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" rel="stylesheet" id="bootstrap-css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" >
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<nav class="navbar navbar-light navbar-expand-md navigation-clean-search">
    <div class="container-fluid"><a class="navbar-brand" href="home.jsp">Transport</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse"
             id="navcol-1">
            <ul class="nav navbar-nav">
                <li class="nav-item" role="presentation"><a class="nav-link" href="/faq.jsp">FAQ</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="/">Chat</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="/buyTicket.jsp">BuyTicket</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="/zakaz">Orders</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="/rasp">Schedule</a></li>

            </ul>
        </div>
    </div>
</nav>
<form action="zakaz" method="post">
    <h2>your tickets</h2>
    <br>
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
