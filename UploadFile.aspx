<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="UploadFile.aspx.cs" Inherits="UploadFile" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="509px">
        <table style="width: 100%">
            <tr>
                <td style="width: 255px">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Text="Welcome!"></asp:Label>
                    &nbsp;
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman"></asp:Label>
                </td>
                <td style="width: 128px">
                    &nbsp;</td>
                <td style="width: 35px">
                    &nbsp;</td>
                <td style="width: 302px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 255px">
                    &nbsp;</td>
                <td style="width: 128px">
                    &nbsp;</td>
                <td style="width: 35px">
                    &nbsp;</td>
                <td style="width: 302px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 255px">
                    &nbsp;</td>
                <td style="width: 128px">
                    &nbsp;</td>
                <td style="width: 35px">
                    &nbsp;</td>
                <td style="width: 302px">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" 
                        Font-Names="Cooper Black" Font-Size="X-Large" Text="File Upload!"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 255px">
                    &nbsp;</td>
                <td style="width: 128px">
                    &nbsp;</td>
                <td style="width: 35px">
                    &nbsp;</td>
                <td style="width: 302px">
                    <asp:Label ID="Label12" runat="server" Text="." Visible="False"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 255px">
                    &nbsp;</td>
                <td style="width: 128px">
                    &nbsp;</td>
                <td style="width: 35px">
                    &nbsp;</td>
                <td style="width: 302px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 255px">
                    &nbsp;</td>
                <td style="width: 128px">
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
                        ControlToValidate="TextBox1" ErrorMessage="enter ur username" 
                        Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 255px">
                    &nbsp;</td>
                <td style="width: 128px">
                    &nbsp;</td>
                <td style="width: 35px">
                    &nbsp;</td>
                <td style="width: 302px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 255px">
                    &nbsp;</td>
                <td style="width: 128px">
                    <asp:Label ID="Label2" runat="server" Text="Filename"></asp:Label>
                </td>
                <td style="width: 35px">
                    <asp:Label ID="Label4" runat="server" Text=":"></asp:Label>
                </td>
                <td style="width: 302px">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="enter ur filename" 
                        Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 255px">
                    &nbsp;</td>
                <td style="width: 128px">
                    &nbsp;</td>
                <td style="width: 35px">
                    &nbsp;</td>
                <td style="width: 302px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 255px; height: 25px;">
                </td>
                <td style="width: 128px; height: 25px;">
                    <asp:Label ID="Label6" runat="server" Text="Conference Key"></asp:Label>
                </td>
                <td style="width: 35px; height: 25px;">
                    <asp:Label ID="Label7" runat="server" Text=":"></asp:Label>
                </td>
                <td style="width: 302px; height: 25px;">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td style="height: 25px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="enter ur conference key" 
                        Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 255px; height: 25px;">
                    &nbsp;</td>
                <td style="width: 128px; height: 25px;">
                    &nbsp;</td>
                <td style="width: 35px; height: 25px;">
                    &nbsp;</td>
                <td style="width: 302px; height: 25px;">
                    &nbsp;</td>
                <td style="height: 25px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 255px; height: 25px;">
                    &nbsp;</td>
                <td style="width: 128px; height: 25px;">
                    <asp:Label ID="Label8" runat="server" Text="Choose File"></asp:Label>
                </td>
                <td style="width: 35px; height: 25px;">
                    <asp:Label ID="Label9" runat="server" Text=":"></asp:Label>
                </td>
                <td style="width: 302px; height: 25px;">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                </td>
                <td style="height: 25px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="FileUpload1" ErrorMessage="choose ur file" 
                        Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 255px; height: 25px;">
                    &nbsp;</td>
                <td style="width: 128px; height: 25px;">
                    &nbsp;</td>
                <td style="width: 35px; height: 25px;">
                    &nbsp;</td>
                <td style="width: 302px; height: 25px;">
                    &nbsp;</td>
                <td style="height: 25px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 255px">
                    &nbsp;</td>
                <td style="width: 128px">
                    &nbsp;</td>
                <td style="width: 35px">
                    &nbsp;</td>
                <td style="width: 302px">
                    <asp:Button ID="Button1" runat="server" CssClass="read-more btn" Text="Encrypt &amp; Upload" 
                        Width="302px" onclick="Button1_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 255px">
                    &nbsp;</td>
                <td style="width: 128px">
                    &nbsp;</td>
                <td style="width: 35px">
                    &nbsp;</td>
                <td style="width: 302px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 255px">
                    &nbsp;</td>
                <td style="width: 128px">
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

