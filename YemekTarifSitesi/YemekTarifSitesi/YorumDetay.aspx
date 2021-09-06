<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="YemekTarifSitesi.YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style14 {
            width: 550px;
            background-color: #FFFFFF;
        }
        .auto-style15 {
            text-align: right;
            width: 206px;
        }
        .auto-style16 {
            width: 360px;
        }
        .auto-style17 {
            text-align: right;
            height: 33px;
            width: 206px;
        }
        .auto-style18 {
            width: 360px;
            height: 33px;
        }
        .auto-style19 {
            height: 31px;
            width: 206px;
        }
        .auto-style20 {
            width: 360px;
            height: 31px;
        }
        .auto-style21 {
            width: 206px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style14" style="border: medium groove #000000">
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Ad Soyad:</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="txtadsoyad" runat="server" Width="200px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Mail adresi:</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="Txtmail" runat="server" Width="200px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>İçerik:</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="Txticerik" runat="server" Height="100px" TextMode="MultiLine" Width="200px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>Yemek:</strong></td>
            <td class="auto-style18">
                <asp:TextBox ID="Txtyemek" runat="server" Width="200px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style16">
                <strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Text="Onayla" Width="150px" OnClick="Button1_Click" style="font-size: medium; font-weight: bold; margin-left: 42px" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style20"></td>
        </tr>
    </table>
</asp:Content>
