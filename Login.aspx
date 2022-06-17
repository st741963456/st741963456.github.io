<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .myDiv {
            padding-top:10px;
        }
    </style>
    <script>
        function isEmpty() {
            var id = document.getElementById('TextBox1').value;
            var password = document.getElementById('TextBox2').value;

            if (id == '' || password == '') {
                alert('id or password is empty!');
                return false;
            }
            else return true;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <fieldset style="width:200px; margin:0 auto;">
            <legend>User Login</legend>
            <div>
                <asp:Label ID="Label1" runat="server" Text="User：" Width="80"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Width="100"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic" ErrorMessage="Id is empty!!!"></asp:RequiredFieldValidator>
            </div>
            <div class="myDiv">
                <asp:Label ID="Label2" runat="server" Text="Password：" Width="80"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Width="100" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ForeColor="Red" Display="Dynamic" ErrorMessage="Password is empty!!!"></asp:RequiredFieldValidator>
            </div>
            <div class="myDiv">
                <asp:Button ID="Button3" runat="server" Text="login" OnClick="Button3_Click" style="margin-bottom: 0px" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [id], [password] FROM [Member] WHERE (([id] = @id) AND ([password] = @password))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="id" Type="String"></asp:ControlParameter>
                        <asp:ControlParameter ControlID="TextBox2" PropertyName="Text" Name="password" Type="String"></asp:ControlParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <div class="myDiv">
                <asp:Label ID="ErrorMsg" runat="server" ForeColor="red" Text="User is not exist!" Visible="false"></asp:Label>
            </div>
        </fieldset>
    </form>
</body>
</html>
