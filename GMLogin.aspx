<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="GMLogin.aspx.cs" Inherits="HCLogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="351px">
        <table style="width: 100%">
            <tr>
                <td style="width: 281px">
                    &nbsp;</td>
                <td style="width: 108px">
                    &nbsp;</td>
                <td style="width: 35px">
                    &nbsp;</td>
                <td style="width: 302px">
                    <asp:Label ID="Label5" runat="server" Text="Group Manager Login!" Font-Bold="True" 
                        Font-Names="Cooper Black" Font-Size="X-Large"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 281px">
                    &nbsp;</td>
                <td style="width: 108px">
                    &nbsp;</td>
                <td style="width: 35px">
                    &nbsp;</td>
                <td style="width: 302px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 281px">
                    &nbsp;</td>
                <td style="width: 108px">
                    &nbsp;</td>
                <td style="width: 35px">
                    &nbsp;</td>
                <td style="width: 302px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 281px">
                    &nbsp;</td>
                <td style="width: 108px">
                    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                </td>
                <td style="width: 35px">
                    <asp:Label ID="Label3" runat="server" Text=":"></asp:Label>
                </td>
                <td style="width: 302px">
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="enter ur username" 
                        Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 281px">
                    &nbsp;</td>
                <td style="width: 108px">
                    &nbsp;</td>
                <td style="width: 35px">
                    &nbsp;</td>
                <td style="width: 302px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 281px">
                    &nbsp;</td>
                <td style="width: 108px">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td style="width: 35px">
                    <asp:Label ID="Label4" runat="server" Text=":"></asp:Label>
                </td>
                <td style="width: 302px">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" 
                        TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="enter ur password" 
                        Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 281px">
                    &nbsp;</td>
                <td style="width: 108px">
                    &nbsp;</td>
                <td style="width: 35px">
                    &nbsp;</td>
                <td style="width: 302px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 281px; height: 25px;">
                </td>
                <td style="width: 108px; height: 25px;">
                    <asp:Label ID="Label6" runat="server" Text="Group"></asp:Label>
                </td>
                <td style="width: 35px; height: 25px;">
                    <asp:Label ID="Label7" runat="server" Text=":"></asp:Label>
                </td>
                <td style="width: 302px; height: 25px;">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                        <asp:ListItem>Group1</asp:ListItem>
                        <asp:ListItem>Group2</asp:ListItem>
                        <asp:ListItem>Group3</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="height: 25px">
                </td>
            </tr>
            <tr>
                <td style="width: 281px">
                    &nbsp;</td>
                <td style="width: 108px">
                    &nbsp;</td>
                <td style="width: 35px">
                    &nbsp;</td>
                <td style="width: 302px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 281px">
                    &nbsp;</td>
                <td style="width: 108px">
                    &nbsp;</td>
                <td style="width: 35px">
                    &nbsp;</td>
                    <td style="width: 302px">
                        <asp:Button ID="Button1" runat="server" CssClass="read-more btn" Text="Login" 
                            Width="302px" onclick="Button1_Click" />
                    </td>
                    
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 281px">
                    &nbsp;</td>
                <td style="width: 108px">
                    &nbsp;</td>
                <td style="width: 35px">
                    &nbsp;</td>
                <td style="width: 302px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 281px">
                    &nbsp;</td>
                <td style="width: 108px">
                    &nbsp;</td>
                <td style="width: 35px">
                    &nbsp;</td>
                <td style="width: 302px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

