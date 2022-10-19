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
</head>

</style>

<body>

<form action="login" method="post">
    <div class="col-md-4 col-md-offset-4" id="login">
        <section id="inner-wrapper" class="login">
            <article>
                <form>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"> </i></span>
                            <input type="text" class="form-control" name="username" placeholder="Name">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-key"> </i></span>
                            <input type="password" class="form-control" name="password" placeholder="Password">
                        </div>

                    </div>
                    <tr><td>&nbsp; </td> <td><input type="checkbox" name="remember"> Remember me?</td></tr>
                    <br>
                    <br>

                    <button type="submit" id="submitbtn" value="Login" class="btn btn-success btn-block">Login</button>
                </form>
            </article>
        </section></div>
</form>

<!-- Including resistration.js jQuery Script -->
<script src="js/resistration.js"></script>
</body>

</html>

