<!DOCTYPE html>
<html lang="EN">

<head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/registrationAndLogin.css">
</head>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@ page contentType="text/html; charset=UTF-8"
    %>
</head>
</style>
<body>

<form action="BuyTicketServlet" method="post">
    <div class="col-md-4 col-md-offset-4" id="login">
        <section id="inner-wrapper" class="login">
            <article>
                <form>
                    <div class="form-group">
                        <div class="input-group">
                            <h3>Автобус</h3>
                            <select name="bus" class="form-control" id="bus">

                                <option value="" class="form-control">-- Выберите автобус --</option>
                                <option value="1" class="form-control">1</option>
                                <option value="4" class="form-control" >4</option>
                                <option value="67" class="form-control" >67</option>
                                <option value="23" class="form-control" >23</option>
                                <option value="12" class="form-control" >12</option>
                                <option value="87" class="form-control" >87</option>

                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <h3>Город отправления</h3>
                            <select name="startCity" class="form-control" id="startCity">

                                <option value="" class="form-control">-- Выберите город отправления --</option>
                                <option value="Питер" class="form-control">Питер</option>
                                <option value="Москва" class="form-control" >Москва</option>
                                <option value="Казань" class="form-control" >Казань</option>
                                <option value="Пермь" class="form-control" >Пермь</option>
                                <option value="Ижевск" class="form-control" >Ижевск</option>
                                <option value="Екатеренбур" class="form-control" >Екатеренбур</option>

                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="input-group">
                            <h3>Город Назначения</h3>
                       <select name="endCity" class="form-control" id="endCity">

                                <option value="" class="form-control">-- Выберите город назначения --</option>
                                <option value="Питер" class="form-control">Питер</option>
                                <option value="Москва" class="form-control" >Москва</option>
                                <option value="Казань" class="form-control" >Казань</option>
                                <option value="Пермь" class="form-control" >Пермь</option>
                                <option value="Ижевск" class="form-control" >Ижевск</option>
                                <option value="Екатеренбур" class="form-control" >Екатеренбур</option>

                            </select>
                        </div>
                    </div>

                    <br>

                    <button type="submit"  id="submitbtn" value="Login" class="btn">Login</button>
                </form>
            </article>
        </section></div>
</form>

<!-- Including resistration.js jQuery Script -->
<script src="js/resistration.js"></script>
</body>

</html>

