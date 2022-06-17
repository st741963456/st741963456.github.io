<%@ Page Language="C#" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="News" %>

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
                                <li class="nav-item active">
                                    <a class="nav-link tm-nav-link" href="NewsView.aspx">News <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link tm-nav-link" href="services.html">Services</a>
                                </li>                            
                                <li class="nav-item">
                                    <a class="nav-link tm-nav-link" href="contact.html">Contact</a>
                                </li>
                            </ul>                            
                        </div>                        
                    </nav>
                </div>
            </div>
        <!-- Navbar End -->

        <!-- Facilities Start -->
        <div class="container-fluid pt-5">
            <div class="container">
                <div class="row">
                    <asp:GridView ID="customers" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#003366" ForeColor="Black" Width="400px">
                        
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" Visible="false" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                            <asp:BoundField DataField="date" HeaderText="日期" SortExpression="date" DataFormatString="{0:yyyy/MM/dd}" HeaderStyle-Width="100"></asp:BoundField>
                            <asp:TemplateField HeaderText="標題">
                                <ItemTemplate>                                                               
                                    <a href='<%# "News.aspx?id=" + Eval("Id").ToString() %>'><%# Eval("title") %></a>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>

                    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" ForeColor="Black">
                    <Fields>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id">
                                <HeaderStyle Width="100px"></HeaderStyle>
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="title" SortExpression="title">
                                <EditItemTemplate>
                                    <asp:TextBox runat="server" Text='<%# Bind("title") %>' Width="100%" ID="TextBox2"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox runat="server" Text='<%# Bind("title") %>' Width="100%" ID="TextBox1"></asp:TextBox>
                                </InsertItemTemplate>
                                
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="content" SortExpression="content">
                                <EditItemTemplate>
                                    <asp:TextBox runat="server" Text='<%# Bind("content") %>' TextMode="MultiLine" Width="100%" Height="200" ID="TextBox3"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox runat="server" Text='<%# Bind("content") %>' TextMode="MultiLine" Width="100%" Height="200" ID="TextBox4"></asp:TextBox>
                                </InsertItemTemplate>
                                
                                <ControlStyle ForeColor="Black" />
                                <FooterStyle ForeColor="Black" />
                                <HeaderStyle ForeColor="Black" />
                                <ItemStyle ForeColor="Black" />
                                
                            </asp:TemplateField>
                            <asp:BoundField DataField="date" HeaderText="date" DataFormatString="{0:yyyy/MM/dd}" SortExpression="date"></asp:BoundField>
                         <asp:TemplateField ShowHeader="False">                        
                                <ItemTemplate>
                                    <asp:LinkButton runat="server" Text="編輯" CommandName="Edit" CausesValidation="False" ID="LinkButton5"></asp:LinkButton>
                                    <asp:LinkButton runat="server" Text="新增" CommandName="New" CausesValidation="False" ID="LinkButton6"></asp:LinkButton>
                                    <asp:LinkButton runat="server" Text="刪除" CommandName="Delete" CausesValidation="False" ID="LinkButton7"></asp:LinkButton>
                                    <a href="News.aspx">返回</a>
                                </ItemTemplate>
                            </asp:TemplateField>
                    </Fields>
                        <InsertRowStyle BackColor="White" ForeColor="Black" />
                </asp:DetailsView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [Id], [title], [date] FROM [News]"></asp:SqlDataSource>

                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" BackColor="White" ForeColor="Black" Width="600px">
                        <Fields>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title"></asp:BoundField>
                            <asp:BoundField DataField="content" HeaderText="content" SortExpression="content"></asp:BoundField>
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date"></asp:BoundField>
                        </Fields>
                    </asp:DetailsView>

                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [News] WHERE ([Id] = @Id)">
                        <SelectParameters>
                            <asp:QueryStringParameter QueryStringField="id" Name="Id" Type="Int32"></asp:QueryStringParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
        <!-- Facilities End -->

       <!-- Footer Start -->
            <div class="tm-row">
                <div class="tm-col-left"></div>
                <main class="tm-col-right">
                    <section class="tm-content tm-about">
                        <h2 class="mb-5 tm-content-title">資料庫顯示測試</h2>
                        <hr class="mb-4">
                        <div class="media my-3">
                            <i class="fas fa-shapes fa-3x p-3 mr-4"></i>
                            <div class="media-body">
                                <p>可是進來這裡就壞掉了 哭啊</p>
                            </div> 
                        </div>                    
                    </section>
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