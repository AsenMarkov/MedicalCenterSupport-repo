<%@ Page Title="" Language="C#" MasterPageFile="~/Patient.Master" AutoEventWireup="true" CodeBehind="Price.aspx.cs" Inherits="website.Price" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
    .auto-style9 {
            z-index: 100;
            left: 345px;
            position: absolute;
            top: 183px;
            width: 401px;
        }
</style>
   <asp:Label ID="Label1" runat="server" Font-Names="Ariel" Font-Size="24pt" ForeColor="Red" Text="Цени и услуги" CssClass="auto-style9"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="Label">Избери услуга: </asp:Label>
    &nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
        DataTextField="Name" DataValueField="Code_test" AutoPostBack="True">
    </asp:DropDownList><br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:Hospital1ConnectionString %>"
        OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Test_Reports]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital1ConnectionString %>"
        SelectCommand="SELECT [Price_NZOK], [Price_private] FROM [Price] WHERE ([Code_test] = @Code_test)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Code_test" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2"
        Font-Size="12pt" ForeColor="#333333" GridLines="None" >
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Price_NZOK" HeaderText="Price_NZOK" SortExpression="Price_NZOK" />
            <asp:BoundField DataField="Price_private" HeaderText="Price_private" SortExpression="Price_private" />
        </Columns>
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
</asp:Content>
