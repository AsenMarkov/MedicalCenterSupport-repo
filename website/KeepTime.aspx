<%@ Page Title="" Language="C#" MasterPageFile="~/Patient.Master" AutoEventWireup="true" CodeBehind="KeepTime.aspx.cs" Inherits="website.Doctors1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            z-index: 102;
            left: 548px;
            position: absolute;
            top: 532px;
            height: 32px;
            width: 187px;
        }
        .auto-style3 {
            height: 20px;
            width: 115px;
        }
        .auto-style4 {
            height: 6px;
            width: 115px;
        }
        .auto-style5 {
            width: 331px;
            z-index: 101;
            left: 241px;
            position: absolute;
            top: 271px;
            height: 169px;
        }
        .auto-style7 {
            height: 20px;
            width: 686px;
        }
        .auto-style8 {
            height: 6px;
            width: 686px;
        }
         .auto-style9 {
            z-index: 100;
            left: 346px;
            position: absolute;
            top: 181px;
            width: 401px;
        }
         .auto-style10 {
            z-index: 102;
            left: 259px;
            position: absolute;
            top: 499px;
        }
          
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Names="Ariel" Font-Size="24pt" ForeColor="Red" Text="Запис на час" CssClass="auto-style9"></asp:Label>
    <table style="color: black; font-family: 'Lucida Console'; " class="auto-style5">
<tr>
    <td class="auto-style7">
        Име на пациента</td>
    <td class="auto-style3">
    <asp:TextBox ID="pntxt" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
    <td class="auto-style7">
        Час:</td>
    <td class="auto-style3">
    <asp:TextBox ID="chastxt" runat="server" TextMode="Time" OnTextChanged="chastxt_TextChanged" ></asp:TextBox>
    </td>
</tr>
<tr>
<td class="auto-style8">
    Дата и час</td>
    <td class="auto-style4">
    <asp:TextBox ID="sdtxt" runat="server" OnTextChanged="sdtxt_TextChanged"></asp:TextBox>
    </td>
    
</tr>
<tr>
    <td class="auto-style7">
        Специалист
    </td>
    <td class="auto-style3">
        <asp:DropDownList ID="ddl" runat="server" AutoPostBack="True"  Width="155px" DataSourceID="SqlDataSource2" DataTextField="Name_spec" DataValueField="Code_spec" >
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital1ConnectionString %>" SelectCommand="SELECT * FROM [Specialty]"></asp:SqlDataSource>
    </td>
</tr>
<tr>
    <td class="auto-style7">
    Доктор
    </td>
    <td class="auto-style3">
                <asp:DropDownList ID="ddl1" runat="server" AutoPostBack="True"  Width="155px" DataSourceID="SqlDataSource1" DataTextField="Family" DataValueField="Family" >
                    <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital1ConnectionString %>" SelectCommand="SELECT [Family] FROM [Doctor] WHERE ([Code_spec] = @Code_spec)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddl" Name="Code_spec" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
    </td>
</tr> 
</table>
<table class="auto-style2">
        <tr>
        <td style="width: 82px; height: 26px">
          <asp:Button ID="save" runat="server" Text="Save" Width="85px" OnClick="btn_save"  />
        </td>
       <td style="width: 67px; height: 26px">
             <asp:Button ID="cancel" runat="server" Text="Cancel" Width="92px" OnClick="btn_cancel" />
       </td>
       </tr>
       </table>
 <asp:Calendar ID="Calendar" runat="server" style="z-index: 50; left: 650px; color: white; position: absolute; top: 280px" BackColor="White" BorderColor="#3366CC" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar_SelectionChanged" Width="220px" BorderWidth="1px">
        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
        <WeekendDayStyle BackColor="#CCCCFF" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
        <TitleStyle BackColor="#003399" BorderColor="#3366CC" Font-Bold="True" BorderWidth="1px" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
    </asp:Calendar>
    <asp:Label ID="pwdlb" runat="server" Text="" style="color:black; font-family: 'Lucida Console'; " CssClass="auto-style10"></asp:Label>
</asp:Content>
