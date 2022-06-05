<%@ Page Title="" Language="C#" MasterPageFile="~/SIMP.Master" AutoEventWireup="true" CodeBehind="LZ.aspx.cs" Inherits="website.LZ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 26px;
            width: 157px;
        }
        .auto-style3 {
            width: 157px;
        }
        .auto-style4 {
            z-index: 101;
            left: 477px;
            position: absolute;
            top: 537px;
        }
    .auto-style5 {
        z-index: 101;
        left: 235px;
        position: absolute;
        top: 233px;
    }
        .auto-style6 {
            width: 88px;
        }
        .auto-style7 {
            z-index: 100;
            left: 346px;
            position: absolute;
            top: 187px;
            width: 401px;
        }
        .auto-style10 {
            z-index: 102;
            left: 241px;
            position: absolute;
            top: 548px;
        height: 16px;
        font-family: 'Times New Roman';
        font-size: 18px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Names="Ariel" Font-Size="24pt" ForeColor="Red" Text="Регистрация на лекари" CssClass="auto-style7"></asp:Label>
    <table style="color: black; font-family: 'Lucida Console';" class="auto-style5">
    <tr><td style="height: 26px">Име</td><td style="height: 26px; width: 156px;"><asp:TextBox ID="nametxt" runat="server"></asp:TextBox></td><td class="auto-style2">
       </td></tr>
        <tr><td style="height: 26px">Фамилия</td><td style="height: 26px; width: 156px;"><asp:TextBox ID="famtxt" runat="server"></asp:TextBox></td><td class="auto-style2">
        
         <tr><td style="height: 26px">УИН</td><td style="height: 26px; width: 156px;"><asp:TextBox ID="txtuin" runat="server"></asp:TextBox></td><td class="auto-style2">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter UIN"
            Style="position: relative" ControlToValidate="nametxt">*</asp:RequiredFieldValidator></td></tr>
    <tr><td>DoctorId</td><td style="width: 156px"><asp:TextBox ID="lidtxt" runat="server"></asp:TextBox></td><td class="auto-style3">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Login Id"
            Style="position: relative" ControlToValidate="lidtxt">*</asp:RequiredFieldValidator></td></tr>
   
    <tr><td>Password</td><td style="width: 156px"><asp:TextBox ID="pwdtxt" runat="server" TextMode="Password" ></asp:TextBox></td><td class="auto-style3">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="pwdtxt"
            ErrorMessage="Enter Password" Style="position: relative">*</asp:RequiredFieldValidator></td></tr>
    <tr><td>Confirm Password</td><td style="width: 156px"><asp:TextBox ID="conpwdtxt" runat="server" TextMode="Password"></asp:TextBox></td><td class="auto-style3">
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pwdtxt"
            ControlToValidate="conpwdtxt" ErrorMessage="Not Matching" Style="position: relative">*</asp:CompareValidator></td></tr>
    <tr><td>Код на специаизация</td><td style="width: 156px">
        <asp:TextBox ID="txtspec" runat="server"></asp:TextBox>
        <tr><td>Име на специалност:</td><td style="width: 156px">
        <asp:TextBox ID="txtspec1" runat="server"></asp:TextBox></td></tr>
    <tr><td>Телефон</td><td style="width: 156px"><asp:TextBox ID="phtxt" runat="server"></asp:TextBox></td><td class="auto-style3"></td></tr>
    <tr><td>E-Mail</td><td style="width: 156px"><asp:TextBox ID="emtxt" runat="server"></asp:TextBox></td><td class="auto-style3">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emtxt"
            ErrorMessage="Incorrect Format" Style="position: relative" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator></td></tr>
    </table>
    <table style="font-weight: bold; color: #ffffff; font-family: 'Lucida Console';" class="auto-style4">
    <tr><td class="auto-style6">
        <asp:Button ID="subbtn" runat="server" Text="Submit" Width="94px" OnClick="subbtn_Click" /></td>
        <td style="width: 93px">
        <asp:Button ID="Resbtn" runat="server" Text="Reset" Width="94px" OnClick="Resbtn_Click" /></td>
     <td style="width: 93px">
        <asp:Button ID="canbtn" runat="server" Text="Back" Width="94px" OnClick="canbtn_Click" /></td></tr>
    </table>
    <asp:Label ID="pwdlb" runat="server" style="color:black; " CssClass="auto-style10"></asp:Label>
</asp:Content>
