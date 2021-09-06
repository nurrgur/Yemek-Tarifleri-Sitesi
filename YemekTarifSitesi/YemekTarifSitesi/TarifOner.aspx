<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifSitesi.TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 380px;
        }

        .auto-style12 {
            text-align: right;
            width: 203px;
        }

        .auto-style13 {
            margin-left: 52px;
        }

        .auto-style14 {
            width: 203px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Tarif Ad:</strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Malzemeler:</strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="TxtTarifMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Yapılış:</strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Resim:</strong></td>
            <td class="auto-style11">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="textbox" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Tarif Öneren:</strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="TxtTarifOneren" runat="server" Width="250px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Mail Adresi:</strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email" Width="250px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style11"><strong><em>
                <asp:Button ID="BtnTarifOner" runat="server" BackColor="#CCCCCC" Text="Tarif Öner" Width="150px" OnClick="BtnTarifOner_Click" CssClass="auto-style13" />
            </em></strong></td>
        </tr>
    </table>
</asp:Content>
