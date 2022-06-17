<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberDetail.aspx.cs" Inherits="MemberDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True"></CommandRowStyle>
                <EditRowStyle BackColor="#2461BF"></EditRowStyle>
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True"></FieldHeaderStyle>
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="編號" ReadOnly="True" SortExpression="id"></asp:BoundField>
                    <asp:BoundField DataField="password" HeaderText="密碼" SortExpression="password"></asp:BoundField>
                    <asp:CheckBoxField DataField="sex" HeaderText="性別" SortExpression="sex"></asp:CheckBoxField>
                    <asp:BoundField DataField="age" HeaderText="年齡" SortExpression="age"></asp:BoundField>
                    <asp:BoundField DataField="phone" HeaderText="電話" SortExpression="phone"></asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="地址" SortExpression="address"></asp:BoundField>
                    <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>
                <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>
                <RowStyle BackColor="#EFF3FB"></RowStyle>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Member] WHERE ([id] = @id)" DeleteCommand="DELETE FROM [Member] WHERE [id] = @id" InsertCommand="INSERT INTO [Member] ([id], [password], [sex], [age], [phone], [address]) VALUES (@id, @password, @sex, @age, @phone, @address)" UpdateCommand="UPDATE [Member] SET [password] = @password, [sex] = @sex, [age] = @age, [phone] = @phone, [address] = @address WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="String"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="String"></asp:Parameter>
                    <asp:Parameter Name="password" Type="String"></asp:Parameter>
                    <asp:Parameter Name="sex" Type="Boolean"></asp:Parameter>
                    <asp:Parameter Name="age" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="phone" Type="String"></asp:Parameter>
                    <asp:Parameter Name="address" Type="String"></asp:Parameter>
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="id" Name="id" Type="String"></asp:QueryStringParameter>
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="password" Type="String"></asp:Parameter>
                    <asp:Parameter Name="sex" Type="Boolean"></asp:Parameter>
                    <asp:Parameter Name="age" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="phone" Type="String"></asp:Parameter>
                    <asp:Parameter Name="address" Type="String"></asp:Parameter>
                    <asp:Parameter Name="id" Type="String"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
            <a href="Member2.aspx">Return</a>
        </div>
    </form>
</body>
</html>
