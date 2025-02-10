<%@ Page Title="" Language="C#" MasterPageFile="~/web pages/Mater-Page.Master" AutoEventWireup="true" CodeBehind="tacticot.aspx.cs" Inherits="iron_swords.web_pages.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <link href="../style/boxes.css" rel="stylesheet" />
    <link href="../style/StyleSheet.css" rel="stylesheet" />
    <title>statics</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <table class="statics">
  <tr>       
  <th colspan="2" >stats about the site:</th>
  </tr>
  <tr >
    <td style="text-align:left">all-time</td>
    <td><%=Application["totalusers"] %></td>
  </tr>
  <tr >
    <td style="text-align:left">online</td>
    <td><%=Application["currentusers"] %></td>
  </tr>
</table>
   
</asp:Content>
