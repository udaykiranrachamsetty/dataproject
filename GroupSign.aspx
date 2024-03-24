<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="GroupSign.aspx.cs" Inherits="GroupSign" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="289px">
    <table style="width: 100%">
        <tr>
            <td style="width: 281px">
                    &nbsp;</td>
            <td style="width: 108px">
                    &nbsp;</td>
            <td style="width: 35px">
                    &nbsp;</td>
            <td style="width: 302px">
                <asp:Label ID="Label5" runat="server" Text="Group Signature!" Font-Bold="True" 
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
                    <asp:Label ID="Label6" runat="server" Text="." Visible="False"></asp:Label>
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
                <asp:Label ID="Label1" runat="server" Text="Signature"></asp:Label>
            </td>
            <td style="width: 35px">
                <asp:Label ID="Label3" runat="server" Text=":"></asp:Label>
            </td>
            <td style="width: 302px">
                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="enter ur group key" 
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
                    &nbsp;</td>
            <td style="width: 35px">
                    &nbsp;</td>
            <td style="width: 302px">
                <asp:Button ID="Button1" runat="server" CssClass="read-more btn" Text="Verify" 
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

