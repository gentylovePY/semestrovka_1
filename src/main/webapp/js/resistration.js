
$(document).ready(function () {
    $("#usercheck").hide();
    let usernameError = true;
    $("#username").keyup(function () {
        validateUsername();
    });

});

    function validateUsername() {
        let usernameValue = $("#username").val();
        if (usernameValue.length == "") {
            $("#usercheck").show();
            usernameError = false;
            return false;
        } else if (usernameValue.length < 3 || usernameValue.length > 20) {
            $("#usercheck").show();
            $("#usercheck").html("**error");
            usernameError = false;
            return false;
        } else {
            usernameError = true
            $("#usercheck").hide();
        }
    }
    const email = document.getElementById("email");
    email.addEventListener("blur", () => {
        let regex = /^([_\-\.0-9a-zA-Z]+)@([_\-\.0-9a-zA-Z]+)\.([a-zA-Z]){2,7}$/;
        let s = email.value;
        if (regex.test(s)) {
            email.classList.remove("is-invalid");
            emailError = true;
        } else {
            email.classList.add("is-invalid");
            emailError = false;
        }
    });


const phone = document.getElementById("phone");
phone.addEventListener("blur", () => {
    let regex = /(?:\+|\d)[\d\-\(\) ]{9,}\d/g;
    let s = phone.value;
    if (regex.test(s)) {
        phone.classList.remove("is-invalid");
        phoneError = true;
    } else {
        phone.classList.add("is-invalid");
        phoneError = false;
    }
});

    $("#passcheck").hide();
    let passwordError = true;
    $("#password").keyup(function () {
        validatePassword();
    });
    function validatePassword() {
        let passwordValue = $("#password").val();
        if (passwordValue.length == "") {
            $("#passcheck").show();
            passwordError = false;
            return false;
        }
        if (passwordValue.length < 3 || passwordValue.length > 10) {
            $("#passcheck").show();
            $("#passcheck").html(
                "**error"
            );
            $("#passcheck").css("color", "red");
            passwordError = false;
            return false;
        } else {
            passwordError = true
            $("#passcheck").hide();
        }
    }

   $("#conpasscheck").hide();
    let confirmPasswordError = true;
    $("#password2").keyup(function () {
        validateConfirmPassword();
    });
    function validateConfirmPassword() {
        let confirmPasswordValue = $("#password2").val();
        let passwordValue = $("#password").val();
        if (passwordValue != confirmPasswordValue) {
            $("#conpasscheck").show();
            $("#conpasscheck").html("**error");
            $("#conpasscheck").css("color", "red");
            confirmPasswordError = false;
            return false;
        } else {
            confirmPasswordError = true
            $("#conpasscheck").hide();
        }
    }


$("#submitbtn").click(function () {
    validateUsername();
    validatePassword();
    validateConfirmPassword();
    if (usernameError == true && passwordError == true && confirmPasswordError == true && phoneError == true) {
        return true;

    } else {
        return false;
    }
});
