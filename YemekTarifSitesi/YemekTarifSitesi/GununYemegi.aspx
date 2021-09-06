<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifSitesi.GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            text-align: right;
        }

        .auto-style12 {
            font-size: xx-large;
        }
        .auto-style13 {
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style11">
        <strong><span class="auto-style9">~Günün Yemeği~&nbsp;&nbsp;</span></strong>
    </div>

    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table>
                <tr>
                    <td colspan="2" class="auto-style5"><strong>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekAd") %>' CssClass="auto-style12"></asp:Label>
                    </strong></td>
                </tr>
                <tr>
                    <td><strong>Malzemeler</strong></td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>' CssClass="auto-style4"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><strong>Yapılışı</strong></td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>' CssClass="auto-style4"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image2" runat="server" Height="174px" ImageUrl='<%# Eval("YemekResim") %>' Width="486px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><strong><span>Puan:</span></strong><em><asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </em>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><span class="auto-style4"><strong>Eklenme Tarihi: </strong></span>&nbsp;<asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

    </p>
</asp:Content>
