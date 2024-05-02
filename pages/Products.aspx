<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="WebApplication2.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row" style="padding-top: 50px">
            <asp:Repeater ID="rptrProducts" runat="server">
                <ItemTemplate>
                    <div class="col-sm-3 col-md-3">
                        <a style="text-decoration: none;" href="ProductView.aspx?PID=<%#Eval("PID") %>">
                            <div class="img-thumbnail">
                                <img class="img-fluid" src="Images/ProductImages/<%#Eval("PID") %>/<%#Eval("ImageName") %><%#Eval("Extention") %>" alt="<%#Eval("ImageName") %>">
                                <div class="p-2">
                                    <div class="probrand pb-1"><%#Eval("BrandName") %></div>
                                    <div class="proName"><%#Eval("PName") %></div>
                                    <div class="proPrice"><span class="proOgPrice"><%#Eval("PPrice") %></span> <%#Eval("PSellPrice") %> <span class="proPriceDiscount">(<%#Eval("DiscAmount") %>  ₺ indirimli)</span></div>
                                </div>
                            </div>
                        </a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
