<%@ Page Title="" Language="C#" MasterPageFile="~/SIMP.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="website.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/login.css" rel="stylesheet" type="text/css" />
</asp:Content>
<script runat="server">

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="font-family: Arial; font-size: 16px" class="auto-style5"> По своето същество медицинката помощ се дели на
        доболнична и болнична. Към доболничната медицинска помощ се отнасят ПИМП и СИМП
        - Първичната извънболнична медицинска помощ представлява личните лекари, който всеки
        здравноосигурен човек има. СИМП - предмета на тази информационна система представляват
        всички специалисти. Независимо дали с направление или платени, на всеки от нас се
        налага да ги посещава. Тази система служи за олесняване на достъпа до тези лекари.
        Без да е необходимо да се разхождаме милиони пъти до избрания лекар и да чакаме
        на киометрични опашки. Чрез тази система бързо и лесно, всеки потребител ще може
        да си избере специалист и да си запази конкретен час за посещение. </div>
 <br />
    <div id="light" class="white_content">
            <table cellpadding="0" cellspacing="0" border="0" style="background-color: #90bab7;" class="auto-style2">
                <tr>
                    <td height="16px">
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 16px; padding-right: 16px; padding-bottom: 16px">
                        <table align="center" border="0" cellpadding="0" cellspacing="0" style="background-color: #fff"
                            width="100%" bgcolor="#FCF8DC">
                            <tr>
                                <td align="center" colspan="2" class="headertext" bgcolor="#FCF8DC">
                                    Login
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="#FCF8DC" class="auto-style1">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="center" bgcolor="#FCF8DC" >
                                    <table>
                                        <tr>
                                            <td align="right" class="bot_text">
                                                Username:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="lidtxt" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="10px">
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="lidtxt"
                                                    ErrorMessage="Please enter your username" ValidationGroup="a" CssClass="content3"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="bot_text">
                                                Password:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="pwdtxt" runat="server" TextMode="Password"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="10px">
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pwdtxt"
                                                    ErrorMessage="Please enter your password" ValidationGroup="a" CssClass="content3"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            </td>
                                            <td>
                                                <asp:Button ID="btnLogin" runat="server" CssClass="buttonsubmit" Text="Login" ValidationGroup="a" OnClick="btnLogin_Click"/>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                           
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Menu ID="Menu1" runat="server" Font-Underline="True" ForeColor="#7C6F57" Orientation="Horizontal"
            Style="z-index: 101; left: 250px; position: absolute; top: 610px; font-family: 'Times New Roman';" BackColor="#FCF8DC" DynamicHorizontalOffset="2" Font-Names="Ariel" Font-Size="0.7em" StaticSubMenuIndent="5px">
            <DynamicHoverStyle BackColor="white" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem Text="New user Signup" Value="New user Signup" NavigateUrl="~/Registration.aspx"></asp:MenuItem>
                <asp:MenuItem Text="|Forgot Password?" Value="|Forgot Password?" NavigateUrl="~/doctorforgot.aspx"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
    <asp:Label ID="pwdlb" runat="server" Text="" style="color:black; font-family: 'Times New Roman'; " CssClass="auto-style3" Font-Size="Medium"></asp:Label>
         </asp:Content>
