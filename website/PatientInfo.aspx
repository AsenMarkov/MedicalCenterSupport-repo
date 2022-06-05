<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="PatientInfo.aspx.cs" Inherits="website.PatientInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            z-index: 101;
            left: 240px;
            position: absolute;
            top: 240px;
            }
        .auto-style3 {
            z-index: 103;
            left: 259px;
            position: absolute;
            top: 324px;
        }
        .auto-style6 {
            width: 99px;
        }
    .auto-style7 {
        
        overflow: auto;
        top: 370px;
        z-index: 105;
        left: 240px;
        position: absolute;
    }
        .auto-style8 {
            list-style-type: none;
            width: 197px;
            display: block;
            color: #3f51b5;
            text-decoration: none;
            z-index: 100;
            left: 676px;
            position: absolute;
            top: 233px;
            height: 161px;
            margin-left: 0;
            margin-right: 0;
            margin-bottom: 0;
            padding: 8px 16px;
            background-color: #fcf8dc;
        }
        .auto-style9 {
            height: 32px;
            width: 210px;
            top: 100px;
        }
            .auto-style10 {
            z-index: 101;
            left: 258px;
            position: absolute;
            top: 180px;
            width: 452px;
            height: 35px;
        }
            .auto-style11 {
            z-index: 102;
            left: 240px;
            position: absolute;
            top: 378px;
        }
        
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/info.png" CssClass="auto-style8"/>
     <asp:Label ID="Label1" runat="server" Text="Информация за пациента" Font-Names="Modern" Font-Size="24pt" ForeColor="Red" CssClass="auto-style10"></asp:Label>
    <table class="auto-style2" style="height: 28px; width: 381px">
        <tr>
            <td style="width: 262px">
                <span style="color: #000000; font-family: 'Times New Roman'; font-size: 20px;">Въведи името на пациента:</span></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        
    </table>
        <table class="auto-style9">
    <tr><td>
         <asp:Button ID="search" runat="server" OnClick="btn_search" Text="Search" CssClass="auto-style3" /></td>
    </table>
                  
 <div class="auto-style7">
     <asp:GridView ID="info" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
         <EditRowStyle BackColor="#999999" />
         <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
         <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#E9E7E2" />
         <SortedAscendingHeaderStyle BackColor="#506C8C" />
         <SortedDescendingCellStyle BackColor="#FFFDF8" />
         <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
     </asp:GridView>
 </div>
   <asp:Label ID="pwdlb" runat="server" Text="" style="color:black; font-family: 'Times New Roman', Times, serif" CssClass="auto-style11" Font-Size="Medium"></asp:Label>
</asp:Content>
