<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="WebApplication2.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="tr">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous"/>
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <title>Giriş Yap</title>
    <script src="js/jquery-3.6.0.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Example Code -->
            <nav class="navbar navbar-expand-lg bg-light">
              <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                  <a class="navbar-brand" href="Default.aspx"><img alt="logo" src="Images/FEDEHOME-LOGO-yuvarlak-degil.png" height="50" /></a>
                  <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="Default.aspx">Anasayfa</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Hakkımızda</a>
                    </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Ürünler</a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="Products.aspx">Tüm Ürünler</a>
                            <a class="dropdown-item" href="Products.aspx">Fede Home Ahşap</a>
                            <a class="dropdown-item" href="Products.aspx">Fede Home Aksesuar</a>
                            <a class="dropdown-item" href="Products.aspx">Fede Home Tekstil</a>
                        </div>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="SignUp.aspx">Üye Ol</a></li>
                  </ul>
                </div>
              </div>
            </nav> 
            <!-- End Example Code -->
        </div>
        
        <!--Sign in-->
        <div class="container">
            <h2>Giriş Yap</h2>
            <hr />
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Kullanıcı Adı:"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="Username" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="Kullanıcı Adı alanı gerekli!" ControlToValidate="Username"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Şifre:"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" CssClass="text-danger" runat="server" ErrorMessage="Şifre alanı gerekli!" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Beni Hatırla"></asp:Label>      
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-default" OnClick="Button1_Click" />
                        <a href="SignUp.aspx">Üye Ol</a>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:LinkButton ID="lbForgotPassword" runat="server" PostBackUrl="~/ForgotPassword.aspx">Şifremi Unuttum</asp:LinkButton>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                    </div>
                </div>



            </div>
        </div>
        <!--Sign in-->

        </form> 
     <!--Footer-->
        <hr />
        <footer>
            <div class="container">
                <p>&copy; 2022 Created by Kubra A. for Fede Home &middot; <a href="Default.aspx">Anasayfa</a> &middot; <a href="#">Hakkımızda</a> &middot; <a href="#">İletişim</a> &middot; <a href="#">Ürünler</a></p>
            </div>
        </footer>
        <!--Footer-->    
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
    -->
</body>
</html>