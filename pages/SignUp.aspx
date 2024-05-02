<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication2.SignUp" %>

<!DOCTYPE html>
<html lang="tr">
  <head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link href="css/Custom-Cs.css" rel="stylesheet" />
        <title>Sign Up</title>      
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg bg-light">
                <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                        <a class="navbar-brand" href="Default.aspx">
                            <img alt="logo" src="images/FEDEHOME-LOGO-yuvarlak-degil.png" height="50" /></a>
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="Default.aspx">Anasayfa</a>
                            </li>
                           <!-- <li class="nav-item">
                                <a class="nav-link" href="#">Hakkımızda</a>
                            </li>-->
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Ürünler</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Products.aspx">Tüm Ürünler</a>
                                    <a class="dropdown-item" href="Products.aspx">Fede Home Ahşap</a>
                                    <a class="dropdown-item" href="Products.aspx">Fede Home Aksesuar</a>
                                    <a class="dropdown-item" href="Products.aspx">Fede Home Tekstil</a>
                                </div>
                            </li>
                            <li class="nav-item active"><a class="nav-link" href="SignUp.aspx">Üye Ol</a></li>
                            <li><a class="nav-link" href="SignIn.aspx">Giriş Yap</a></li>
                        </ul>
                    </div>
                </div>
            </nav> 
        </div>
<!--SignUp-->
        <div class="container">

            <label class="col-10">Kullanıcı Adı*</label>
                <div class="col-10">
                     <asp:TextBox ID="tbUname" runat="server" Class="form-control" placeholder="Kullanıcı Adı"></asp:TextBox>
                </div>

            <label class="col-10">Şifre*</label>
                <div class="col-10">
                     <asp:TextBox ID="tbPassword" runat="server" Class="form-control" placeholder="Şifre" TextMode="Password"></asp:TextBox>
                </div>

            <label class="col-10">Şifre Onay*</label>
                <div class="col-10">
                     <asp:TextBox ID="tbConfirmPassword" runat="server" Class="form-control" placeholder="Şifre Onay" TextMode="Password"></asp:TextBox>
                </div>

            <label class="col-10">İsim*</label>
                <div class="col-10">
                     <asp:TextBox ID="tbName" runat="server" Class="form-control" placeholder="İsim"></asp:TextBox>
                </div>

            <label class="col-10">E-Mail*</label>
                <div class="col-10">
                     <asp:TextBox ID="tbEmail" runat="server" Class="form-control" placeholder="E-Mail" TextMode="Email"></asp:TextBox>
                </div>

            <div class="col-10 space-vert">
                <asp:Button ID="BtnSignUp" runat="server" Class="btn btn-success" Text="Üye Ol" OnClick="BtnSignUp_Click" />
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>
           

        </div>
        <!--SignUp-->

        <!--Footer-->
        <hr />
        <footer class="footer-pos">
            <div class="container">
                <p>&copy; 2022 Created by Kubra A. for Fede Home &middot; <a href="Default.aspx">Anasayfa</a> &middot; <a href="#">Hakkımızda</a> &middot; <a href="#">İletişim</a> &middot; <a href="#">Ürünler</a></p>
            </div>
        </footer>
        <!--Footer-->

    </form>
   <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
    -->
</body>
</html>