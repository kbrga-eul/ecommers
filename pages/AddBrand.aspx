<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddBrand.aspx.cs" Inherits="WebApplication2.AddBrand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="form-horizontal">
            <h4>Marka Ekleme Paneli</h4>
            <hr />
            <!--BRAND NAME-->
            <div class="form-group">
                <asp:Label ID="lblBrandName" runat="server" CssClass="col-md-2 control-label" Text="Marka Adı:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtBrandName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="txtBrandName"></asp:RequiredFieldValidator>
                </div>
            </div>
            <!--ADD BTN-->
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="BtnAddBrand" runat="server" Text="Ekle" CssClass="btn btn-success" OnClick="BtnAddBrand_Click" />
                </div>
            </div>
        </div>

        <h1>Ürünler</h1>
        <hr />
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">Tüm Ürünler</div>

            <asp:Repeater ID="rptrBrands" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Marka</th>
                                <th>Düzenle</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("BrandID") %></th>
                        <td><%# Eval("Name") %></td>
                        <td>Edit</td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
            </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>

    </div>

</asp:Content>
