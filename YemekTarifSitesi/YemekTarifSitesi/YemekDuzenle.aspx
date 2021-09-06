<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekTarifSitesi.YemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            text-align: right;
        }

        .auto-style16 {
        background-color: #FFFFFF;
    }
    .auto-style17 {
        font-weight: bold;
        margin-left: 48px;
    }
        .auto-style18 {
            text-align: right;
            height: 31px;
        }
        .auto-style19 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style16" BorderColor="Black" BorderStyle="Groove">
        <table class="auto-style1">
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style13">Yemek Adı:</td>
                <td>
                    <asp:TextBox ID="Txtyemekad" runat="server" Width="300px" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Yemek Malzeme:</td>
                <td>
                    <asp:TextBox ID="Txtmalzeme" runat="server" Height="100px" TextMode="MultiLine" Width="300px" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Yemek Tarif:</td>
                <td>
                    <asp:TextBox ID="TxtTarif" runat="server" Height="200px" TextMode="MultiLine" Width="300px" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Kategori:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px" CssClass="textbox">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Yemek Görüntü:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="300px" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>&nbsp;</td>
                </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Btnguncelle" runat="server" CssClass="auto-style17" OnClick="Btnguncelle_Click" Text="Güncelle" Width="220px" />
                </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Btngununyemegi" runat="server" OnClick="Btngununyemegi_Click" Text="Günün Yemeği Seç" Width="220px" CssClass="auto-style17" />
                </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
