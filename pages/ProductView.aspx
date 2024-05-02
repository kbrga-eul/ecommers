<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="WebApplication2.ProductView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row" style="padding-top: 50px">
            <div class="col-md-5">
                <div style="max-width: 350px" class="thumbnail">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                        </ol>
                        <div class="carousel-inner">
                            <asp:Repeater ID="rptrImages" runat="server">
                                <ItemTemplate>
                                    <div class="carousel-item <%# GetActiveClass(Container.ItemIndex) %>">
                                        <img src="Images/ProductImages/<%#Eval("PID") %>/<%#Eval("Name") %><%#Eval("Extention") %>" class="d-block w-100" alt="<%#Eval("Name") %>" onerror="this.src='Images/noimage.jpg'" />
                                    </div>    
                                </ItemTemplate>
                            </asp:Repeater>
                            <button class="carousel-control-prev" type="button" data-target="#carouselExampleIndicators" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            </button>
                            <button class="carousel-control-next" type="button" data-target="#carouselExampleIndicators" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <asp:Repeater ID="rptrProductDetails" OnItemDataBound="rptrProductDetails_ItemDataBound" runat="server">
                        <ItemTemplate>
                            <div class="divDet1 pt-2">
                                <h1 class="proNameView"><%#Eval("PName") %></h1>
                                <span class="proOgPriceView"><%#Eval("PPrice") %></span>
                                <span class="proPriceDiscountView"><%# string.Format("{0}",Convert.ToInt64(Eval("PPrice"))-Convert.ToInt64(Eval("PSellPrice"))) %> İndirim</span>
                                <p class="proPriceView"><%#Eval("PSellPrice") %></p>
                            </div>
                            <div>
                                <h5 class="h5Size">Ölçü</h5>
                                <div>
                                    <asp:RadioButtonList ID="rblSize" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    </asp:RadioButtonList>
                                </div>
                                <div class="divDet1">
                                    <asp:Button ID="btnAddToCard" OnClick="btnAddToCard_Click" CssClass="mainButton" runat="server" Text="Sepete Ekle" />
                                    <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                                </div>
                                <div class="divDet1">
                                    <h5 class="h5Size">Açıklama:</h5>
                                    <p>
                                        <%#Eval("PDescription") %>
                                    </p>
                                    <h5 class="h5Size">Ürün Detayı:</h5>
                                    <p>
                                        <%#Eval("PProductDetails") %>
                                    </p>
                                    <h5 class="h5Size">Malzeme & Bakım:</h5>
                                    <p>
                                        <%#Eval("PMaterialCare") %>
                                    </p>
                                </div>
                                <div>
                                    <p><%# ((int)Eval("FreeDelivery")==1)?"Ücretsiz Kargo":"" %> </p>
                                    <p><%# ((int)Eval("14DayRet")==1)?"14 İçinde İade":"" %> </p>
                                    <p><%# ((int)Eval("COD")==1)?"Kapıda Ödeme":"" %> </p>
                                </div>
                                <asp:HiddenField ID="hfCatID" Value='<%# Eval("PCategoryID") %>' runat="server" />
                                <asp:HiddenField ID="hfSubCatID" Value='<%# Eval("PSubCatID") %>' runat="server" />
                                <asp:HiddenField ID="hfGenderID" Value='<%# Eval("PGender") %>' runat="server" />
                                <asp:HiddenField ID="hfBrandID" Value='<%# Eval("PBrandID") %>' runat="server" />
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
