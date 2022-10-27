<%--
  Created by IntelliJ IDEA.
  User: romanginiatov
  Date: 27.10.2022
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <li class="nav-item" role="presentation"><a class="nav-link" href="/rasp.jsp">Schedule</a></li>


      </ul>
    </div>
  </div>
</nav>
<div class="row d-flex justify-content-center mt-100 mb-100">


  <div class="col-lg-6">

    <div class="card">
      <div class="card-body text-center">
        <h4 class="card-title m-b-0">Расписание</h4>
      </div>
      <ul class="list-style-none">
        <li class="d-flex no-block card-body">
          <i class="fa fa-bus"></i>
          <div>
            <a href="#" class="m-b-0 font-medium p-0" data-abc="true"> 4 BUS</a>
            <span class="text-muted">Kazan-Perm</span>
          </div>
          <div class="ml-auto">
            <div class="tetx-right">
              <h5 class="text-muted m-b-0">26</h5>
              <span class="text-muted font-16">FEB</span>
            </div>
          </div>
        </li>
        <li class="d-flex no-block card-body border-top">
          <i class="fa fa-bus"></i>
          <div>
            <a href="#" class="m-b-0 font-medium p-0" data-abc="true"> 22 BUS</a>
            <span class="text-muted">Novosibirsk-Kazan</span>
          </div>
          <div class="ml-auto">
            <div class="tetx-right">
              <h5 class="text-muted m-b-0">11</h5>
              <span class="text-muted font-16">MAR</span>
            </div>
          </div>
        </li>
        <li class="d-flex no-block card-body border-top">
          <i class="fa fa-bus"></i>
          <div>
            <a href="#" class="m-b-0 font-medium p-0" data-abc="true">63 BUS</a>
            <span class="text-muted">Krasnodar-Moscow</span>
          </div>
          <div class="ml-auto">
            <div class="tetx-right">
              <h5 class="text-muted m-b-0">19</h5>
              <span class="text-muted font-16">APR</span>
            </div>
          </div>
        </li>
        <li class="d-flex no-block card-body border-top">
          <i class="fa fa-bus"></i>
          <div>
            <a href="#" class="m-b-0 font-medium p-0" data-abc="true">35 BUS</a>
            <span class="text-muted">Kazan-Alnashi</span>
          </div>
          <div class="ml-auto">
            <div class="tetx-right">
              <h5 class="text-muted m-b-0">13</h5>
              <span class="text-muted font-16">APR</span>
            </div>
          </div>
        </li>
        <li class="d-flex no-block card-body border-top">
          <i class="fa fa-bus"></i>
          <div>
            <a href="#" class="m-b-0 font-medium p-0" data-abc="true">44 BUS</a>
            <span class="text-muted">UFA-Alnashi</span>
          </div>
          <div class="ml-auto">
            <div class="tetx-right">
              <h5 class="text-muted m-b-0">13</h5>
              <span class="text-muted font-16">FEB</span>
            </div>
          </div>
        </li>
        <li class="d-flex no-block card-body border-top">
          <i class="fa fa-bus"></i>
          <div>
            <a href="#" class="m-b-0 font-medium p-0" data-abc="true">90 BUS</a>
            <span class="text-muted">Kazan-UFA</span>
          </div>
          <div class="ml-auto">
            <div class="tetx-right">
              <h5 class="text-muted m-b-0">21</h5>
              <span class="text-muted font-16">APR</span>
            </div>
          </div>
        </li>
        <li class="d-flex no-block card-body border-top">
          <i class="fa fa-bus"></i>
          <div>
            <a href="#" class="m-b-0 font-medium p-0" data-abc="true">91 BUS</a>
            <span class="text-muted">Izhevsk-Alnashi</span>
          </div>
          <div class="ml-auto">
            <div class="tetx-right">
              <h5 class="text-muted m-b-0">20</h5>
              <span class="text-muted font-16">JUN</span>
            </div>
          </div>
        </li>
        <li class="d-flex no-block card-body border-top">
          <i class="fa fa-bus"></i>
          <div>
            <a href="#" class="m-b-0 font-medium p-0" data-abc="true">55 BUS</a>
            <span class="text-muted">Derbiski-Kazan</span>
          </div>
          <div class="ml-auto">
            <div class="tetx-right">
              <h5 class="text-muted m-b-0">15</h5>
              <span class="text-muted font-16">AUG</span>
            </div>
          </div>
        </li>
        <li class="d-flex no-block card-body border-top">
          <i class="fa fa-bus"></i>
          <div>
            <a href="#" class="m-b-0 font-medium p-0" data-abc="true">69 BUS</a>
            <span class="text-muted">Kazan-Izhevsk</span>
          </div>
          <div class="ml-auto">
            <div class="tetx-right">
              <h5 class="text-muted m-b-0">19</h5>
              <span class="text-muted font-16">OCT</span>
            </div>
          </div>
        </li>
      </ul>
    </div>

  </div>
</div>
<%}else{%>
<nav class="navbar navbar-light navbar-expand-md navigation-clean-search">
  <div class="container-fluid"><a class="navbar-brand" href="home.jsp">Transport</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
    <div class="collapse navbar-collapse"
         id="navcol-1">
      <ul class="nav navbar-nav">
        <li class="nav-item" role="presentation"><a class="nav-link" href="/faq.jsp">FAQ</a></li>
        <li class="nav-item" role="presentation"><a class="nav-link" href="/">Chat</a></li>
        <li class="nav-item" role="presentation"><a class="nav-link" href="/buyTicket.jsp">BuyTicket</a></li>
        <li class="nav-item" role="presentation"><a class="nav-link" href="/zakaz">Orders</a></li>
        <li class="nav-item" role="presentation"><a class="nav-link" href="/rasp.jsp">Schedule</a></li>

      </ul>
    </div>
  </div>
</nav>
<div class="row d-flex justify-content-center mt-100 mb-100">


  <div class="col-lg-6">

    <div class="card">
      <div class="card-body text-center">
        <h4 class="card-title m-b-0">Расписание</h4>
      </div>
      <ul class="list-style-none">
        <li class="d-flex no-block card-body">
          <i class="fa fa-bus"></i>
          <div>
            <a href="#" class="m-b-0 font-medium p-0" data-abc="true"> 4 BUS</a>
            <span class="text-muted">Kazan-Perm</span>
          </div>
          <div class="ml-auto">
            <div class="tetx-right">
              <h5 class="text-muted m-b-0">26</h5>
              <span class="text-muted font-16">FEB</span>
            </div>
          </div>
        </li>
        <li class="d-flex no-block card-body border-top">
          <i class="fa fa-bus"></i>
          <div>
            <a href="buyTicket.jsp" class="m-b-0 font-medium p-0" data-abc="true"> 22 BUS</a>
            <span class="text-muted">Novosibirsk-Kazan</span>
          </div>
          <div class="ml-auto">
            <div class="tetx-right">
              <h5 class="text-muted m-b-0">11</h5>
              <span class="text-muted font-16">MAR</span>
            </div>
          </div>
        </li>
        <li class="d-flex no-block card-body border-top">
          <i class="fa fa-bus"></i>
          <div>
            <a href="buyTicket.jsp" class="m-b-0 font-medium p-0" data-abc="true">63 BUS</a>
            <span class="text-muted">Krasnodar-Moscow</span>
          </div>
          <div class="ml-auto">
            <div class="tetx-right">
              <h5 class="text-muted m-b-0">19</h5>
              <span class="text-muted font-16">APR</span>
            </div>
          </div>
        </li>
        <li class="d-flex no-block card-body border-top">
          <i class="fa fa-bus"></i>
          <div>
            <a href="buyTicket.jsp" class="m-b-0 font-medium p-0" data-abc="true">35 BUS</a>
            <span class="text-muted">Kazan-Alnashi</span>
          </div>
          <div class="ml-auto">
            <div class="tetx-right">
              <h5 class="text-muted m-b-0">13</h5>
              <span class="text-muted font-16">APR</span>
            </div>
          </div>
        </li>
        <li class="d-flex no-block card-body border-top">
          <i class="fa fa-bus"></i>
          <div>
            <a href="buyTicket.jsp" class="m-b-0 font-medium p-0" data-abc="true">44 BUS</a>
            <span class="text-muted">UFA-Alnashi</span>
          </div>
          <div class="ml-auto">
            <div class="tetx-right">
              <h5 class="text-muted m-b-0">13</h5>
              <span class="text-muted font-16">FEB</span>
            </div>
          </div>
        </li>
        <li class="d-flex no-block card-body border-top">
          <i class="fa fa-bus"></i>
          <div>
            <a href="buyTicket.jsp" class="m-b-0 font-medium p-0" data-abc="true">90 BUS</a>
            <span class="text-muted">Kazan-UFA</span>
          </div>
          <div class="ml-auto">
            <div class="tetx-right">
              <h5 class="text-muted m-b-0">21</h5>
              <span class="text-muted font-16">APR</span>
            </div>
          </div>
        </li>
        <li class="d-flex no-block card-body border-top">
          <i class="fa fa-bus"></i>
          <div>
            <a href="buyTicket.jsp" class="m-b-0 font-medium p-0" data-abc="true">91 BUS</a>
            <span class="text-muted">Izhevsk-Alnashi</span>
          </div>
          <div class="ml-auto">
            <div class="tetx-right">
              <h5 class="text-muted m-b-0">20</h5>
              <span class="text-muted font-16">JUN</span>
            </div>
          </div>
        </li>
        <li class="d-flex no-block card-body border-top">
          <i class="fa fa-bus"></i>
          <div>
            <a href="buyTicket.jsp" class="m-b-0 font-medium p-0" data-abc="true">55 BUS</a>
            <span class="text-muted">Derbiski-Kazan</span>
          </div>
          <div class="ml-auto">
            <div class="tetx-right">
              <h5 class="text-muted m-b-0">15</h5>
              <span class="text-muted font-16">AUG</span>
            </div>
          </div>
        </li>
        <li class="d-flex no-block card-body border-top">
          <i class="fa fa-bus"></i>
          <div>
            <a href="buyTicket.jsp" class="m-b-0 font-medium p-0" data-abc="true">69 BUS</a>
            <span class="text-muted">Kazan-Izhevsk</span>
          </div>
          <div class="ml-auto">
            <div class="tetx-right">
              <h5 class="text-muted m-b-0">19</h5>
              <span class="text-muted font-16">OCT</span>
            </div>
          </div>
        </li>
      </ul>
    </div>

  </div>
</div>

<%}%>

</body>
</html>
