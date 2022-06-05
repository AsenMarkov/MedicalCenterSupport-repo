<%@ Page Title="" Language="C#" MasterPageFile="~/Patient.Master" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="website.info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            z-index: 101;
            left: 243px;
            position: absolute;
            top: 279px;
            }
        .auto-style3 {
            z-index: 103;
            left: 253px;
            position: absolute;
            top: 353px;
        }
        .auto-style6 {
            width: 99px;
        }
        .auto-style7 {
          
            overflow: auto;
            top: 430px;
            z-index: 105;
            left: 245px;
            position: absolute;
        }
        .auto-style8 {
            width: 252px;
        }
        .auto-style9 {
            z-index: 100;
            left: 345px;
            position: absolute;
            top: 183px;
            width: 401px;
        }
        .auto-style10 {
                z-index: 103;
                left: 705px;
                position: absolute;
                top: 237px;
            width: 187px;
            height: 145px;
        }
        .auto-style11 {
            font-style:inherit;
            font-size:16px;
            font-family:Arial;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/lichna.png" CssClass="auto-style10" />
    <asp:Label ID="Label1" runat="server" Font-Names="Ariel" Font-Size="24pt" ForeColor="Red" Text="Лична информация" CssClass="auto-style9"></asp:Label>
    <table class="auto-style2">
        <tr>
            <td class="auto-style8">
                <span style="color: #000000; font-family: Lucida Console">Въведи своето ЕГН:</span></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
    </table>
   
    <asp:Button ID="search" runat="server" OnClick="btn_search" Text="Search" CssClass="auto-style3" />
 <div class="auto-style7">
     <asp:GridView ID="info1" runat="server" OnSelectedIndexChanged="info_SelectedIndexChanged" Height="149px" Width="288px" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CssClass="auto-style11">
         <FooterStyle BackColor="White" ForeColor="#000066" />
         <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
         <RowStyle ForeColor="#000066" CssClass="auto-style11" />
         <SelectedRowStyle BackColor="#669999" Font-Bold="False" ForeColor="White" CssClass="auto-style11" />
         <SortedAscendingCellStyle BackColor="#F1F1F1" />
         <SortedAscendingHeaderStyle BackColor="#007DBB" />
         <SortedDescendingCellStyle BackColor="#CAC9C9" />
         <SortedDescendingHeaderStyle BackColor="#00547E" />
     </asp:GridView>
 </div>
    </asp:Content>
