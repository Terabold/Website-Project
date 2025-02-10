<%@ Page Title="" Language="C#" MasterPageFile="~/web pages/Mater-Page.Master" AutoEventWireup="true" CodeBehind="Login form.aspx.cs" Inherits="iron_swords.web_pages.Login_form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <title>Login</title>
    <link href="../style/login.css" rel="stylesheet" />
    <script src="../java%20script/log.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container">
    <div>
        <h1>Login</h1>
         <h2 class="align" name="welcomevisitor" id="welcomevisitor" runat="server">
      </h2>
         <div class="input-box">
     <label>Username</label>
     <div class="errorMsg" id="userNameMsg" name="userNameMsg"></div>
     <input placeholder="Enter Username" type="text" id="userName" name="userName" value="">
 </div>
 <div class="input-box">                
     <div class="link-space">
    <label>Password</label>
    <a class="refer" href="Reset password.aspx">Forgot Password?</a>
</div>                 
     <div class="errorMsg" id="passMsg" name="passMsg"></div>
     <input placeholder="Enter Password" type="password" id="password" name="password" value="">
 </div>
            <div class="check">
                <label><input type="checkbox" /> Remember me</label>
            </div>
            <div class="button-group">
                <input type="submit" name="login" id="login" value="submit" onclick="return validateLoginForm()" runat="server"/>
                <input type="reset" value="Clear" runat="server"/>
            </div>

            <div>
                <p>if you don't have an account? <a class="refer" href="Register.aspx">Register here!</a></p>
            </div>
         <br />
            <div class="back">
                <a style="text-decoration: none; color: black;" href="HomePage.aspx">back to home</a>
            </div>
     
    </div>
</div>
</asp:Content>
