<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Download.aspx.cs" Inherits="Download" Title="Untitled Page" %>

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
                <asp:Label ID="Label5" runat="server" Text="Decrypt &amp; Download!" Font-Bold="True" 
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
                <asp:Label ID="Label1" runat="server" Text="File ID"></asp:Label>
            </td>
            <td style="width: 35px">
                <asp:Label ID="Label3" runat="server" Text=":"></asp:Label>
            </td>
            <td style="width: 302px">
                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="enter fileid" 
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
                <asp:Label ID="Label2" runat="server" Text="File Name"></asp:Label>
            </td>
            <td style="width: 35px">
                <asp:Label ID="Label4" runat="server" Text=":"></asp:Label>
            </td>
            <td style="width: 302px">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="enter filename" 
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
                <asp:Label ID="Label6" runat="server" Text="Decrypt Key"></asp:Label>
            </td>
            <td style="width: 35px; height: 25px;">
                <asp:Label ID="Label7" runat="server" Text=":"></asp:Label>
            </td>
            <td style="width: 302px; height: 25px;">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td style="height: 25px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="enter decryptkey" Font-Italic="True" 
                        Font-Size="Small"></asp:RequiredFieldValidator>
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
                <asp:Button ID="Button1" runat="server" CssClass="read-more btn" Text="Decrypt &amp; Download" 
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

