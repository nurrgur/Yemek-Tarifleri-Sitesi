<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemekTarifSitesi.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 459px;
        }
    .auto-style5 {
        text-align: center;
    }
    .auto-style6 {
        font-weight: bold;
        font-size: medium;
    }
    .auto-style14 {
        color: #000000;
        height: 37px;
        background-color: #FFCC00;
    }
    .auto-style15 {
        width: 457px;
        background-color: #FFCC00;
    }
    .auto-style16 {
        width: 100%;
        background-color: #FFCC00;
    }
    .auto-style17 {
        width: 100%;
        background-color: #FFFFFF;
    }
    .auto-style18 {
        font-weight: bold;
        font-size: medium;
        width: 194px;
        height: 31px;
        color: #000000;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style16">
        <tr>
            <td class="auto-style15" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000"><strong>HAKKIMIZDA</strong></td>
            <td class="auto-style14" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" style="font-weight: bold; font-size: large" />
                &nbsp;<asp:Button ID="Button2" runat="server" CssClass="auto-style10" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" style="font-weight: bold; font-size: large" />
                </strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style17">
            <tr>
                <td>
                    <asp:TextBox ID="Txthakkimizda" runat="server" TextMode="MultiLine" Width="530px" Height="207px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style18" Text="Güncelle" Width="200px" OnClick="Button3_Click" />
                    <br />
                    </strong></td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>
