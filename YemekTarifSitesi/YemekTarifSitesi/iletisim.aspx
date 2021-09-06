<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="YemekTarifSitesi.iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            text-align: right;
        }
        .auto-style12 {
            width: 314px;
        }
        .auto-style13 {
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style14 {
            font-size: medium;
            font-weight: bold;
            margin-left: 51px;
        }
        .auto-style15 {
            width: 314px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="2" class="auto-style13"><strong>BİZE ULAŞABİLİRSİNİZ</strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Ad-Soyad:</strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Mail Adresiniz:</strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox3" runat="server" Width="200px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Konu:</strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox4" runat="server" Width="200px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Mesaj:</strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox5" runat="server" Height="70px" TextMode="MultiLine" Width="200px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style15">
                <strong>
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="GÖNDER" Width="106px" OnClick="Button1_Click" CssClass="auto-style14" />
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>
