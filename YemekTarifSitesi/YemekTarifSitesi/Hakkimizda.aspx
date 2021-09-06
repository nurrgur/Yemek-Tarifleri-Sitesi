<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemekTarifSitesi.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: large;
        }
        .auto-style11 {
            font-size: x-large;
            text-align: center;
        }
    .auto-style12 {
        margin-left: 50px;
    }
    .auto-style13 {
        text-align: justify;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style11">
        <strong>HAKKIMIZDA</strong></p>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:Image ID="Image1" runat="server" Height="170px" ImageUrl="~/Resimler/hakkimizda.jpg" Width="450px" CssClass="auto-style12" />
<div>
    &nbsp;</div>
</asp:Content>
