<%@ Page Title="" Language="C#" MasterPageFile="~/SIMP.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="website.Contacts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 17px;
        }
        .auto-style2 {
            z-index: 103;
            left: 245px;
            position: absolute;
            top: 340px;
        }
        .auto-style3 {
            z-index: 100;
            left: 577px;
            position: absolute;
            top: 288px;
            width: 275px;
            height: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
    <table style="color: black; font-family: 'Lucida Console'; background-color: #FF0000;" class="auto-style2">
<tr><td>
    <strong>За контакти</strong></td></tr>
<tr><td class="auto-style1">
    <span style="font-size: 10pt">ул. "Васил Левски" №53</span></td></tr>
<tr><td>
    <span style="font-size: 10pt">Телефон: 02/954710 </span></td></tr>
<tr><td>
    <span style="font-size: 10pt">Факс: 02/9508642</span></td></tr>


</table>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/phone.png" CssClass="auto-style3" />
</asp:Content>
