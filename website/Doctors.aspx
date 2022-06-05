<%@ Page Title="" Language="C#" MasterPageFile="~/SIMP.Master" AutoEventWireup="true" CodeBehind="Doctors.aspx.cs" Inherits="website.Doctors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<script runat="server">

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
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
    </asp:GridView>
</asp:Content>

