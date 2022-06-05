<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="TestReports.aspx.cs" Inherits="website.TestReports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            z-index: 100;
            left: 700px;
            position: absolute;
            top: 194px;
            width: 250px;
            height: 147px;
        }
        .auto-style2 {
            z-index: 104;
            left: 625px;
            position: absolute;
            top: 400px;
            height: 141px;
        }
        .auto-style3 {
            z-index: 103;
            left: 241px;
            position: absolute;
            top: 399px;
            height: 131px;
            width: 164px;
        }
        .auto-style5 {
            height: 24px;
        }
        .auto-style6 {
            z-index: 101;
            left: 258px;
            position: absolute;
            top: 180px;
            width: 452px;
            height: 35px;
        }
        .auto-style7 {
            z-index: 105;
            left: 268px;
            position: absolute;
            top: 345px;
        }
        .auto-style8 {
            z-index: 102;
            left: 265px;
            position: absolute;
            top: 257px;
        }
        .auto-style9 {
            z-index: 103;
            left: 278px;
            width: 184px;
            position: absolute;
            top: 602px;
        }
    .auto-style10 {
        list-style-type: none;
        width: 250px;
        display: block;
        color: #3f51b5;
        text-decoration: none;
        z-index: 100;
        left: 701px;
        position: absolute;
        top: 236px;
        height: 147px;
        margin-left: 0;
        margin-right: 0;
        margin-bottom: 0;
        padding: 8px 16px;
        background-color: #fcf8dc;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/lab1.jpg" CssClass="auto-style10"/>
    <asp:Label ID="Label1" runat="server" Text="Медицински изследвания" Font-Names="Modern" Font-Size="24pt" ForeColor="Red" CssClass="auto-style6"></asp:Label>
<table style="color: black; font-family: 'Lucida Console'; " id="TABLE1" class="auto-style8">
   <tr>
       <td>
            ЕГН</td>
       <td>
           <asp:TextBox ID="txtEgn" runat="server"></asp:TextBox>
       </td>
   </tr>
   <tr>
         <td>
             Име на пациента</td>
         <td>
             <asp:TextBox ID="pntxt" runat="server"></asp:TextBox>
         </td>
   </tr>
   <tr>
         <td>
              Вид изследване
         </td>
         <td>
             <asp:DropDownList ID="PID" runat="server">
             </asp:DropDownList>
         </td>
   </tr>
    
</table>
    <asp:Button ID="ok" runat="server" Text="Ok" OnClick="btn_ok" Width="91px" CssClass="auto-style7" />
<asp:Panel ID="Panel1" runat="server" style="color: white; font-family: 'Lucida Console';" CssClass="auto-style3">
   
    <table style="color: black; font-family: 'Lucida Console'; width: 353px;" >
         <tr>
              <td class="auto-style5">
                  Кръвна група
              </td>
              <td class="auto-style5">
                  <asp:DropDownList ID="grup" runat="server">
                 <asp:ListItem>...Select...</asp:ListItem>
                 <asp:ListItem>AB(+)</asp:ListItem>
                 <asp:ListItem>AB(-)</asp:ListItem>
                 <asp:ListItem>A(+)</asp:ListItem>
                 <asp:ListItem>A(-)</asp:ListItem>
                 <asp:ListItem>B(+)</asp:ListItem>
                 <asp:ListItem>B(-)</asp:ListItem>
                 <asp:ListItem>0(+)</asp:ListItem>
                 <asp:ListItem>0(-)</asp:ListItem>
                  </asp:DropDownList>
              </td>
        </tr>
        <tr>
              <td>Хемоглобин</td>
              <td>
                  <asp:TextBox ID="hmtxt" runat="server"></asp:TextBox>
              </td>
         </tr>
         <tr>
              <td>
                    Кръвна захар
              </td>
              <td>
                  <asp:TextBox ID="bstxt" runat="server"></asp:TextBox>
              </td>
         </tr>
         <tr>
              <td>
                   Еритроцити
              </td>
              <td> 
                  <asp:TextBox ID="suatxt" runat="server"></asp:TextBox>
              </td>
         </tr>
         <tr>
             <td>
                 Левкоцити
             </td>
             <td>
                   <asp:TextBox ID="rd1txt" runat="server"></asp:TextBox>
             </td>
         </tr>
         
    </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Width="200px" style="color: white; font-family: 'Lucida Console';" CssClass="auto-style2">
     
    <table style="color: black; font-family: 'Lucida Console'; width: 353px;" >
         <tr>
              <td style="height: 26px">
                 Цвят
              </td>
              <td style="height: 26px">
                  <asp:TextBox ID="colortxt" runat="server"></asp:TextBox>
              </td>
        </tr>
        <tr>
              <td>Киселинност</td>
              <td>
                  <asp:TextBox ID="clartxt" runat="server"></asp:TextBox>
              </td>
         </tr>
         <tr>
              <td>
                  Мирис</td>
              <td>
                  <asp:TextBox ID="odtxt" runat="server"></asp:TextBox>
              </td>
         </tr>
         <tr>
              <td>
                   Относително тегло
              </td>
              <td> 
                  <asp:TextBox ID="sgtxt" runat="server" style="height: 22px"></asp:TextBox>
              </td>
         </tr>
         <tr>
             <td>
                Гликоза
             </td>
             <td>
                   <asp:TextBox ID="gltxt" runat="server"></asp:TextBox>
             </td>
         </tr>
    </table>
    </asp:Panel>
    <table class="auto-style9">
    <tr><td>
        <asp:Button ID="save" runat="server" Text="Save" Width="81px" OnClick="btn_save" /></td>
    <td><asp:Button ID="cancel" runat="server" Text="Cancel" Width="81px" OnClick="btn_cancel" /></td></tr>
    </table>
</asp:Content>
