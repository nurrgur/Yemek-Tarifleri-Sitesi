<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="YemekTarifSitesi.TarifOnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 31px;
        }

        .auto-style7 {
            text-align: right;
        }

        .auto-style13 {
        text-align: right;
        font-size: medium;
        width: 189px;
    }
    .auto-style14 {
        text-align: right;
        color: #000000;
        width: 187px;
        font-size: medium;
    }
    .auto-style15 {
        width: 189px;
    }
    .auto-style16 {
        text-align: right;
        font-size: medium;
        width: 187px;
        height: 30px;
    }
    .auto-style17 {
        height: 30px;
    }
    .auto-style18 {
        width: 194px;
        color: #000000;
        height: 37px;
        font-weight: bold;
        font-size: medium;
        margin-left: 80px;
    }
    .auto-style19 {
        background-color: #FFFFFF;
    }
        .auto-style20 {
            height: 31px;
            width: 194px;
            font-size: large;
            color: #000000;
            text-align: left;
            background-color: #FFFFFF;
        }
        .auto-style21 {
            text-align: right;
            font-size: medium;
            width: 187px;
        }
        .auto-style22 {
            width: 187px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style19">
        <table class="auto-style1" style="border: medium groove #000000">
            <tr>
                <td class="auto-style21"></td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style21"><strong>Tarif Adı:</strong></td>
                <strong>
                    <td><strong>
                        <asp:TextBox ID="txttarifad" runat="server" Height="20px" Width="300px" CssClass="textbox"></asp:TextBox>
                    </strong></td>
                </strong>
            </tr>
            <tr>
                <td class="auto-style16"><strong>Tarif Malzemeler:</strong></td>
                <td class="auto-style17">
                    <asp:TextBox ID="txtmalzemeler" runat="server" Height="20px" Width="300px" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21"><strong>Yapılış:</strong></td>
                <td>
                    <asp:TextBox ID="txtyapilis" runat="server" Height="150px" TextMode="MultiLine" Width="300px" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21"><strong>Tarif Resim:</strong></td>
                <td class="auto-style20">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="300px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style21"><strong>Tarif Öneren:</strong></td>
                <td class="auto-style20">
                    <asp:TextBox ID="txttarifoneren" runat="server" Width="300px" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21"><strong>Öneren Mail:</strong></td>
                <td>
                    <asp:TextBox ID="txtmail" runat="server" Width="300px" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Kategori:</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px" CssClass="textbox">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnOnayla0" runat="server" CssClass="auto-style18" Height="30px" OnClick="BtnOnayla_Click" Text="Onayla" Width="150px" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
