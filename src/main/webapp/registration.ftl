<!DOCTYPE html>
<html lang="EN">

<head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/registrationAndLogin.css">
    <script>
        $(document).ready(function () {

            $("#username").keyup(function () {
                $.get("ajax", function (response) {
                    $("#ajax-div").text(response);
                })
            });

        });

    </script>
</head>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">

</head>

</style>

<body>

<form action="register" method="post">
<div class="col-md-4 col-md-offset-4" id="login">
    <section id="inner-wrapper" class="login">
        <article>
            <form>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-user"> </i></span>
                        <input type="text" class="form-control" name="username" id="username" placeholder="Name">

                    </div>
                    <div id="ajax-div">
                    </div>
                    <h5 id="usercheck" style="color: red;">
                        **Username is missing
                    </h5>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-envelope"> </i></span>
                        <input type="email" id="email" class="form-control" name="email" placeholder="Email Address">
                    </div>
                </div>


                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-phone"> </i></span>
                        <input type="text" class="form-control" name="phone" id="phone" placeholder="Phone">

                    </div>
                </div>


                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-key"> </i></span>
                        <input type="password" id="password" class="form-control" name="password" placeholder="Password">
                    </div>
                    <h5 id="passcheck" style="color: red;" size="smaller">
                        **Please Fill the password
                    </h5>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-key"> </i></span>
                        <input type="password" id="password2" class="form-control" placeholder="Confirm Password">
                    </div>
                    <h5 id="conpasscheck" style="color: red;" size="smaller">
                        **Password didn't match
                    </h5>
                </div>
                <button type="submit" id="submitbtn" value="register" class="btn btn-success btn-block">Register</button>
            </form>
        </article>
    </section></div>
</form>

<!-- Including resistration.js jQuery Script -->
<script src="js/resistration.js"></script>
</body>

</html>

