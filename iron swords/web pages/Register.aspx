<%@ Page Title="" Language="C#" MasterPageFile="~/web pages/Mater-Page.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="iron_swords.web_pages.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <title>Register</title>
    <link href="../style/login.css" rel="stylesheet" />
    <script src="../java%20script/register.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-register">     
        <div class="main-box register">
            <h1>Register</h1>
            <br />
            <div runat="server" id="massege" name="message"></div>
            <div class="flex">
                <div class="flex-left">
                    <div class="input-box">
                        <label>Username</label>
                        <div class="errorMsg" id="userNameMsg" name="userNameMsg"></div>
                        <input placeholder="Enter Username" type="text" id="userName" name="userName" value="" />
                    </div>
                    <div class="input-box">                
                        <label>Password</label>
                        <div class="errorMsg" id="passMsg" name="passMsg"></div>
                        <input placeholder="Enter Password" type="password" id="password" name="password" value="" />
                    </div>
                    <div class="input-box">
                        <label>Re-Password</label>
                        <div class="errorMsg" id="pass2Msg" name="pass2Msg"></div>
                        <input placeholder="Confirm Password" type="password" id="password2" name="password2" value="" />
                    </div>              
                    <div class="input-box">
                        <label>Name</label>
                        <div class="errorMsg" id="NameMsg" name="NameMsg"></div>
                        <input placeholder="Enter name" type="text" id="Name" name="Name" value="" />
                    </div>
                    <div class="input-box">
                        <label>Last Name</label>
                        <div class="errorMsg" id="LastNameMsg" name="LastNameMsg"></div>
                        <input placeholder="Enter Last Name" type="text" id="LastName" name="LastName" value="" />
                    </div>  
                    <div class="input-box">
                        <label>Phone Number</label>
                        <div class="errorMsg" id="PhoneNumberMsg" name="PhoneNumberMsg"></div>
                        <input placeholder="Enter Phone number" type="text" id="PhoneNumber" name="PhoneNumber" value="" />
                    </div>
                </div>
                <div class="flex-right">                   
                    <div class="input-box">
                        <label>City</label>
                        <div class="errorMsg" id="CityMsg" name="CityMsg"></div>
                        <input placeholder="Enter City" type="text" id="City" name="City" value="" />
                    </div>
                    <div class="input-box">
                        <label>Email</label>
                        <div class="errorMsg" id="emailMsg" name="emailMsg"></div>
                        <input placeholder="Enter Email" type="text" id="email" name="email" value="" />
                    </div>
                    <br />
                    <div class="align">
                        <h2>Select gender</h2>
                        <div class="errorMsg" id="genderMsg" name="genderMsg"></div>
                        <input type="radio" id="male" name="gender" value="male" />
                        <label for="male">male</label>
                        <input type="radio" id="female" name="gender" value="female" />
                        <label for="male">female</label>
                        <input type="radio" id="other" name="gender" value="other" />
                        <label for="male">other</label>
                    </div>
                    <br />
                    <div class="input-box">
                        <label class="align" for="Question1">Select a security question:</label>
                        <div class="errorMsg" id="select1Msg" name="select1Msg"></div>
                        <select id="Question1" name="Question1" >
                            <option value="" selected="selected"></option>
                            <option >What is the name of your first pet?</option>
                            <option>What city were you born in?</option>
                            <option>What is your favorite book/movie/band?</option>
                            <option>What is your favorite vacation destination?</option>
                            <option>What is the name of your childhood best friend?</option>
                            <option>What is your mother's birthplace?</option>
                            <option>What is the name of your favorite teacher?</option>
                            <option>What is your favorite food?</option>
                        </select>
                        <div class="errorMsg" id="answer1msg" name="answer1msg"></div>
                        <input type="text" name="answer1" id="answer1" placeholder="Answer" />
                    </div>
                    <div class="input-box">
                        <label class="align" for="Question2">Select another security question:</label>
                        <div class="errorMsg" id="select2Msg" name="select2Msg"></div>
                        <select id="Question2" name="Question2">
                            <option value="" selected="selected"></option>
                            <option>What is the name of your first pet?</option>
                            <option>What city were you born in?</option>
                            <option>What is your favorite book/movie/band?</option>
                            <option>What is your favorite vacation destination?</option>
                            <option>What is the name of your childhood best friend?</option>
                            <option>What is your mother's birthplace?</option>
                            <option>What is the name of your favorite teacher?</option>
                            <option>What is your favorite food?</option>
                        </select>  
                        <div class="errorMsg" id="answer2msg" name="answer2msg"></div>
                        <input type="text"  name="answer2" id="answer2" placeholder="Answer" />
                    </div>
                    <div class="input-box">
                        <label for="birthday">Birthday:</label>
                        <div class="errorMsg" id="birthdaymsg" name="birthdaymsg"></div>
                        <input style="display: block;" type="date" id="birthday" name="birthday" runat="server" min="1920-01-01" required>
                    </div>                  
                </div>
                <br />
            </div>
            <div class="button-group">
                <input type="submit" name="register" value="submit" onclick="return validateLoginForm()" />
                <input type="reset" value="Reset">
            </div>
            <br />
            <div>
                <p>Already have an account?<a class="refer" href="Login form.aspx">Login</a></p>
            </div>
            <br />
            <div class="back">
                <a style="text-decoration: none; color: black;" href="HomePage.aspx">back to home</a>
            </div>
        </div>
    </div>
    <br />    <br />
    <br />
    <br />

</asp:Content>
