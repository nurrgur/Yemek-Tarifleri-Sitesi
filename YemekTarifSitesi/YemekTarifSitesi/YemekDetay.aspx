<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifSitesi.YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: x-large;
        }

        .auto-style6 {
            font-size: large;
        }

        .auto-style7 {
            height: 30px;
        }

        .auto-style8 {
            text-align: right;
            width: 173px;
        }

        .auto-style9 {
            height: 30px;
            width: 173px;
        }

        .auto-style10 {
            width: 173px;
        }

        .auto-style12 {
            text-align: left;
        }

        .auto-style11 {
            font-weight: bold;
            margin-left: 22px;
        }
        .auto-style13 {
            text-align: right;
            width: 173px;
            color: #000000;
            font-size: medium;
            background-color: #EBE5D1;
        }
        .auto-style14 {
            width: 173px;
            background-color: #EBE5D1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
        <asp:DataList ID="DataList2" runat="server" Width="548px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("YorumAdSoyad") %>' CssClass="auto-style6"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="auto-style4">Yorum:</span> <strong>
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        </strong></td>
                    </tr>
                    <tr>
                        <td><span class="auto-style4">Yorum Tarihi:&nbsp;</span> <strong><em>
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </em></strong></td>
                    </tr>
                    <tr>
                        <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #FFFFFF">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <div style="background-color: #FFFFFF">YORUM YAPMA PANELİ</div>
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style7"></td>
                </tr>
    </strong>
    <tr>
        <td class="auto-style13"><strong>Ad-Soyad:</strong></td>
        <strong>
            <td><strong>
                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px" CssClass="textbox"></asp:TextBox>
            </strong></td>
        </strong>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Mail:</strong></td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Yorumunuz:</strong></td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Height="150px" TextMode="MultiLine" Width="200px" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style12"><strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Height="30px" OnClick="Button1_Click" Text="Yorum Yap" Width="150px" />
        </strong></td>
    </tr>
    <tr>
        <td class="auto-style14">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    </table>
    </asp:Panel>
</asp:Content>
