<%@ Page Title="" Language="C#" MasterPageFile="~/web pages/Mater-Page.Master" AutoEventWireup="true" CodeBehind="editusers.aspx.cs" Inherits="iron_swords.web_pages.editusers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
<title>Register</title>
<link href="../style/login.css" rel="stylesheet" />
<script src="../java%20script/register.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-register">
        <div class="main-box register">
            <h1>Edit</h1>
            <br />
            <div class="flex">
                <div class="flex-left">
                    <div class="input-box">
                        <label>Username</label>
                        <div class="errorMsg" id="userNameMsg" name="userNameMsg"></div>
                        <input placeholder="Enter Username" type="text" id="userName" name="userName" value="" runat="server" />
                    </div>
                    <div class="input-box">
                        <label>Password</label>
                        <div class="errorMsg" id="passMsg" name="passMsg"></div>
                        <input placeholder="Enter Password" type="text" id="password" name="password" value="" runat="server" />
                    </div>
                    <div class="input-box">
                        <label>Re-Password</label>
                        <div class="errorMsg" id="pass2Msg" name="pass2Msg"></div>
                        <input placeholder="Confirm Password" type="text" id="password2" name="password2" value="" runat="server" />
                    </div>
                    <div class="input-box">
                        <label>Name</label>
                        <div class="errorMsg" id="NameMsg" name="NameMsg"></div>
                        <input placeholder="Enter name" type="text" id="Name" name="Name" value="" runat="server" />
                    </div>
                    <div class="input-box">
                        <label>Last Name</label>
                        <div class="errorMsg" id="LastNameMsg" name="LastNameMsg"></div>
                        <input placeholder="Enter Last Name" type="text" id="LastName" name="LastName" value="" runat="server" />
                    </div>
                    <div class="input-box">
                        <label>Phone Number</label>
                        <div class="errorMsg" id="PhoneNumberMsg" name="PhoneNumberMsg"></div>
                        <input placeholder="Enter Phone number" type="text" id="PhoneNumber" name="PhoneNumber" value="" runat="server" />
                    </div>
                    <div class="input-box">
                        <label>Admin</label>
                        <div class="errorMsg" id="adminmsg" name="adminmsg"></div>
                        <input list="admin" id="admin2" name="admin2" runat="server" />
                        <datalist id="admin">
                            <option name="admin" value="True">True</option>
                            <option name="admin" value="False">False</option>
                        </datalist>
                    </div>
                </div>
                <div class="flex-right">
                    <div class="input-box">
                        <label>City</label>
                        <div class="errorMsg" id="CityMsg" name="CityMsg"></div>
                        <input placeholder="Enter City" type="text" id="City" name="City" value="" runat="server" />
                    </div>
                    <div class="input-box">
                        <label>Email</label>
                        <div class="errorMsg" id="emailMsg" name="emailMsg"></div>
                        <input placeholder="Enter Email" type="text" id="email" name="email" value="" runat="server" />
                    </div>
                    <br />
                    <div class="align">
                        <h2>Select gender</h2>
                        <input list="gender" id="gender2" name="gender2" runat="server" />
                        <datalist id="gender">
                            <option name="gender" value="male">male</option>
                            <option name="gender" value="female">female</option>
                            <option name="gender" value="other">other</option>
                        </datalist>
                    </div>
                    <br />
                    <div class="input-box">
                        <label class="align" for="Question1">Select another security question:</label>
                        <div class="errorMsg" id="select1Msg" name="select1Msg"></div>
                        <input list="Question1" id="q1" name="q1" runat="server" />
                        <datalist id="Question1">
                            <option name="Question1" value="What is the name of your first pet?">What is the name of your first pet?</option>
                            <option name="Question1" value="What city were you born in?">What city were you born in?</option>
                            <option name="Question1" value="What is your favorite book/movie/band?">What is your favorite book/movie/band?</option>
                            <option name="Question1" value="What is your favorite vacation destination?">What is your favorite vacation destination?</option>
                            <option name="Question1" value="What is the name of your childhood best friend?">What is the name of your childhood best friend?</option>
                            <option name="Question1" value="What is your mother's birthplace?">What is your mother's birthplace?</option>
                            <option name="Question1" value="What is the name of your favorite teacher?">What is the name of your favorite teacher?</option>
                            <option name="Question1" value="What is your favorite food?">What is your favorite food?</option>
                        </datalist>
                        <div class="errorMsg" id="answer1msg" name="answer1msg"></div>
                        <input type="text" name="answer1" id="answer1" placeholder="Answer" runat="server" />
                    </div>
                    <div class="input-box">
                        <label class="align" for="Question2">Select another security question:</label>
                        <div class="errorMsg" id="select2Msg" name="select2Msg"></div>
                        <input list="Question2" id="q2" name="q2" runat="server" />
                        <datalist id="Question2">
                            <option name="Question2" value="What is the name of your first pet?">What is the name of your first pet?</option>
                            <option name="Question2" value="What city were you born in?">What city were you born in?</option>
                            <option name="Question2" value="What is your favorite book/movie/band?">What is your favorite book/movie/band?</option>
                            <option name="Question2" value="What is your favorite vacation destination?">What is your favorite vacation destination?</option>
                            <option name="Question2" value="What is the name of your childhood best friend?">What is the name of your childhood best friend?</option>
                            <option name="Question2" value="What is your mother's birthplace?">What is your mother's birthplace?</option>
                            <option name="Question2" value="What is the name of your favorite teacher?">What is the name of your favorite teacher?</option>
                            <option name="Question2" value="What is your favorite food?">What is your favorite food?</option>
                        </datalist>
                        <div class="errorMsg" id="answer2msg" name="answer2msg"></div>
                        <input type="text" name="answer2" id="answer2" placeholder="Answer" runat="server" />
                    </div>
                    <div class="input-box">
                        <label for="birthday">Birthday:</label>
                        <input style="display: block;" type="date" id="birthday" name="birthday" runat="server" min="1920-01-01" value="yyyy-MM-dd">
                    </div>
                </div>
                <br />
            </div>
            <div class="button-group">
                <input type="button" name="update" value="update" runat="server" onserverclick="updateUser"/>
                <input type="reset" value="Reset">
            </div>
            <br />
            <br />
            <div class="back">
                <a style="text-decoration: none; color: black;" href="users.aspx">back to usertable</a>
            </div>
        </div>
    </div>
  <br />    <br />
  <br />
  <br />
    <div runat="server" id="message" name="message"></div>
</asp:Content>
