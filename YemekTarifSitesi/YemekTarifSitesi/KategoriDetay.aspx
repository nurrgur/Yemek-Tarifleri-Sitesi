<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="YemekTarifSitesi.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style11 {
            font-size: xx-large;
        }
        .auto-style12 {
            width: 100%;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;<asp:DataList ID="DataList2" runat="server" Width="547px">
    <ItemTemplate>
        <table >
            <tr>
                <td class="auto-style12"><strong>


                    <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>"><asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekAd") %>' CssClass="auto-style11"></asp:Label></a>
             
                
                </strong></td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Malzemeler:</strong>
                    </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Yemek Tarifi: </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12" >
                    <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl='<%# Eval("YemekResim") %>' Width="510px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style12" >&nbsp;<strong>Eklenme Tarihi:</strong>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    &nbsp; - <strong>Puan:</strong> <strong><em>
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </em></strong></td>
            </tr>
            <tr>
                <td class="auto-style12" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #FFFFFF;">&nbsp;</td>
            </tr>
            <tr>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</p>
</asp:Content>
