<%@ Page Title="" Language="C#" MasterPageFile="~/Patient.Master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="website.Results" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
            .auto-style9 {
                z-index: 100;
                left: 271px;
                position: absolute;
                top: 179px;
                width: 366px;
                height: 35px;
            }
            .auto-style10 {
              
                overflow: auto;
                z-index: 102;
                left: 252px;
                position: absolute;
                top: 448px;
            }
            .auto-style12 {
                z-index: 101;
                left: 245px;
                width: 382px;
                position: absolute;
                top: 283px;
                height: 54px;
            }
            .auto-style13 {
                z-index: 101;
                left: 252px;
                position: absolute;
                top: 393px;
            }
            .auto-style14 {
                z-index: 103;
                left: 637px;
                position: absolute;
                top: 248px;
            }
            .auto-style15 {
                height: 24px;
                width: 172px;
            }
            </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Резултати от изследвания" style="color: red; " Font-Names="Ariel" Font-Size="23pt" CssClass="auto-style9"></asp:Label>
    <table class="auto-style12" >
    <tr>
       <td class="auto-style15">
           Вид изследване<span style="color: black"><span style="font-family: Lucida Console;">:</span> </span>
       </td>
       <td style="height: 24px">
          <asp:DropDownList ID="testddl" runat="server" Width="155px">
          </asp:DropDownList>
       </td>
    </tr>
    <tr>
       <td class="auto-style15">
           <span style="color: black"><span style="font-family: Lucida Console;">
           ЕГН:</span> </span>
       </td>
       <td style="height: 24px">
           <asp:TextBox ID="txtegn" runat="server" Width="147px"></asp:TextBox>
       </td>
    </tr>
    </table>
    <asp:Button ID="appbtn" runat="server" Text="Покажи резултата" OnClick="appbtn_Click" CssClass="auto-style13" />
    <div class="auto-style10">

        <asp:GridView ID="GridView" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="80px" OnSelectedIndexChanged="GridView_SelectedIndexChanged" Width="192px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="False" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="False" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="False" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </div>
    <asp:Image ID="Image1" runat="server" Height="184px" ImageUrl="~/img/medical_report.jpg" Width="232px" CssClass="auto-style14" />
    </asp:Content>
