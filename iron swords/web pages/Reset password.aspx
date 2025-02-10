<%@ Page Title="" Language="C#" MasterPageFile="~/web pages/Mater-Page.Master" AutoEventWireup="true" CodeBehind="Reset password.aspx.cs" Inherits="iron_swords.web_pages.Reset_password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <title>Reset Password</title>
    <link href="../style/login.css" rel="stylesheet" />
    <script src="../java%20script/reset.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
         <div>
            <h1>Reset Password</h1>
                         <div runat="server" id="message" name="message" ></div>
              <div class="input-box">
                <label>Username</label>
                <div class="errorMsg" id="userNameMsg" name="userNameMsg"></div>
                <input placeholder="Enter Username" type="text" id="userName" name="userName" value="" />
              </div>         
              <div class="input-box">
                <label>New Password</label>
                <div class="errorMsg" id="newpassmsg" name="newpassmsg"></div>
                <input placeholder="Enter Username" type="password" id="newpass" name="newpass" value="" />
              </div>        
            <div class="input-box">
                <label class="align" for="Question1">Select a security question:</label>
                <div class="errorMsg" id="select1Msg" name="select1Msg"></div>
                <select id="Question1" name="Question1" runat="server">
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
                <div class="errorMsg" id="answer1msg" name="answer1msg"></div>
                <input type="text" id="answer1" name="answer1" placeholder="Answer" />
            </div>
            <div class="input-box">
                <label class="align" for="Question1">Select a security question:</label>
                <div class="errorMsg" id="select2Msg" name="select2Msg"></div>
                <select id="Question2" name="Question2" runat="server">
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
                <input type="text" id="answer2" name="answer2" placeholder="Answer" />
            </div>
                <div class="button-group">
                    <input type="submit" runat="server"  name="submit" value="change" onclick="return newpasswordVal()"/>
                    <input type="reset" value="Clear">
                </div>
            <br />
                <div class="back">
                    <a style=" text-decoration: none; color: black;" href="Login form.aspx">back to login</a>
                </div>
             </div>
    </div>
</asp:Content>
