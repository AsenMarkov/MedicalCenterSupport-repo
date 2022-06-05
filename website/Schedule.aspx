<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="website.Schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            z-index: 100;
            left: 666px;
            position: absolute;
            top: 255px;
            width: 222px;
            height: 195px;
        }
        .auto-style2 {
            z-index: 101;
            left: 242px;
            position: absolute;
            top: 284px;
            width: 371px;
        }
        .auto-style6 {
            width: 99px;
        }
        .auto-style7 {
            
            overflow: auto;
            top: 380px;
            z-index: 105;
            left: 240px;
            position: absolute;
        }
        .auto-style9 {
            margin-left: 13px;
        }
        .auto-style10 {
            z-index: 105;
            position: absolute;
            top: 343px;
            left: 277px;
            height: 32px;
            width: 226px;
        }
        .auto-style11 {
            z-index: 101;
            left: 323px;
            position: absolute;
            top: 184px;
            width: 452px;
            height: 35px;
        }
        .auto-style12 {
            width: 232px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/sch.png" CssClass="auto-style1"/>
     <asp:Label ID="Label1" runat="server" Text="График" Font-Names="Modern" Font-Size="24pt" ForeColor="Red" CssClass="auto-style11" ></asp:Label>
    <table class="auto-style2">
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: 20px;" class="auto-style12">
               <span style="color: #000000; font-family: 'Times New Roman', Times, serif; font-size: 20px;"> Въведи своята Фамилия:</span></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style9" Width="161px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></td>
        </tr>
    </table>
     <table class="auto-style10">
        <tr>
            <td style="width: 100px">
                <asp:Button ID="reg" runat="server" OnClick="btn_reg" Text="Submit" CssClass="auto-style6" />
            </td>
    </table>
 <div class="auto-style7">
     <asp:GridView ID="info" runat="server" CellPadding="4"  Height="113px" OnSelectedIndexChanged="info_SelectedIndexChanged" Width="305px" ForeColor="#333333" GridLines="None">
         <AlternatingRowStyle BackColor="White" />
         <EditRowStyle BackColor="#2461BF" />
         <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#EFF3FB" />
         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#F5F7FB" />
         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
         <SortedDescendingCellStyle BackColor="#E9EBEF" />
         <SortedDescendingHeaderStyle BackColor="#4870BE" />
     </asp:GridView>
 </div>
      </asp:Content>
