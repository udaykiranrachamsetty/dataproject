<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="UserReg.aspx.cs" Inherits="UserReg" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="612px">
        <table style="width: 100%">
            <tr>
                <td style="width: 281px">
                    &nbsp;</td>
                <td style="width: 108px">
                    &nbsp;</td>
                <td colspan="2">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" 
                        Font-Names="Cooper Black" Font-Size="X-Large" Text="User Registration!"></asp:Label>
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
                <td style="width: 254px">
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
                <td style="width: 254px">
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
                <td style="width: 254px">
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
                <td style="width: 254px">
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
                <td style="width: 254px">
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
                <td style="width: 254px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 281px">
                    &nbsp;</td>
                <td style="width: 108px">
                    <asp:Label ID="Label6" runat="server" Text="Date Of Birth"></asp:Label>
                </td>
                <td style="width: 35px">
                    <asp:Label ID="Label7" runat="server" Text=":"></asp:Label>
                </td>
                <td style="width: 254px">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="enter ur dob" Font-Italic="True" 
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
                <td style="width: 254px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 281px">
                    &nbsp;</td>
                <td style="width: 108px">
                    <asp:Label ID="Label8" runat="server" Text="Mobile No"></asp:Label>
                </td>
                <td style="width: 35px">
                    <asp:Label ID="Label11" runat="server" Text=":"></asp:Label>
                </td>
                <td style="width: 254px">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="enter ur mobile no" 
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
                <td style="width: 254px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 281px">
                    &nbsp;</td>
                <td style="width: 108px">
                    <asp:Label ID="Label9" runat="server" Text="Email ID"></asp:Label>
                </td>
                <td style="width: 35px">
                    <asp:Label ID="Label12" runat="server" Text=":"></asp:Label>
                </td>
                <td style="width: 254px">
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="enter ur emailid" Font-Italic="True" 
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
                <td style="width: 254px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 281px">
                    &nbsp;</td>
                <td style="width: 108px">
                    <asp:Label ID="Label10" runat="server" Text="City"></asp:Label>
                </td>
                <td style="width: 35px">
                    <asp:Label ID="Label13" runat="server" Text=":"></asp:Label>
                </td>
                <td style="width: 254px">
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="enter ur city" Font-Italic="True" 
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
                <td style="width: 254px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 281px">
                    &nbsp;</td>
                <td style="width: 108px">
                    <asp:Label ID="Label14" runat="server" Text="Profession"></asp:Label>
                </td>
                <td style="width: 35px">
                    <asp:Label ID="Label16" runat="server" Text=":"></asp:Label>
                </td>
                <td style="width: 254px">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                        <asp:ListItem>Doctors</asp:ListItem>
                        <asp:ListItem>Bidders</asp:ListItem>
                        <asp:ListItem>Businessmen</asp:ListItem>
                    </asp:DropDownList>
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
                <td style="width: 254px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 281px">
                    &nbsp;</td>
                <td style="width: 108px">
                    <asp:Label ID="Label15" runat="server" Text="Group"></asp:Label>
                </td>
                <td style="width: 35px">
                    <asp:Label ID="Label17" runat="server" Text=":"></asp:Label>
                </td>
                <td style="width: 254px">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                        <asp:ListItem>Group1</asp:ListItem>
                        <asp:ListItem>Group2</asp:ListItem>
                        <asp:ListItem>Group3</asp:ListItem>
                    </asp:DropDownList>
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
                <td style="width: 254px">
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
                <td style="width: 254px">
                    <asp:Button ID="Button1" CssClass="read-more btn" runat="server" Text="Register" 
                        Width="254px" onclick="Button1_Click" />
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
                <td style="width: 254px">
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
                <td style="width: 254px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

