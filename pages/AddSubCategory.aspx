<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddSubCategory.aspx.cs" Inherits="WebApplication2.AddSubCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-horizontal">
            <h4>Alt Kategori Ekleme Paneli</h4>
            <hr />
            <!--CATEGORY NAME-->
            <div class="form-group">
                <asp:Label ID="lblSubCategoryName" runat="server" CssClass="col-md-2 control-label" Text="Kategori Adı:"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlCategory" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="ddlCategory"></asp:RequiredFieldValidator>
                </div>
            </div>
            <!--SUB CATEGORY NAME-->
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Alt Kategori Adı:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtSubCategoryName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="txtSubCategoryName"></asp:RequiredFieldValidator>
                </div>
            </div>
            <!--ADD BTN-->
            <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="BtnAddSubCat" runat="server" Text="Ekle" CssClass="btn btn-success" OnClick="BtnAddSubCat_Click"  />
                    </div>
                </div>
        </div>

        <h1>Alt Kategoriler</h1>
        <hr />
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">Tüm Kategorile</div>

            <asp:Repeater ID="rptrSubCategories" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Alt Kategori</th>
                                <th>Kategori</th>
                                <th>Düzenle</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("SubCatID") %></th>
                        <td><%# Eval("SubCatName") %></td>
                        <td><%# Eval("CatName") %></td>
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
