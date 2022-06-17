<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Member.aspx.cs" Inherits="Member" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>資料庫</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400" rel="stylesheet" /> <!-- https://fonts.google.com/ -->
    <link href="css/bootstrap.min.css" rel="stylesheet" /> <!-- https://getbootstrap.com/ -->
    <link href="fontawesome/css/all.min.css" rel="stylesheet" /> <!-- https://fontawesome.com/ -->
    <link href="css/templatemo-diagoona.css" rel="stylesheet" />
<!--

TemplateMo 550 Diagoona

https://templatemo.com/tm-550-diagoona

-->
</head>

<body>
    <form id="form1" runat="server">
        <!-- Navbar Start -->
       <div class="tm-container">        
        <div>
            <div class="tm-row pt-4">
                <div class="tm-col-left">
                    <div class="tm-site-header media">
                        <i class="fas fa-umbrella-beach fa-3x mt-1 tm-logo"></i>
                        <div class="media-body">
                            <h1 class="tm-sitename text-uppercase">許嘉烜的網頁專案</h1>
                            <p class="tm-slogon">早安 平安喜樂 認同請分享</p>
                        </div>        
                    </div>
                </div>
                <div class="tm-col-right">
                    <nav class="navbar navbar-expand-lg" id="tm-main-nav">
                        <button class="navbar-toggler toggler-example mr-0 ml-auto" type="button" 
                            data-toggle="collapse" data-target="#navbar-nav" 
                            aria-controls="navbar-nav" aria-expanded="false" aria-label="Toggle navigation">
                            <span><i class="fas fa-bars"></i></span>
                        </button>
                        <div class="collapse navbar-collapse tm-nav" id="navbar-nav">
                            <ul class="navbar-nav text-uppercase">
                                <li class="nav-item">
                                    <a class="nav-link tm-nav-link" href="index.html">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link tm-nav-link" href="News.aspx">News</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link tm-nav-link" href="services.html">Services</a>
                                </li>                            
                                <li class="nav-item">
                                    <a class="nav-link tm-nav-link" href="member.aspx">Member</a>
                                </li>
                            </ul>                            
                        </div>                        
                    </nav>
                </div>
            </div>
        <!-- Navbar End -->

            <span>Hello, </span>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <h1>Welcome!!!</h1>   
            <p> <asp:Button ID="Button1" runat="server" Text="logout" Width="108px" OnClick="Button1_Click" />
            </p>
            
            <br /><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                <Columns>
                    <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                    <asp:BoundField DataField="id" HeaderText="編號" ReadOnly="True" SortExpression="id"></asp:BoundField>
                    <asp:BoundField DataField="password" HeaderText="密碼" SortExpression="password"></asp:BoundField>
                    <asp:CheckBoxField DataField="sex" HeaderText="性別" SortExpression="sex"></asp:CheckBoxField>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Member]" DeleteCommand="DELETE FROM [Member] WHERE [id] = @id" InsertCommand="INSERT INTO [Member] ([id], [password], [sex], [age], [phone], [address]) VALUES (@id, @password, @sex, @age, @phone, @address)" UpdateCommand="UPDATE [Member] SET [password] = @password, [sex] = @sex, [age] = @age, [phone] = @phone, [address] = @address WHERE [id] = @id">
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
                <UpdateParameters>
                    <asp:Parameter Name="password" Type="String"></asp:Parameter>
                    <asp:Parameter Name="sex" Type="Boolean"></asp:Parameter>
                    <asp:Parameter Name="age" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="phone" Type="String"></asp:Parameter>
                    <asp:Parameter Name="address" Type="String"></asp:Parameter>
                    <asp:Parameter Name="id" Type="String"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
            <br /><br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource2" DataKeyNames="id" CellPadding="4" ForeColor="#333333" GridLines="None" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated">
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Member] WHERE ([id] = @id)" DeleteCommand="DELETE FROM [Member] WHERE [id] = @id" InsertCommand="INSERT INTO [Member] ([id], [password], [sex], [age], [phone], [address]) VALUES (@id, @password, @sex, @age, @phone, @address)" UpdateCommand="UPDATE [Member] SET [password] = @password, [sex] = @sex, [age] = @age, [phone] = @phone, [address] = @address WHERE [id] = @id">
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
                    <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="id" Type="String"></asp:ControlParameter>
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

         <!-- Footer Start -->
             <div class="tm-row">
                <div class="tm-col-left"></div>
                <main class="tm-col-right">                  
                </main>
            </div>
        </div>        
        <div class="tm-row">
            <div class="tm-col-left text-center">            
                <ul class="tm-bg-controls-wrapper">
                    <li class="tm-bg-control active" data-id="0"></li>
                    <li class="tm-bg-control" data-id="1"></li>
                    <li class="tm-bg-control" data-id="2"></li>
                </ul>            
            </div>        
            <div class="tm-col-right tm-col-footer">
                <footer class="tm-site-footer text-right">
                    <p class="mb-0">Copyright 2020 Diagoona Co. 
                    
                    | Design: <a rel="nofollow" target="_parent" href="https://templatemo.com" class="tm-text-link">TemplateMo</a></p>
                </footer>
            </div>   
        </div>        
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-primary p-3 back-to-top"><i class="fa fa-angle-double-up"></i></a>


        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/isotope/isotope.pkgd.min.js"></script>
        <script src="lib/lightbox/js/lightbox.min.js"></script>

        <!-- Contact Javascript File -->
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.backstretch.min.js"></script>
        <script src="js/templatemo-script.js"></script>

        <!-- Diagonal background design -->
        <div class="tm-bg">
            <div class="tm-bg-left"></div>
            <div class="tm-bg-right"></div>
        </div>

    </div>
    </form>
</body>
</html>
