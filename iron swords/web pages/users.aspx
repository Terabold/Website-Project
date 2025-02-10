<%@ Page Title="" Language="C#" MasterPageFile="~/web pages/Mater-Page.Master" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="iron_swords.web_pages.users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../style/table.css" rel="stylesheet" />
    <link href="../style/StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
    <br />
    <div>
        enter text to search name:
        <input type="text" name="filter" id="filter" />
        <input type="button" value="Filter" name="btnFilter" id="btnFilter" runat="server" onserverclick="Click_Filter" />
        <br />
        <br />
    </div>
    <lable for="columns">Sort by column:</lable>&nbsp&nbsp
    <select id="columns" runat="server">
        <option value="UserId">userId</option>
        <option value="firstName">firstname</option>
        <option value="lastName">lastname</option>
        <option value="username">username</option>
        <option value="admin">admin</option>
        <option value="birthdate">birthday</option>
        <option value="city">city</option>
    </select> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <input type="radio" id="ASC" name="order" value="ASC" checked />
    <lable for="ASC">ASC</lable>&nbsp&nbsp
    <input type="radio" id="DESC" name="order" value="DESC" checked />
    <lable for="DESC">DESC</lable>&nbsp&nbsp
    <input type="button" value="Sort" name="btnSort" id="btnSort" runat="server" onserverclick="Click_Sort" /><br />
    <input type="button" value="Delete Marked Users" name="BtnDelete" id="ButtonDelete" runat="server" onserverclick="Delete"/>
    <input type="button" value="Edit Users" name="BtnEdit" id="Buttonedit" runat="server" onserverclick="edit"/>
    <br /><br />
    <div runat="server" id="message" name="message" ></div>
</div>
    <div id="tablediv" runat="server" class="tablediv">
    </div>
</asp:Content>
