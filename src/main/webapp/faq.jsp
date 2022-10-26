<%--
  Created by IntelliJ IDEA.
  User: romanginiatov
  Date: 26.10.2022
  Time: 20:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/faq.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" >
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
  <link rel="stylesheet" type="text/css" href="css/home.css">
  <script src="js/faq.js"></script>
</head>
<body>
<div class="container">
  <nav class="navbar navbar-light navbar-expand-md navigation-clean-search">
    <div class="container-fluid"><a class="navbar-brand" href="home.jsp">Transport</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
      <div class="collapse navbar-collapse"
           id="navcol-1">
        <ul class="nav navbar-nav">
          <li class="nav-item" role="presentation"><a class="nav-link" href="/faq.jsp">FAQ</a></li>
          <li class="nav-item" role="presentation"><a class="nav-link" href="#">Contact</a></li>
          <li class="nav-item" role="presentation"><a class="nav-link" href="#">Contact</a></li>

        </ul>
      </div>
    </div>
  </nav>

  <div class="faq">
    <ul class="faq-questions">
      <li>
        <h4 class="faq-question">Как я могу вернуть деньги за уже оплаченный штраф?</h4>
        <p class="faq-answer">Для оформления компенсации необходимо обратиться в один из центров госуслуг «Мои документы» не позднее 31 декабря этого года. Для этого потребуется паспорт или другой документ, подтверждающий личность, постановление о назначении административного штрафа, документ, подтверждающий оплату и заявление.

          В случае отсутствия постановления вы можете обратиться за его копией, написав заявление. При наличии нескольких штрафов – вы можете подать одно заявление.</p>
      </li>
      <li>
        <h4 class="faq-question">Что делать, если вещи упали на рельсы?</h4>
        <p class="faq-answer">Если Ваши вещи упали на рельсы, следует незамедлительно обратиться к дежурной по станции или к сотруднику УВД на метрополитене.

          Ни в коем случае не пытайтесь достать их самостоятельно – вдоль края платформы проходит контактный рельс, на который подано напряжение 825В, приближение к нему, а тем более касание — опасно для жизни.</p>
      </li>
      <li>
        <h4 class="faq-question">Что делать при внезапной остановке эскалатора? </h4>
        <p class="faq-answer">При внезапной остановке эскалатора следует четко следовать указаниям дежурного у эскалатора. При кратковременной остановке эскалатора — стоять на месте, держась за поручни, при более длительной — подниматься или спускаться по ходу движения.</p>
      </li>
      <li>
        <h4 class="faq-question">Что делать, если в вагоне метро началась драка? </h4>
        <p class="faq-answer">Если происходит драка в вагоне, следует незамедлительно связаться с машинистом электропоезда по экстренной связи «Пассажир-Машинист» и сообщить ему о случившемся, обязательно указав номер вагона. В этом случае машинист вызовет наряд полиции к ближайшей станции.</p>
      </li>
    </ul>
  </div>
</div>
</body>
</html>
