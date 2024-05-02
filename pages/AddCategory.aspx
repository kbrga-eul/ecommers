<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="WebApplication2.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="form-horizontal">
            <h4>Kategori Ekleme Paneli</h4>
            <hr />
            <!--CATEGORY NAME-->
            <div class="form-group">
                <asp:Label ID="lblCategoryName" runat="server" CssClass="col-md-2 control-label" Text="Kategori Adı:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtCategoryName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="txtCategoryName"></asp:RequiredFieldValidator>
                </div>
            </div>
            <!--ADD BTN-->
            <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="BtnAddCategory" runat="server" Text="Ekle" CssClass="btn btn-success" OnClick="BtnAddCategory_Click"  />
                    </div>
                </div>
        </div>

        <h1>Kategoriler</h1>
        <hr />
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">Tüm Kategorile</div>

            <asp:Repeater ID="rptrCategories" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Kategori</th>
                                <th>Düzenle</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("CatID") %></th>
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
