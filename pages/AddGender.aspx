<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddGender.aspx.cs" Inherits="WebApplication2.AddGender" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="form-horizontal">
            <h4>Cinsiyet Ekleme Paneli</h4>
            <hr />
            <!--GENDER NAME-->
            <div class="form-group">
                <asp:Label ID="lblGenderName" runat="server" CssClass="col-md-2 control-label" Text="Cinsiyet:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtGender" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="Bu alan gerekli!" ControlToValidate="txtGender"></asp:RequiredFieldValidator>
                </div>
            </div>
            <!--ADD BTN-->
            <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="BtnAddGender" runat="server" Text="Ekle" CssClass="btn btn-success" OnClick="BtnAddGender_Click"  />
                    </div>
                </div>
        </div>

        <h1>Cinsiyet</h1>
        <hr />
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">Tüm Cinsiyetler</div>

            <asp:Repeater ID="rptrGender" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Cinsiyet</th>
                                <th>Düzenle</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("GenderID") %></th>
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

    </div>

</asp:Content>
