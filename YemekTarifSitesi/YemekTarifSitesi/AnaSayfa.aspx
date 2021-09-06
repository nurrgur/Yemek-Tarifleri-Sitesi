<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="YemekTarifSitesi.AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="547px">
        <ItemTemplate>
            <table>
                <tr>
                    <td><strong>
                        <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>">
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekAd") %>' style="font-size: xx-large"></asp:Label></a>
                    </strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Malzemeler:</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td><strong>Yemek Tarifi: </strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image2" runat="server" Height="202px" ImageUrl='<%# Eval("YemekResim") %>' Width="502px" CssClass="auto-style9" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<strong>Eklenme Tarihi:</strong>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp; - <strong>Puan:</strong> <strong><em>
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        </em></strong></td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #FFFFFF">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
