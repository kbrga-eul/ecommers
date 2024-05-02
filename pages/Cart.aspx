<%@ Page Title="Cart" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WebApplication2.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="row" style="padding-top: 20px;">
            <div class="col-12">
                  <h5 class="proNameViewCart" runat="server" id="h5NoItems"></h5>
            </div>
            <div class="col-md-9">
                <asp:Repeater ID="rptCartProducts" runat="server">
                    <ItemTemplate>
                        <div class="border p-3 mb-3">
                            <div class="media my-3" style="border: 1px solid #eaeaec;">
                            <div class="align-self-center mr-3"></div>
                            <a href="ProductView.aspx?PID=<%#Eval("PID") %>" target="_blank">
                                <img width="110px" class="media-object" src="Images/ProductImages/<%#Eval("PID")%>/<%#Eval("Name")%><%#Eval("Extention")%>" alt="<%#Eval("Name") %>" onerror="this.src='images/noimage.jpg'" />
                            </a>
                        </div>
                        <div class="media-body">
                            <h5 class="media-heading proNameViewCart"><%#Eval("PName") %></h5>
                            <p class="proPriceDiscountView">Ölçü: <%#Eval("SizeNamee") %></p>
                            <span class="proPriceView">Fiyat: <%#Eval("PSellPrice","{0:c}") %>₺</span>
                            <span class="proOgPriceView">Önceki Fiyat: <%#Eval("PPrice","{0:0,00}") %>₺</span>
                            <p>
                                <asp:Button CommandArgument='<%#Eval("PID")+"-"+ Eval("SizeIDD")%>' ID="btnRemoveItem" OnClick="btnRemoveItem_Click" CssClass="removeButton" runat="server" Text="Sepetten Çıkar" />
                            </p>
                        </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                 </div>


                <div class="col-md-3" runat="server" id="divPriceDetails">
                    <div style="border-bottom: 1px solid #eaeaec;">
                        <h5 class="proNameViewCart">FİYAT DETAYI:</h5>
                        <div>
                            <label>Sepet Toplamı</label>
                            <span class="float-right priceGray" id="spanCartTotal" runat="server"></span>
                        </div>
                        <div>
                            <label>İndirim</label>
                            <span class="float-right priceGreen" id="spanDiscount" runat="server"></span>
                        </div>
                    </div>
                    <div>
                        <div class="proPriceView">
                            <label>Total</label>
                            <span class="float-right" id="spanTotal" runat="server"></span>
                        </div>
                        <div>
                            <asp:Button ID="btnBuyNow" CssClass="buyNowBtn" OnClick="btnBuyNow_Click" runat="server" Text="Alışverişi Tamamla" />
                        </div>
                    </div>
                </div>                   
            </div>
        </div>
</asp:Content>
