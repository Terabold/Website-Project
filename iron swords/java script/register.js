function validateLoginForm() {
    var res = true;
    res = userNameVal() && res;
    res = passwordVal() && res;
    res = password2Val() && res;
    res = NameVal() && res;
    res = LastNameVal() && res;
    res = PhoneNumber() && res;
    res = City() && res;
    res = EmailVal() && res;
    res = GenderVal() && res;
    res = Question1Val() && res;
    res = answer1() && res;
    res = Question2Val() && res;
    res = answer2() && res;
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

function password2Val() {
    var pass2 = document.getElementById("password2").value;
    var pass = document.getElementById("password").value;
    var msgBox = document.getElementById("pass2Msg");

    if (pass.length === 0) {
        msgBox.innerHTML = "Please confirm your password";
        return false;
    }

    if (pass2 !== pass) {
        msgBox.innerHTML = "Confirmation password does not match";
        return false;
    }
    msgBox.innerHTML = "";

    return true;
}

function NameVal() {
    var name = document.getElementById("Name").value;
    var msgBox = document.getElementById("NameMsg");

    if (name.length < 2) {
        msgBox.innerHTML = "Name must be at least 2 characters long";
        return false;
    }

    var isEnglish = /^[a-zA-Z\s]+$/;
    var isHebrew = /^[\u0590-\u05FF\s]+$/;

    if (isEnglish.test(name) || isHebrew.test(name)) {
        msgBox.innerHTML = "";
        return true;
    } else {
        msgBox.innerHTML = "Name must include either English or Hebrew characters";
        return false;
    }
}

function LastNameVal() {
    var lastName = document.getElementById("LastName").value;
    var msgBox = document.getElementById("LastNameMsg");

    if (lastName.length < 2) {
        msgBox.innerHTML = "Last name must be at least 2 characters long";
        return false;
    }

    var isEnglish = /^[a-zA-Z\s]+$/;
    var isHebrew = /^[\u0590-\u05FF\s]+$/;

    if (isEnglish.test(lastName) || isHebrew.test(lastName)) {
        msgBox.innerHTML = "";
        return true;
    } else {
        msgBox.innerHTML = "Last name must include either English or Hebrew characters";
        return false;
    }
}

function PhoneNumber() {
    var phoneNumber = document.getElementById("PhoneNumber").value;
    var msgBox = document.getElementById("PhoneNumberMsg");

    // Remove commas, parentheses, spaces, and hyphens from the phone number
    var cleanPhoneNumber = phoneNumber.replace(/\D/g, "");

    // Check the structure of the phone number
    var phoneRegex = /^(0\d{1,2}-\d{7})|(0\d{8,9})$/;

    if (phoneRegex.test(cleanPhoneNumber)) {
        msgBox.innerHTML = "";
        return true;
    } else {
        msgBox.innerHTML = "Please enter a valid phone number";
        return false;
    }
}

function City() {
    var city = document.getElementById("City").value;
    var msgBox = document.getElementById("CityMsg");

    if (city.length === 0) {
        msgBox.innerHTML = "Please enter your city";
        return false;
    }

    msgBox.innerHTML = "";
    return true;
}

function EmailVal() {
    var email = document.getElementById("email").value;
    var msgBox = document.getElementById("emailMsg");

    var emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\s*$/;

    if (!emailRegex.test(email)) {
        msgBox.innerHTML = "Please enter a valid email address";
        return false;
    }

    msgBox.innerHTML = "";
    return true;
}

function GenderVal() {
    var male = document.getElementById("male").checked;
    var female = document.getElementById("female").checked;
    var other = document.getElementById("other").checked;
    var msgBox = document.getElementById("genderMsg");

    if (!male && !female && !other) {
        msgBox.innerHTML = "Please choose a gender";
        return false;
    }

    msgBox.innerHTML = "";
    return true;
}

function Question1Val() {
    var selectedValue = document.getElementById("Question1").value;
    var msgBox = document.getElementById("select1Msg");

    if (selectedValue === "") {
        msgBox.innerHTML = "Please choose a security question";
        return false;
    }

    msgBox.innerHTML = "";
    return true;
}

function answer1() {
    var answer1 = document.getElementById("answer1").value;
    var msgBox = document.getElementById("answer1msg");

    if (answer1.length === 0) {
        msgBox.innerHTML = "Please answer the question";
        return false;
    }

    msgBox.innerHTML = "";
    return true;
}

function Question2Val() {
    var selectedValue = document.getElementById("Question2").value;
    var msgBox = document.getElementById("select2Msg");

    if (selectedValue === "") {
        msgBox.innerHTML = "Please choose a security question";
        return false;
    }

    msgBox.innerHTML = "";
    return true;
}

function answer2() {
    var answer2 = document.getElementById("answer2").value;
    var msgBox = document.getElementById("answer2msg");

    if (answer2.length === 0) {
        msgBox.innerHTML = "Please answer the question";
        return false;
    }

    msgBox.innerHTML = "";
    return true;
}
