<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="YemekTarifSitesi.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: right;
        }
        .auto-style14 {
            font-size: medium;
            font-weight: bold;
            margin-left: 61px;
        }
        .auto-style15 {
            width: 177px;
            height: auto;
            background-color: #FFFFFF;
            text-align: right;
            font-size: medium;
        }
    .auto-style16 {
        height: 31px;
    }
        .auto-style17 {
            height: 31px;
            width: 177px;
        }
        .auto-style18 {
            width: 177px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="border: medium groove #000000">
        <tr>
            <td class="auto-style17"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Kategori Ad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Kategori Adet:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Resim:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td>
                <strong>
                <asp:Button ID="Button1" runat="server" Height="40px" Text="Güncelle" Width="150px" OnClick="Button1_Click" CssClass="auto-style14" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
