<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifSitesi.Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style13 {
            width: 550px;
            background-color: #FFCC00;
        }

        .auto-style15 {
            width: 414px;
            background-color: #FFFFFF;
        }

        .auto-style24 {
            text-align: left;
            width: 414px;
        }

        .auto-style25 {
            text-align: left;
            width: 509px;
        }

        .auto-style26 {
            text-align: left;
            height: 34px;
            background-color: #FFCC00;
        }

        .auto-style27 {
            height: 34px;
            width: 457px;
            font-size: large;
            background-color: #FFCC00;
        }

        .auto-style28 {
            text-align: left;
            background-color: #FFCC00;
        }

        .auto-style29 {
            text-align: left;
            width: 457px;
            background-color: #FFCC00;
        }

        .auto-style30 {
            font-size: large;
        }

        .auto-style31 {
            background-color: #FFCC00;
        }

        .auto-style33 {
            background-color: #FFFFFF;
        }
        .auto-style34 {
            text-align: left;
            width: 528px;
        }
        .auto-style35 {
            text-align: right;
            font-size: large;
        }
        .auto-style36 {
            margin-left: 85px;
        }
        .auto-style37 {
            width: 100%;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style13">
            <tr>
                <td class="auto-style27" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000"><strong>YEMEK LİSTESİ</strong></td>
                <td class="auto-style26" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000"><strong>
                    <asp:Button ID="BtnListele" runat="server" CssClass="auto-style10" Height="30px" Text="+" Width="30px" OnClick="BtnListele_Click" Style="font-weight: bold; font-size: large" />
                    &nbsp;
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Height="30px" OnClick="Button2_Click" Style="font-size: large; font-weight: bold" Text="-" Width="30px" />
                </strong></td>
            </tr>
        </table>
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style33">
            <asp:DataList ID="DataList1" runat="server" Width="500px" CssClass="auto-style33" Style="background-color: #FFFFFF">
                <ItemTemplate>
                    <table class="auto-style34" style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #000000">
                        <tr>
                            <td class="auto-style15" style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #000000">
                                <strong class="auto-style24">
                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style25" Text='<%# Eval("YemekAd") %>' Style="font-size: large"></asp:Label>
                                </strong>
                            </td>
                            <td class="auto-style33" style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #000000">&nbsp;<a href='YemekDuzenle.aspx?yemekid=<%#Eval("yemekid") %>'><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icon/GununYemegi-icon.png" Width="30px" />
                                </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="Yemekler.aspx?yemekid=<%#Eval("yemekid") %>&islem=sil">
                                    <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icon/delete-iconn.png" Width="30px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" CssClass="auto-style31">
            <table class="auto-style37">
                <tr>
                    <td class="auto-style29" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000"><strong class="auto-style19"><span class="auto-style30">YEMEK EKLEME&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
                    <td class="auto-style28" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style10" Height="30px" OnClick="Button3_Click" Style="font-weight: bold; font-size: large" Text="+" Width="30px" />
                        &nbsp;
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style10" Height="30px" OnClick="Button4_Click" Style="font-weight: bold; font-size: large" Text="-" Width="30px" />
                    </strong></td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" CssClass="auto-style33">
            <table>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style35">Yemek Adı:</td>
                    <td>
                        <asp:TextBox ID="Txtyemekad" runat="server" Width="350px" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style35">Yemek Malzeme:</td>
                    <td>
                        <asp:TextBox ID="Txtmalzeme" runat="server" Height="100px" TextMode="MultiLine" Width="350px" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style35">Yemek Tarif:</td>
                    <td>
                        <asp:TextBox ID="TxtTarif" runat="server" Height="200px" TextMode="MultiLine" Width="350px" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style35">Kategori:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="350px" CssClass="textbox">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Btnekle" runat="server" Text="EKLE" Width="200px" OnClick="Btnekle_Click" CssClass="auto-style36" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
