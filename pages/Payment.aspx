<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="WebApplication2.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <asp:HiddenField ID="hdCartAmount" runat="server" />
        <asp:HiddenField ID="hdCartDiscount" runat="server" />
        <asp:HiddenField ID="hdTotalPayed" runat="server" />
        <asp:HiddenField ID="hfPidSizeID" runat="server" />

        <div class="row" style="padding-top: 20px;">
            <div class="col-md-9">
                <div class="form-horizontal">
                    <h3>Sipariş Adresi</h3>
                    <hr />
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" CssClass="control-label" Text="İsim"></asp:Label>
                        <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" CssClass="control-label" Text="Adres"></asp:Label>
                        <asp:TextBox ID="txtAddress" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Pin Kodu"></asp:Label>
                        <asp:TextBox ID="txtPinCode" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtPinCode"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" CssClass="control-label" Text="Telefon Numarası"></asp:Label>
                        <asp:TextBox ID="txtMobileNumber" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtMobileNumber"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
        <div class="col-md-3" runat="server" id="divPriceDetails">
                <div style="border-bottom: 1px solid #eaeaec;">
                    <h5 class="proNameViewCart">FİYAT DETAYLARI</h5>
                    <div>
                        <label>Sepet Toplamı</label>
                        <span class="float-right priceGray" id="spanCartTotal" runat="server"></span>
                    </div>
                    <div>
                        <label>Toplam İndirim</label>
                        <span class="float-right priceGreen" id="spanDiscount" runat="server"></span>
                    </div>
                </div>
                <div>
                    <div class="proPriceView">
                        <label>Total</label>
                        <span class="float-right" id="spanTotal" runat="server"></span>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <h3>Ödeme Yöntemini Seçin</h3>
                <hr />
                <ul class="nav nav-tabs">
                    <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#wallets">CÜZDANLAR</a></li>
                    <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#cards">KREDİ/DEBIT KARTLAR</a></li>
                    <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#cod">KAPIDA ÖDEME</a></li>
                </ul>

                <div class="tab-content">
                    <div id="wallets" class="tab-pane fade show active">
                        <h3>HOME</h3>
                        <p>Some content.</p>
                        <asp:Button ID="btnPaytr" OnClick="btnPaytr_Click"  runat="server" Text="Paytr ile Öde" />
                    </div>
                    <div id="cards" class="tab-pane fade">
                        <h3>Menu 1</h3>
                        <p>Some content in menu 1.</p>
                    </div>
                    <div id="cod" class="tab-pane fade">
                        <h3>Menu 2</h3>
                        <p>Some content in menu 2.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
