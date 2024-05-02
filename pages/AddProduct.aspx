<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="WebApplication2.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="form-horizontal">
            <h4>Ürün Ekleme Paneli</h4>
            <hr />
            <!--PRODUCT NAME-->
            <div class="form-group">
                    <asp:Label ID="lblProductName" runat="server" CssClass="col-md-2 control-label" Text="Ürün Adı:"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtPName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="txtPName"></asp:RequiredFieldValidator>
                    </div>
            </div>
            <!--PRODUCT PRICE-->
            <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Ürün Fiyatı:"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>* Sayıları nokta ile ayırın.
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
                    </div>
             </div>
            <!--PRODUCT SELL PRICE-->
            <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Satış Fiyatı:"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtSellPrice" CssClass="form-control" runat="server"></asp:TextBox> Sayıları nokta ile ayırın.
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="txtSellPrice"></asp:RequiredFieldValidator>
                    </div>
           </div>
           <!--BRANDS-->
            <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Ürün:"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlBrands" runat="server" CssClass="form-control"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="ddlBrands" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
           </div>
            <!--CATEGORY-->
            <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Kategori:"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlCategory" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true" runat="server" CssClass="form-control"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="ddlCategory" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
           </div>
            <!--SUB CATEGORY-->
            <div class="form-group">
                    <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Alt Kategori:"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlSubCategory" OnSelectedIndexChanged="ddlSubCategory_SelectedIndexChanged" AutoPostBack="true" runat="server" CssClass="form-control"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="ddlSubCategory" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
           </div>
            <!--GENDER-->
            <div class="form-group">
                    <asp:Label ID="Label18" runat="server" CssClass="col-md-2 control-label" Text="Cinsiyet:"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlGender" OnSelectedIndexChanged="ddlGender_SelectedIndexChanged" AutoPostBack="true" runat="server" CssClass="form-control"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="ddlGender" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
           </div>
            <!--SIZE-->
            <div class="form-group">
                    <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="Boyut:"></asp:Label>
                    <div class="col-md-3">
                        <asp:CheckBoxList ID="cblSize" CssClass="form-control" runat="server" RepeatDirection="Horizontal"></asp:CheckBoxList>
                        
                    </div>
           </div>
            <!--QUANTITY-->
            <div class="form-group">
                    <asp:Label ID="Label19" runat="server" CssClass="col-md-2 control-label" Text="Miktar:"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="txtSellPrice"></asp:RequiredFieldValidator>
                    </div>
           </div>

             <!--PRODUCT DESCRIPTION-->
            <div class="form-group">
                    <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="Tanımlama:"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtDesc" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="txtDesc"></asp:RequiredFieldValidator>
                    </div>
           </div>
            <!--PRODUCT DETAIL-->
            <div class="form-group">
                    <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label" Text="Ürün Detayı:"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtPDetail" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="txtPDetail"></asp:RequiredFieldValidator>
                    </div>
           </div>
             <!--PRODUCT MATERIAL & CARE-->
            <div class="form-group">
                    <asp:Label ID="Label9" runat="server" CssClass="col-md-2 control-label" Text="Malzeme ve Bakımı:"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtMatCare" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="txtMatCare"></asp:RequiredFieldValidator>
                    </div>
           </div>
             <!--PRODUCT IMAGE 01-->
            <div class="form-group">
                    <asp:Label ID="Label10" runat="server" CssClass="col-md-2 control-label" Text="Resim Yükle:"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="fuImg01" CssClass="form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="fuImg01"></asp:RequiredFieldValidator>
                    </div>
           </div>
            <!--PRODUCT IMAGE 02-->
            <div class="form-group">
                    <asp:Label ID="Label11" runat="server" CssClass="col-md-2 control-label" Text="Resim Yükle:"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="fuImg02" CssClass="form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="fuImg02"></asp:RequiredFieldValidator>
                    </div>
           </div>
            <!--PRODUCT IMAGE 03-->
            <div class="form-group">
                    <asp:Label ID="Label12" runat="server" CssClass="col-md-2 control-label" Text="Resim Yükle:"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="fuImg03" CssClass="form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="fuImg03"></asp:RequiredFieldValidator>
                    </div>
           </div>
            <!--PRODUCT IMAGE 04-->
            <div class="form-group">
                    <asp:Label ID="Label13" runat="server" CssClass="col-md-2 control-label" Text="Resim Yükle:"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="fuImg04" CssClass="form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="fuImg04"></asp:RequiredFieldValidator>
                    </div>
           </div>
            <!--PRODUCT IMAGE 05-->
            <div class="form-group">
                    <asp:Label ID="Label14" runat="server" CssClass="col-md-2 control-label" Text="Resim Yükle:"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="fuImg05" CssClass="form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="fuImg05"></asp:RequiredFieldValidator>
                    </div>
           </div>
            <!--FREE DELIVERY-->
            <div class="form-group">
                    <asp:Label ID="Label17" runat="server" CssClass="col-md-2 control-label" Text="Kargo Bedava:"></asp:Label>
                    <div class="col-md-3">
                        <asp:CheckBox ID="cbFD" runat="server" />
                    </div>
           </div>
            <!--14 DAYS RETURN-->
            <div class="form-group">
                    <asp:Label ID="Label15" runat="server" CssClass="col-md-2 control-label" Text="14 Gün İçinde İade:"></asp:Label>
                    <div class="col-md-3">
                        <asp:CheckBox ID="cb14Ret" runat="server" />
                    </div>
           </div>
            <!--PRODUCT CODE-->
            <div class="form-group">
                    <asp:Label ID="Label16" runat="server" CssClass="col-md-2 control-label" Text="KOD:"></asp:Label>
                    <div class="col-md-3">
                        <asp:CheckBox ID="cbCOD" runat="server" />
                    </div>
           </div>
            <!--ADD BTN-->
            <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="BtnAdd" runat="server" Text="Ekle" CssClass="btn btn-success" OnClick="BtnAdd_Click" />
                    </div>
                </div>

        </div>
    </div>

</asp:Content>
