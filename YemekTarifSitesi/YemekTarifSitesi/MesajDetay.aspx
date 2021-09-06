<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="YemekTarifSitesi.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        text-align: right;
    }
        .auto-style13 {
            width: 100%;
            background-color: #FFFFFF;
        }
        .auto-style14 {
            text-align: right;
            background-color: #FFFFFF;
            width: 177px;
        }
        .auto-style15 {
            width: 177px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style13" style="border: medium groove #000000">
    <tr>
        <td class="auto-style15">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14">Gonderen:</td>
        <td>
            <asp:TextBox ID="Txtgonderen" runat="server" Width="250px" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">Başlık:</td>
        <td>
            <asp:TextBox ID="Txtbaslik" runat="server" Width="250px" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">Mail Adresi:</td>
        <td>
            <asp:TextBox ID="Txtmail" runat="server" Width="250px" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">İçerik:</td>
        <td>
            <asp:TextBox ID="Txticerik" runat="server" Height="200px" TextMode="MultiLine" Width="250px" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
