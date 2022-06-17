<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Member2.aspx.cs" Inherits="Member2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="MemberDetail.aspx?id={0}" DataTextField="id" Text="Link" HeaderText="編號"></asp:HyperLinkField>
                    <asp:BoundField DataField="id" HeaderText="編號" ReadOnly="True" SortExpression="id" Visible="false"></asp:BoundField>
                    <asp:BoundField DataField="password" HeaderText="密碼" SortExpression="password" Visible="false"></asp:BoundField>
                    <asp:CheckBoxField DataField="sex" HeaderText="性別" SortExpression="sex" Visible="false"></asp:CheckBoxField>
                    <asp:BoundField DataField="age" HeaderText="年齡" SortExpression="age"></asp:BoundField>
                    <asp:BoundField DataField="phone" HeaderText="電話" SortExpression="phone"></asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="地址" SortExpression="address"></asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#2461BF"></EditRowStyle>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>
                <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>
                <RowStyle BackColor="#EFF3FB"></RowStyle>
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>
                <SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>
                <SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>
                <SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>
                <SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Member]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
