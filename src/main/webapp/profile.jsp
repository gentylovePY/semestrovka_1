<%@ page import="java.util.Objects" %>
<!DOCTYPE html>
<html lang="EN">

<head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/profile.css">


</head>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@ page contentType="text/html; charset=UTF-8"
    %>


</head>

</style>

<body>

<form action="profile" method="post">
    <div class="container-xl px-4 mt-4">
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
        <!-- Account page navigation-->

        <div class="row">
            <div class="col-xl-4">
                <!-- Profile picture card-->
                <div class="card mb-4 mb-xl-0">
                    <div class="card-header">Profile Picture</div>
                    <div class="card-body text-center">
                        <!-- Profile picture image-->
                        <img class="img-account-profile rounded-circle mb-2" src="http://bootdey.com/img/Content/avatar/avatar1.png" alt="">
                        <!-- Profile picture help block-->
                        <div class="small font-italic text-muted mb-4">JPG or PNG no larger than 5 MB</div>

                    </div>
                </div>
            </div>
            <div class="col-xl-8">
                <!-- Account details card-->
                <div class="card mb-4">
                    <div class="card-header">Account Details</div>
                    <div class="card-body">
                        <form>
                            <!-- Form Group (username)-->
                            <div class="mb-3">
                                <label class="small mb-1" for="inputUsername">Username (how your name will appear to other users on the site)</label>
                                <input class="form-control" name="username" id="inputUsername" type="text" placeholder="Enter your username" value="${name}" readonly>
                            </div>
                            <!-- Form Row-->
                            <div class="row gx-3 mb-3">
                                <!-- Form Group (first name)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputFirstName">First name</label>
                                    <input class="form-control" id="inputFirstName" name="fName" type="text" placeholder="Enter your first name" value="${fname}">
                                </div>
                                <!-- Form Group (last name)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputLastName">Last name</label>
                                    <input class="form-control" id="inputLastName" name="lName" type="text" placeholder="Enter your last name" value="${lname}" >
                                </div>
                            </div>
                            <!-- Form Row        -->
                            <div class="row gx-3 mb-3">
                                <!-- Form Group (organization name)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputOrgName">City</label>



                                    <select name="city" class="form-control" id="inputOrgName">
                                        <%
                                            String city = (String) request.getAttribute("city");

                                            System.out.println(city);

                                            if (Objects.equals(city, "")){
                                        %>

                                        <option value="" class="form-control">-- Выберите город --</option>
                                        <option value="petersburg" class="form-control">petersburg</option>
                                        <option value="samara" class="form-control" >samara</option>
                                        <option value="perm" class="form-control" >perm</option>
                                        <option value="novosibirsk" class="form-control" >novosibirsk</option>

                                        <%
                                        }else {
                                        %>
                                        <option value="" class="form-control">${city}</option>
                                        <option value="petersburg" class="form-control">petersburg</option>
                                        <option value="samara" class="form-control" >samara</option>
                                        <option value="perm" class="form-control" >perm</option>
                                        <option value="novosibirsk" class="form-control" >novosibirsk</option>
                                        <%}%>
                                    </select>

                                </div>

                                <!-- Form Group (location)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" >Gender</label>
                                    <br>
                                    <form>
                                        <%
                                            String ch = (String) request.getAttribute("gender");
                                            if (Objects.equals(ch, "t")){
                                        %>

                                        <input type="checkbox" id="myCheckBox" checked="yes" name="field1">
                                        <label >Boy</label>

                                        <input type="checkbox" name="field2">
                                        <label >Girl</label>
                                        <%}else {%>
                                        <input type="checkbox" id="myCheckBox"  name="field1">
                                        <label >Boy</label>

                                        <input type="checkbox" checked="yes" name="field2">
                                        <label >Girl</label>
                                        <%}%>

                                    </form>

                                </div>
                            </div>
                            <!-- Form Group (email address)-->
                            <div class="mb-3">
                                <label class="small mb-1" for="inputEmailAddress">Email address</label>
                                <input class="form-control" id="inputEmailAddress" name="email" type="email" placeholder="Enter your email address" value="${email}">
                            </div>
                            <!-- Form Row-->
                            <div class="row gx-3 mb-3">
                                <!-- Form Group (phone number)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputPhone">Phone number</label>
                                    <input class="form-control" name="phone" id="inputPhone" type="tel" placeholder="Enter your phone number" value="${phone}">
                                </div>
                                <!-- Form Group (birthday)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputBirthday">Birthday</label>
                                    <input class="form-control" dirname="birthday" id="inputBirthday" type="text" name="birthday" value="${btrh}" placeholder="Enter your birthday" >
                                </div>
                            </div>
                            <!-- Save changes button-->
                            <button class="btn btn-primary" type="submit">Save changes</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>

<script src="js/profileGenderValidate.js"></script>
</body>

</html>

