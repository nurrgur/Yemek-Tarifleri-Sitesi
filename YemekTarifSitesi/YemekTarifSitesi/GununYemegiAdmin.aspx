<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="YemekTarifSitesi.GununYemegiAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style13 {
            width: 458px;
            background-color: #FFCC00;
        }
        .auto-style14 {
            background-color: #FFCC00;
        }
        .auto-style15 {
            width: 100%;
            background-color: #FFCC00;
        }
        .auto-style16 {
            background-color: #FFFFFF;
        }
        .auto-style18 {
            width: 458px;
            background-color: #FFFFFF;
        height: 40px;
    }
    .auto-style20 {
        background-color: #FFFFFF;
        width: 525px;
    }
    .auto-style21 {
        background-color: #FFFFFF;
        height: 40px;
        text-align: left;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style15">
        <tr>
            <td class="auto-style13" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000"><strong>YEMEK LİSTESİ</strong></td>
            <td class="auto-style14" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000"><strong>
                <asp:Button ID="Button1" runat="server"  Height="30px" Text="+" Width="30px" OnClick="Button1_Click" style="font-weight: bold; font-size: large" />
            &nbsp;<asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" style="font-weight: bold; font-size: large" />
            </strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="550px" CssClass="auto-style16">
            <ItemTemplate>
                <table class="auto-style16" style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #000000" >
                    <tr>
                        <td class="auto-style18" style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #000000" >
                            <strong>
                            <asp:Label ID="Label1" runat="server"  Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style21" style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #000000" >
                            <a href="YemekDuzenle.aspx?yemekid=<%#Eval("yemekid") %>">
                                <asp:Image ID="Image4" runat="server" Height="30px" Width="30px" ImageUrl="~/icon/GununYemegi-icon.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
