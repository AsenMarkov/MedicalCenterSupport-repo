<%@ Page Title="" Language="C#" MasterPageFile="~/SIMP.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="website.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            width: 135px;
            height: 6px;
        }
        .auto-style2 {
            width: 100px;
            height: 6px;
        }
         .auto-style3 {
             z-index: 102;
             left: 238px;
             position: absolute;
             top: 245px;
         }
         .auto-style4 {
             z-index: 100;
             left: 204px;
             position: absolute;
             top: 2px;
             width: 101px;
         }
         .auto-style5 {
             z-index: 103;
             left: 500px;
             position: absolute;
             top: 504px;
             width: 307px;
         }
         .auto-style6 {
             z-index: 100;
             left: 6px;
             position: absolute;
             top: 3px;
             width: 89px;
             height: 21px;
             margin-top: 0px;
         }
         .auto-style7 {
             z-index: 100;
             left: 337px;
             position: absolute;
             top: 180px;
             width: 374px;
         }
         .auto-style10 {
            z-index: 102;
            left: 8px;
            position: absolute;
            top: 263px;
        height: 16px;
        font-family: 'Times New Roman';
        font-size: 18px;
    }
         .auto-style11 {
             width: 100px;
         }
         .auto-style12 {
             width: 135px;
             height: 40px;
         }
         .auto-style13 {
             width: 100px;
             height: 40px;
         }
         .auto-style14 {
             width: 89px;
         }
         .auto-style15 {
             width: 89px;
             height: 6px;
         }
         .auto-style16 {
             height: 26px;
             width: 89px;
         }
         .auto-style17 {
             width: 89px;
             height: 40px;
         }
    </style>
</asp:Content>
<script runat="server">
</script>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <asp:Label ID="Label1" runat="server" Font-Names="Ariel" Font-Size="24pt" ForeColor="Red" Text="Регистрация на пациенти" CssClass="auto-style7"></asp:Label>
        <table style="font-family: 'Lucida Console'; " class="auto-style3">
        <tr>
            <td style="width: 135px">
                <span style="color: black; font-family: Lucida Console">Име:</span></td>
            <td class="auto-style14">
                <asp:TextBox ID="txtime" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                Гражданство:</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtgrajd" runat="server" Enabled="true"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 135px">
                <span style="font-size: 11pt; color: black; font-family: Lucida Console">Презиме:</span></td>
            <td class="auto-style14">
                <asp:TextBox ID="txtprez" runat="server" Enabled="true"></asp:TextBox></td>
            <td style="width: 100px">
                Месторабота<span style="color: black; font-family: Lucida Console">:</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtmest" runat="server" ></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <span style="color: black; font-family: Lucida Console">Фамилия:</span></td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox7" runat="server" Height="21px" Width="142px"></asp:TextBox>
                </td>
            
            <td class="auto-style2">
                Длъжност<span style="color: black; font-family: Lucida Console">:</span></td>
            <td class="auto-style2">
                <asp:TextBox ID="txtdluj" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 135px; height: 26px">
                <span style="color: black; font-family: Lucida Console">ЕГН:</span></td>
            <td class="auto-style16">
                <asp:TextBox ID="txtegn" runat="server"></asp:TextBox></td>

            <td style="width: 100px; height: 26px">
                Адрес:</td>
            <td style="width: 100px; height: 26px">
                <asp:TextBox ID="txtadr" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style12">
                Град<span style="color: black; font-family: Lucida Console">:</span></td>
            <td class="auto-style17">
                <asp:TextBox ID="txtgrad" runat="server" TextMode="MultiLine" Width="144px"></asp:TextBox></td>
            <td class="auto-style13">
                Семейно положение<span style="color: black; font-family: Lucida Console">:</span></td>
            <td class="auto-style13">
                <asp:DropDownList ID="DropDownList4" runat="server" Width="96px">
                  <asp:ListItem>...select...</asp:ListItem>
                  <asp:ListItem>Омъжена</asp:ListItem>
                  <asp:ListItem>Неомъжена</asp:ListItem>
                  <asp:ListItem>Женен</asp:ListItem>
                  <asp:ListItem>Неженен</asp:ListItem>
            </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 135px">
                Адрес:</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtadres" runat="server"></asp:TextBox></td>
            
            <td style="width: 100px">
                LoginID</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtlog" runat="server" Enabled="true"></asp:TextBox></td>
            <td class="auto-style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter LoginID" Style="position: relative" ControlToValidate="txtlog">*</asp:RequiredFieldValidator>&nbsp;</td>
           
        <tr>
            <td style="width: 135px">
                <span style="color: black; font-family: Lucida Console">Телефон:</span></td>
            <td class="auto-style14">
                <asp:TextBox ID="txtphon" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                Password</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtpass" runat="server" Enabled="true" OnTextChanged="txtpass_TextChanged" TextMode="Password"></asp:TextBox></td>
 <td class="auto-style11">
     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Password!" Style="position: relative" ControlToValidate="txtpass">*</asp:RegularExpressionValidator></td>            
        </tr>
        <tr>
            <td style="width: 135px">
                &nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
            <td style="width: 100px">
                Comfirm_Passward</td>
           <td style="width: 100px">
                <asp:TextBox ID="txtcompas" runat="server" Enabled="true" OnTextChanged="txtcompas_TextChanged" TextMode="Password"></asp:TextBox>
                </td>
            <td class="auto-style11">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Comfirm Password" Style="position: relative" ControlToValidate="txtcompas">*</asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 135px">
                &nbsp;</td>
            <td class="auto-style14">
          <asp:Label ID="pwdlb" runat="server" style="color:black; " CssClass="auto-style10"></asp:Label>
            </td>
            <td style="width: 100px">
                &nbsp;</td>
            <td style="width: 100px">
                &nbsp;</td>
        </tr>
    </table>
    <table class="auto-style5">
        <tr>
            <td style="width: 100px">
                <asp:Button ID="reg" runat="server" OnClick="btn_reg" Text="Submit" CssClass="auto-style6" />
            </td>
            <td style="width: 100px">
                <asp:Button ID="reset" runat="server" Text="Reset" OnClick="btn_set" Height="21px" Width="93px" /></td>
            <td style="width: 100px">
                <asp:Button ID="doctor" runat="server"  Text="Ако сте лекар!" CssClass="auto-style4" OnClick="btn_doctor" />
            </td>
        </tr>
    </table>
          </asp:Content>
 