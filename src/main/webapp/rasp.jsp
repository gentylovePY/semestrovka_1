<%--
 Created by IntelliJ IDEA.
 User: romanginiatov
 Date: 27.10.2022
 Time: 14:45
 To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Title</title>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/rasp.css">
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
<%
  String name = (String) session.getAttribute("username");
  if (name == null){
%>
<nav class="navbar navbar-light navbar-expand-md navigation-clean-search">
  <div class="container-fluid"><a class="navbar-brand" href="home.jsp">Transport</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
    <div class="collapse navbar-collapse"
         id="navcol-1">
      <ul class="nav navbar-nav">
        <li class="nav-item" role="presentation"><a class="nav-link" href="/faq.jsp">FAQ</a></li>
        <li class="nav-item" role="presentation"><a class="nav-link" href="/rasp">Schedule</a></li>

      </ul>
    </div>
  </div>
</nav>
<%} else {%>
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
<%}%>

<form action="rasp" method="post">
  <h2>bus schedules</h2>
  <br>
  <select name="bus" class="form-control" id="bus">


    <option value="" class="form-control">-- Выберите автобус --</option>
    <option value="1" class="form-control">1</option>
    <option value="2" class="form-control" >2</option>
    <option value="4" class="form-control" >4</option>
    <option value="5" class="form-control" >5</option>
    <option value="8" class="form-control" >8</option>
    <option value="65" class="form-control" >65</option>

  </select>
  <br>
    <table border="1">
    <thead>
    <tr>
      <td>Number Bus</td>
      <td>Start City</td>
      <td>End City</td>
      <td>Date</td>
    </tr>
    </thead>

    <tr>
      <c:forEach var="li" items="${rasplist}">
    <tr>
      <td>${li.bus}</td>
      <td>${li.startCity}</td>
      <td>${li.endCity}</td>
      <td>${li.date}</td>
    </tr>
    </c:forEach>
    </tr>
  </table>
  <br>
  <button type="submit"  id="submitbtn" value="Login" class="btn">Show</button>
</form>
</body>
</html>

