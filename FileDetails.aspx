<%@ Page Language="C#" MasterPageFile="~/Cloud.master" AutoEventWireup="true" CodeFile="FileDetails.aspx.cs" Inherits="FileDetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="490px" Font-Names="Times New Roman" 
        HorizontalAlign="Center" ScrollBars="Auto">
    <table style="width: 100%">
        <tr>
            <td style="width: 296px; text-align: left;">
                &nbsp;</td>
            <td style="width: 388px">
                <asp:Label ID="Label5" runat="server" Text="File Details!" Font-Bold="True" 
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
                <asp:Panel ID="Panel2" runat="server" Height="361px" Width="806px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                            CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
                            GridLines="Vertical" Width="800px">
                        <Columns>
                            <asp:BoundField DataField="FileID" HeaderText="FileID" 
                                    SortExpression="FileID" />
                            <asp:BoundField DataField="FileName" HeaderText="FileName" 
                                SortExpression="FileName" />
                            <asp:BoundField DataField="Ftype" HeaderText="Ftype" 
                                    SortExpression="Ftype" />
                            <asp:BoundField DataField="User" HeaderText="User" 
                                SortExpression="User" />
                            <asp:BoundField DataField="GroupId" HeaderText="GroupId" 
                                SortExpression="GroupId" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:GroupCon %>" 
                            
                        
                        SelectCommand="SELECT [FileID], [FileName], [Ftype], [User], [GroupId] FROM [Upload] WHERE ([Status] = @Status)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="YES" Name="Status" Type="String" />
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

