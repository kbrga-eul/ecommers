<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2.Default" %>

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
                <div class="collapse navbar-collapse w-100 justify-content-between" id="navbarTogglerDemo01">
                  <a class="navbar-brand" href="Default.aspx"><img alt="logo" src="Images/FEDEHOME-LOGO-yuvarlak-degil.png" height="50" /></a>
                  <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="Default.aspx">Anasayfa</a>
                    </li>
                   <!-- <li class="nav-item">
                      <a class="nav-link" href="About.aspx">Hakkımızda</a>
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
                      <li id="BtnSignOut" runat="server" class="nav-item"><a class="nav-link" href="SignUp.aspx">Üye Ol</a></li>
                      <li id="BtnSignIn" class="nav-item" runat="server"><a class="nav-link" href="SignIn.aspx">Giriş</a></li>
                      <li>
                          <asp:Button ID="BtnLogout" runat="server" CssClass="btn btn-default navbar-btn" OnClick="BtnLogout_Click" Text="Çıkış" />
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
            <!-- End Example Code -->
         <!--- Carousel -->
    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="Images/carrosel-01.jpg" class="d-block w-100" alt="..."/>
                <div class="carousel-caption d-none d-md-block">
                    <h5></h5>
                    <p></p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="Images/carrosel-02.png" class="d-block w-100" alt="..."/>
                <div class="carousel-caption d-none d-md-block">
                    <h5></h5>
                    <p></p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="Images/carrosel-03.png" class="d-block w-100" alt="..."/>
                <div class="carousel-caption d-none d-md-block">
                    <h5></h5>
                    <p></p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only"></span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only"></span>
        </a>
    </div>
    <!--- Carousel -->
    <!--- Middle Contents -->
    <div class="container center">
        <div class="row">
            <div class="col-md-4">
                <div class="card" style="width: 250px;">
                    <img class="card-img-top" src="Images/örnek-ürün.jpg" alt="thumb01" height="250" />
                    <div class="card-body">
                        <h5 class="card-title">Fede Home Ahşap</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Daha fazlası</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 250px;">
                    <img class="card-img-top" src="Images/aksesuar.jpg" alt="thumb01" height="250" />
                    <div class="card-body">
                        <h5 class="card-title">Fede Home Aksesuar</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Daha fazlası</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 250px;">
                    <img class="card-img-top" src="Images/sofra.jpg" alt="thumb01" height="250" />
                    <div class="card-body">
                        <h5 class="card-title">Fede Home Tekstil</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Daha fazlası</a>
                    </div>
                </div>
            </div>
            <!--OUR RIGHTS-->
            <div class="col-md-4">
                <div class="card" style="width: 250px;">
                    <div class="card-body">
                        <h5 class="card-title">Tescil</h5>
                        <p class="card-text">FEDEHOME, 2021 yılında temelleri atılmış olan  FEDE TEKNOLOJİ VE İNOVASYON A.Ş. çatısı altında 2022 yılında kurulmuş olup ev tekstili, ev aksesuarları ve ahşap ürünleri üzerine hizmet veren tescilli bir FEDE Markasıdır</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 250px;">
                    <div class="card-body">
                        <h5 class="card-title">Kurumsal</h5>
                        <p class="card-text"><a href="#">Anasayfa</a></p>
                        <p class="card-text"><a href="#">Hakkımızda</a></p>
                        <p class="card-text"><a href="#">Neden Biz?</a></p>
                        <p class="card-text"><a href="#">Ekibimiz</a></p>
                        <p class="card-text"><a href="#">Kişisel Verilerin Korunması</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 250px;">
                    <div class="card-body">
                        <h5 class="card-title"><b>İletişim</b></h5>
                        <p class="card-text"><b>Ofis: </b>Mall Of Istanbul The Office Plaza, 17/136</p>
                        <p class="card-text"><b>Mail:</b>info@fedeteknoloji.com</p>
                        <p class="card-text"><b>Telefon: </b>(0531)-261-42-20</p>
                        <p class="card-text"><b>Telefon: </b>(0212)-928-30-59</p>
                    </div>
                </div>
            </div>
            <!--OUR RIGHTS-->
        </div>
    </div>
</div>
        
        <!--Footer-->
        <hr />
        <footer>
            <div class="container">
                <p>&copy; 2022 Created by Kubra A. for Fede Home &middot; <a href="Default.aspx">Anasayfa</a> &middot; <a href="#">Hakkımızda</a> &middot; <a href="#">İletişim</a> &middot; <a href="#">Ürünler</a></p>
            </div>
        </footer>
        <!--Footer-->
    </form>     
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
