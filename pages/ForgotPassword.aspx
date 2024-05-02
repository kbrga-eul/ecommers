<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="WebApplication2.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="tr">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous"/>
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <title>Şifremi Unuttum</title>
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
                        <a class="navbar-brand" href="Default.aspx">
                            <img alt="logo" src="Images/FEDEHOME-LOGO-yuvarlak-degil.png" height="50" /></a>
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="Default.aspx">Anasayfa</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Hakkımızda</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link">İletişim</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Ürünler</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
                                    <li><a class="dropdown-item" href="#">Aydınlatma</a></li>
                                    <li>
                                        <hr class="dropdown-divider" />
                                    </li>
                                    <li><a class="dropdown-item" href="#">Sofra</a></li>
                                    <li>
                                        <hr class="dropdown-divider" />
                                    </li>
                                    <li><a class="dropdown-item" href="#">Aksesuar</a></li>
                                </ul>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="SignUp.aspx">Üye Ol</a></li>
                            <li class="nav-item"><a class="nav-link" href="SignIn.aspx">Giriş</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End Example Code -->
            <div class="container">
                <div class="form-horizontal">
                    <h2>Şifre Yenileme</h2>
                    <h2 />
                    <h6>Lütfen e-mail hesabınız aşağıdaki kutuya yazın. E-mail şifre yenileme yönergesini mail adresinize göndereceğiz.</h6>
                    <div class="form-group">
                        <asp:Label ID="lblEmail" runat="server" Text="E-Mail Adresiniz:"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" CssClass="text-danger" ErrorMessage="Lütfen Email adresinizi girin" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:Button ID="btnForgotPasswordRecover" runat="server" CssClass="btn btn-success" Text="Gönder" OnClick="BtnForgotPasswordRecover_Click" />
                            <asp:Label ID="lblForgotPasswordRecover" runat="server"></asp:Label>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </form>
    <!--Footer-->
        <hr />
        <footer>
            <div class="container">
                <p>&copy; 2022 Created by Kubra A. for Fede Home &middot; <a href="Default.aspx">Anasayfa</a> &middot; <a href="#">Hakkımızda</a> &middot; <a href="#">İletişim</a> &middot; <a href="#">Ürünler</a></p>
            </div>
        </footer>
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
