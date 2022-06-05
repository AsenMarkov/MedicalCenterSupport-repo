<%@ Page Title="" Language="C#" MasterPageFile="~/SIMP.Master" AutoEventWireup="true" CodeBehind="forgetPassword.aspx.cs" Inherits="website.forgetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            z-index: 101;
            left: 351px;
            position: absolute;
            top: 186px;
            width: 271px;
        }
        .auto-style3 {
            z-index: 101;
            left: 369px;
            position: absolute;
            top: 363px;
        }
        .auto-style4 {
            z-index: 102;
            left: 308px;
            position: absolute;
            top: 415px;
        }
        .auto-style5 {
            height: 30px;
        }
        .auto-style6 {
            z-index: 102;
            left: 308px;
            position: absolute;
            top: 415px;
            height: 42px;
        }
        .auto-style7 {
            height: 31px;
        }
        .auto-style8 {
            height: 32px;
        }
        .auto-style9 {
            height: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Забравена парола" Font-Names="Modern" Font-Size="24pt" ForeColor="Red" CssClass="auto-style2"></asp:Label>
    
   
    <table style="color: black; font-family: 'Lucida Console'; " class="auto-style5">

<tr>
    <td class="auto-style7">
        LoginID</td>
    <td class="auto-style3">
    <asp:TextBox ID="pntxt" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
    <td class="auto-style7">
        Password</td>
    <td class="auto-style3">
    <asp:TextBox ID="chastxt" runat="server" TextMode="Time" OnTextChanged="chastxt_TextChanged" ></asp:TextBox>
    </td>
</tr>
<tr>
<td class="auto-style8">
    Comfirm_Password</td>
    <td class="auto-style4">
    <asp:TextBox ID="sdtxt" runat="server" OnTextChanged="sdtxt_TextChanged"></asp:TextBox>
    </td>
    </tr>
        <tr>
      <td class="auto-style9">
    
    <td class="auto-style6">
        <asp:Button ID="Button1" runat="server" Text="Button" Width="96px" OnClick="Button1_Click" />
    </td>
    </tr>
        </table>
    </asp:Content>
