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


  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" >
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
  <link rel="stylesheet" type="text/css" href="css/home.css">

</head>
<body>
<%
  String name = (String) session.getAttribute("username");
  if (name == null){
%>

<div>
  <div class="header-blue">
    <nav class="navbar navbar-light navbar-expand-md navigation-clean-search">
      <div class="container-fluid"><a class="navbar-brand" href="/home.jsp">Transport</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse"
             id="navcol-1">
          <ul class="nav navbar-nav">
            <li class="nav-item" role="presentation"><a class="nav-link" href="/faq.jsp">FAQ</a></li>
            <li class="nav-item" role="presentation"><a class="nav-link" href="/rasp.jsp">Schedule</a></li>


          </ul>
          <form class="form-inline mr-auto" target="_self">
            <div class="form-group"><label for="search-field"><i class="fa fa-search text-white"></i></label><input class="form-control search-field" type="search" id="search-field" name="search"></div>
          </form><span class="navbar-text"> <a class="login" href="/login">Log In</a></span><a class="btn btn-light action-button" role="button" href="/registration.ftl">Signup</a></div>
      </div>
    </nav>
    <div class="container hero">
      <div class="row">
        <div class="col-12 col-lg-6 col-xl-5 offset-xl-1">
          <h1>Business goal designs</h1>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br></p>
          <button class="btn btn-light btn-lg action-button" type="button"><a href="login"> Learn More</a><i class="fa fa-long-arrow-right ml-2"></i></button>

        </div>
        <div class="col-md-5 col-lg-5 offset-lg-1 offset-xl-0 d-none d-lg-block phone-holder">
          <div class="iphone-mockup">
            <img class="device" src="https://i.imgur.com/bkCeTu7.png">
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<%}else {%>
<div>
  <div class="header-blue">
    <nav class="navbar navbar-light navbar-expand-md navigation-clean-search">
      <div class="container-fluid"><a class="navbar-brand" href="#">Transport</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse"
             id="navcol-1">
          <ul class="nav navbar-nav">
            <li class="nav-item" role="presentation"><a class="nav-link" href="/faq.jsp">FAQ</a></li>
            <li class="nav-item" role="presentation"><a class="nav-link" href="/">Chat</a></li>
            <li class="nav-item" role="presentation"><a class="nav-link" href="/buyTicket.jsp">BuyTicket</a></li>
            <li class="nav-item" role="presentation"><a class="nav-link" href="/zakaz">Orders</a></li>
            <li class="nav-item" role="presentation"><a class="nav-link" href="/rasp.jsp">Schedule</a></li>

          </ul>
          <form class="form-inline mr-auto" target="_self">
            <div class="form-group"><label for="search-field"><i class="fa fa-search text-white"></i></label><input class="form-control search-field" type="search" id="search-field" name="search"></div>
          </form>

          <a class="btn btn-light action-button" role="button" href="/profile"><%=name %></a>
          <span class="navbar-text"> <a class="login" href="/logout"> Logout</a></span>
        </div>
      </div>
    </nav>
    <div class="container hero">
      <div class="row">
        <div class="col-12 col-lg-6 col-xl-5 offset-xl-1">
          <h1>Business goal designs</h1>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br></p>
          <button class="btn btn-light btn-lg action-button" type="submit"><a href="buyTicket.jsp"> Learn More</a><i class="fa fa-long-arrow-right ml-2"></i></button>
        </div>
        <div class="col-md-5 col-lg-5 offset-lg-1 offset-xl-0 d-none d-lg-block phone-holder">
          <div class="iphone-mockup">
            <img class="device" src="https://i.imgur.com/bkCeTu7.png">
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<%}%>
</body>
</html>
