<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddSize.aspx.cs" Inherits="WebApplication2.AddSize" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-horizontal">
            <h4>Boyut Ekleme Paneli</h4>
            <hr />
            <!--SIZE NAME-->
            <div class="form-group">
                <asp:Label ID="lblCategoryName" runat="server" CssClass="col-md-2 control-label" Text="Ölçü:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtSizeName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="txtSizeName"></asp:RequiredFieldValidator>
                </div>
            </div>
            <!--BRAND-->
            <div class="form-group">
                <asp:Label ID="lblBrandName" runat="server" CssClass="col-md-2 control-label" Text="Marka Adı:"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlBrand" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="ddlBrand"></asp:RequiredFieldValidator>
                </div>
            </div>
            <!--CATEGORY NAME-->
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Kategori Adı:"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlCategory" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="ddlCategory"></asp:RequiredFieldValidator>
                </div>
            </div>
            <!--SUBCATEGORY NAME-->
            <div class="form-group">
                <asp:Label ID="lblSubCatName" runat="server" CssClass="col-md-2 control-label" Text="Alt Kategori Adı:"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlSubCat" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="ddlSubCat"></asp:RequiredFieldValidator>
                </div>
            </div>
            <!--GENDER-->
            <div class="form-group">
                <asp:Label ID="lblGender" runat="server" CssClass="col-md-2 control-label" Text="Cinsiyet:"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlGender" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="ddlGender"></asp:RequiredFieldValidator>
                </div>
            </div>
            <!--ADD BTN-->
            <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="BtnAddSize" runat="server" Text="Ekle" CssClass="btn btn-success" OnClick="BtnAddSize_Click" />
                    </div>
                </div>
        </div>

        <h1>Ölçü</h1>
        <hr />
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">Tüm Ölçüler</div>

            <asp:Repeater ID="rptrSize" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Ad</th>
                                <th>Marka</th>
                                <th>Kategori</th>
                                <th>Alt Kategori</th>
                                <th>Cinsiyet</th>
                                <th>Düzenle</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("SizeID") %></th>
                        <td><%# Eval("SizeName") %></td>
                        <td><%# Eval("Name") %></td>
                        <td><%# Eval("CatName") %></td>
                        <td><%# Eval("SubCatName") %></td>
                        <td><%# Eval("GenderName") %></td>
                        <td>Edit</td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
            </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
</asp:Content>
