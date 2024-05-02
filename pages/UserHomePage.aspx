<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="UserHomePage.aspx.cs" Inherits="WebApplication2.UserHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="tr">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous"/>
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <title>Anasayfa</title>
    <script src="js/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function myfunction() {
            $("#BtnCart").click(function myfunction() {
                window.location.href = "/Cart.aspx";
            });
        });
    </script>
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
                                    <li><a class="dropdown-item" href="Products.aspx">Tüm Ürünler</a></li>
                                        <li><hr class="dropdown-divider"/></li>
                                    <li><a class="dropdown-item" href="#">Fede Home</a></li>
                                    <li>
                                        <hr class="dropdown-divider" />
                                    </li>
                                    <li><a class="dropdown-item" href="#">Fede Tekstil</a></li>
                                    <li>
                                        <hr class="dropdown-divider" />
                                    </li>
                                    <li><a class="dropdown-item" href="#">Fede Mutfak</a></li>
                                    <li>
                                        <hr class="dropdown-divider" />
                                    </li>
                                    <li><a class="dropdown-item" href="#">Fede Dekorasyon</a></li>
                                </ul>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="SignUp.aspx">Üye Ol</a></li>
                            <li>
                                <asp:Button ID="BtnSignIn" runat="server" CssClass="btn btn-success navbar-btn" Text="Giriş" OnClick="BtnSignIn_Click" />
                                <asp:Button ID="BtnSignOut" runat="server" CssClass="btn btn-danger navbar-btn" Text="Çıkış" OnClick="BtnSignOut_Click" />

                            </li>

                            <li>
                                <button id="BtnCart" type="button" class="btn btn-primary navbar-brand">
                                    Sepet <span class="badge badge-light" id="pCount" runat="server"></span>
                                    <span class="sr-only">unread messages</span>
                                </button>
                            </li>

                        </ul>
                    </div>
                </div>
            </nav>
        </div>
            <asp:Label ID="lblSuccess" runat="server" CssClass="text-success"></asp:Label>
        
            <!-- End Example Code -->
<!--Footer-->
        <hr />
        <footer class="footer-pos">
            <div class="container">
                <p>&copy; 2022 Created by Kubra A. for Fede Home &middot; <a href="Default.aspx">Anasayfa</a> &middot; <a href="#">Hakkımızda</a> &middot; <a href="#">İletişim</a> &middot; <a href="#">Ürünler</a></p>
            </div>
        </footer>
        </form>
        <!--Footer-->

    
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
    -->
</body>
</html>
