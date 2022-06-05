<%@ Page Title="" Language="C#" MasterPageFile="~/Patient.Master" AutoEventWireup="true" CodeBehind="Doctors1.aspx.cs" Inherits="website.Pacienti.Doctors1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         .auto-style1 {
            z-index: 100;
            left: 345px;
            position: absolute;
            top: 183px;
            width: 401px;
        }
        .auto-style2 {
            position:absolute;
            left:459px;
            top: 435px;
        }
        .auto-style3 {
                z-index: 103;
                left: 794px;
                position: absolute;
                top: 320px;
            width: 250px;
            height: 170px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <asp:Image ID="Image1" runat="server" ImageUrl="~/img/appointments.jpg" CssClass="auto-style3" />
     <asp:Label ID="Label1" runat="server" Font-Names="Ariel" Font-Size="24pt" ForeColor="Red" Text="Запис на час" CssClass="auto-style1"></asp:Label>
     &nbsp;<asp:Label ID="Label2" runat="server" Text="Избор на специалист:" Font-Size="12pt"></asp:Label>
    &nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
        DataTextField="Name_spec" DataValueField="Code_spec" AutoPostBack="True">
    </asp:DropDownList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:Hospital1ConnectionString %>"
        OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Specialty]">
    </asp:SqlDataSource>
    &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital1ConnectionString %>"
        SelectCommand="SELECT [UIN], [Name], [Family], [Phone], [Email] FROM [Doctor] WHERE ([Code_spec] = @Code_spec)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Code_spec" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UIN" DataSourceID="SqlDataSource2"
        Font-Size="12pt" ForeColor="#333333" GridLines="None">
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <Columns>
            <asp:BoundField DataField="UIN" HeaderText="UIN" ReadOnly="True" SortExpression="UIN" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Family" HeaderText="Family" SortExpression="Family" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Columns>
        <RowStyle BackColor="#EFF3FB" />
        <EditRowStyle BackColor="#2461BF" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView> <br />
    <asp:Button ID="chas" runat="server" Text="Запази час!" OnClick="chas_Click" Font-Names="Arial" Font-Size="Medium" CssClass="auto-style2" />
</asp:Content>
