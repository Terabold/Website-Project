function validateLoginForm() {

    var res = true;
    res = userNameVal() && res;
    res = passwordVal() && res;
    return res;

}

function isDigit(ch) {
    return (ch >= "0" && ch <= "9");
}

function isLetter(ch) {
    return ((ch >= "a" && ch <= "z") || (ch >= "A" && ch <= "Z"));
}

function userNameVal() {
    var userName = document.getElementById("userName").value;
    var msgBox = document.getElementById("userNameMsg");

    if (userName.length === 0) {
        msgBox.innerHTML = "Please enter a username";
        return false;
    }

    if (!isLetter(userName[0])) {
        msgBox.innerHTML = "Username must start with a letter";
        return false;
    }

    var noSpace = /^\S*$/;
    if (!noSpace.test(userName)) {
        msgBox.innerHTML = "Username cannot contain spaces";
        return false;
    }

    var EnglishNumbersSpecial = /^[a-zA-Z0-9!@#$%^&*()-_=+.\s]*$/;
    if (!EnglishNumbersSpecial.test(userName)) {
        msgBox.innerHTML = "Username must contain only English, numbers, and special characters";
        return false;
    }

    if (userName.length < 3) {
        msgBox.innerHTML = "Username must be at least 3 characters long";
        return false;
    }

    msgBox.innerHTML = "";
    return true;
}

function passwordVal() {
    var pass = document.getElementById("password").value;
    var msgBox = document.getElementById("passMsg");

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
