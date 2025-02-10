
function newpasswordVal() {
    var pass = document.getElementById("newpass").value;
    var msgBox = document.getElementById("newpassmsg");

    if (pass.length === 0) {
        msgBox.innerHTML = "Please enter a password";
        return false;
    }

    if (pass.length < 6 || pass.length > 12) {
        msgBox.innerHTML = "Password must be between 6-12 characters";
        return false;
    }

    var EnglishNumbersSpecial = /^[a-zA-Z0-9!@#$%^&*()-_=+.\s]*$/;
    if (!EnglishNumbersSpecial.test(pass)) {
        msgBox.innerHTML = "Password must contain only English, numbers, and special characters";
        return false;
    }

    var atLeastOneUppercase = /^(?=.*[A-Z])/;
    if (!atLeastOneUppercase.test(pass)) {
        msgBox.innerHTML = "Password must contain at least one uppercase letter";
        return false;
    }

    var atLeastOneSpecialChar = /[!@#$%^&*()\-_=+.]/;
    if (!atLeastOneSpecialChar.test(pass)) {
        msgBox.innerHTML = "Password must contain at least one special character";
        return false;
    }

    var atLeastOneNumber = /\d/;
    if (!atLeastOneNumber.test(pass)) {
        msgBox.innerHTML = "Password must contain at least one number";
        return false;
    }

    var hasConsecutiveIdenticals = /(.)\1\1/;
    if (hasConsecutiveIdenticals.test(pass)) {
        msgBox.innerHTML = "Password cannot contain three consecutive identical characters";
        return false;
    }

    msgBox.innerHTML = "";
    return true;
}


