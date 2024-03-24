<%@ Page Language="C#" MasterPageFile="~/GM.master" AutoEventWireup="true" CodeFile="AuthorizeUser.aspx.cs" Inherits="AuthorizeUser" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="490px" Font-Names="Times New Roman" 
        HorizontalAlign="Center" ScrollBars="Auto">
        <table style="width: 100%">
            <tr>
                <td style="width: 296px">
                    &nbsp;</td>
                <td style="width: 388px">
                    <asp:Label ID="Label5" runat="server" Text="Authorize Group Members!" Font-Bold="True" 
                        Font-Names="Cooper Black" Font-Size="X-Large"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 296px">
                    &nbsp;</td>
                <td style="width: 388px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <table style="width: 100%; height: 420px">
            <tr>
                <td>
                    &nbsp;</td>
                <td style="width: 665px">
                    <asp:Panel ID="Panel2" runat="server" Height="334px" Width="806px">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                            CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
                            GridLines="Vertical" onrowcommand="GridView1_RowCommand" Width="800px">
                            <Columns>
                                <asp:BoundField DataField="Username" HeaderText="Username" 
                                    SortExpression="Username" />
                                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                                <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                                    SortExpression="Mobile" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                <asp:BoundField DataField="Profession" HeaderText="Profession" 
                                    SortExpression="Profession" />
                                <asp:ButtonField CommandName="Select" HeaderText="Group Key" ShowHeader="True" 
                                    Text="Send Key">
                                    <ControlStyle Font-Underline="True" ForeColor="#006600" />
                                </asp:ButtonField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:GroupCon %>" 
                            SelectCommand="SELECT [Username], [DOB], [Mobile], [Email], [City], [Profession] FROM [Register] WHERE (([GroupID] = @GroupID) AND ([GroupKey] = @GroupKey))">
                            <SelectParameters>
                                <asp:SessionParameter Name="GroupID" SessionField="group" Type="String" />
                                <asp:Parameter DefaultValue="NO" Name="GroupKey" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </asp:Panel>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

