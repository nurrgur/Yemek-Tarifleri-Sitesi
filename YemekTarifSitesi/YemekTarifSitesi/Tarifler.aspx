<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekTarifSitesi.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    .auto-style13 {
        width: 457px;
        background-color: #FFCC00;
    }
    .auto-style14 {
        background-color: #FFCC00;
    }
    .auto-style15 {
        background-color: #FFFFFF;
    }
    .auto-style16 {
        width: 518px;
        background-color: #FFFFFF;
    }
    .auto-style19 {
        width: 84px;
        background-color: #FFCC00;
    }
    .auto-style20 {
        width: 100%;
        background-color: #FFCC00;
    }
    .auto-style21 {
        width: 458px;
    }
    .auto-style22 {
        height: 38px;
    }
    .auto-style23 {
        height: 38px;
        width: 457px;
    }
    .auto-style24 {
        font-weight: bold;
        font-size: large;
    }
        .auto-style25 {
            width: 194px;
            height: 31px;
            font-size: large;
            color: #000000;
            background-color: #FFFFFF;
            text-align: left;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style20">
        <tr>
            <td class="auto-style13" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000" ><strong>TARİF LİSTESİ (Onaysız)</strong></td>
            <td class="auto-style14" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000" ><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" style="font-weight: bold; font-size: large" />
                &nbsp;<asp:Button ID="Button2" runat="server" CssClass="auto-style10" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" style="font-weight: bold; font-size: large" />
                </strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style15">
        <asp:DataList ID="DataList1" runat="server" Width="549px">
                        <ItemTemplate>
                            <table class="auto-style16" >
                                <tr>
                                    <td class="auto-style21" >
                                        <asp:Label ID="Label1" runat="server" CssClass="auto-style25" Text='<%# Eval("TarifAd") %>'></asp:Label>
                                    </td>
                                    <td >
                                        <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("tarifid") %>">
                                        <asp:Image ID="Image4" runat="server" Height="30px" Width="30px" ImageUrl="~/icon/mesaj.png" /></a>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
    </asp:Panel>
    <table class="auto-style14" >
        <tr>
            <td class="auto-style13" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000" ><strong>TARİF LİSTESİ (Onaylı)</strong></td>
            <td class="auto-style19" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000" ><strong>
                <asp:Button ID="Button3" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" CssClass="auto-style24" />
                &nbsp;<asp:Button ID="Button4" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" CssClass="auto-style24" />
                </strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="549px" CssClass="auto-style15">
                        <ItemTemplate>
                            <table >
                                <tr>
                                    <td class="auto-style23" >
                                        <asp:Label ID="Label1" runat="server"  Text='<%# Eval("TarifAd") %>'></asp:Label>
                                    </td>
                                    <td class="auto-style22" >
                                        <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("tarifid") %>">
                                        <asp:Image ID="Image4" runat="server" Height="30px" Width="30px" ImageUrl="~/icon/mesaj.png" /></a>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
    </asp:Panel>
</asp:Content>
