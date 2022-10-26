$(document).ready(function () {
    $("#username").keyup(function () {
        var user =  $("#username").val()
        console.log(user)
        $.ajax({
            type: 'GET',
            url: "register",
            data: $("form").serialize(),
            success: function (result) {

                $("#ajax-div").text(result);
                console.log(typeof result)

                if (result.trim() == 'true') {
                    console.log(result,1)
                    document.getElementById("submitbtn").setAttribute("disabled", "disabled");
                }else{
                    console.log(result,2)
                    document.getElementById("submitbtn").removeAttribute("disabled");
                }
            },
            error: function (result) {
                console.log(result);
            }
        });
    });
});