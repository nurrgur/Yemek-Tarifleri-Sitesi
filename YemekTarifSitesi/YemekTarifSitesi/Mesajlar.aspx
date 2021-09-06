<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="YemekTarifSitesi.Mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style13 {
            color: #000000;
            height: 37px;
            text-align: left;
            background-color: #FFCC00;
        }

        .auto-style14 {
            width: 457px;
            background-color: #FFCC00;
        }

        .auto-style15 {
            background-color: #FFFFFF;
        }
        .auto-style16 {
            width: 100%;
            background-color: #FFCC00;
        }
        .auto-style17 {
            background-color: #FFFFFF;
            height: 38px;
            width: 457px;
        }
        .auto-style18 {
            height: 38px;
        }
    .auto-style19 {
        width: 194px;
        height: 31px;
        font-size: large;
        color: #000000;
        background-color: #FFFFFF;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style16">
        <tr>
            <td class="auto-style14" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000"><strong>MESAJ LİSTESİ</strong></td>
            <td class="auto-style13" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" Style="font-size: large; font-weight: bold" />
                &nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" CssClass="auto-style10" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" Style="font-size: large; font-weight: bold" />
            </strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style15">
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:DataList ID="DataList1" runat="server" Width="540px">
                            <ItemTemplate>
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style17">
                                            <strong>
                                            <asp:Label ID="Label1" runat="server" CssClass="auto-style19" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                                            </strong>&nbsp;</td>
                                        <td class="auto-style18"><a href='MesajDetay.aspx?Mesajid=<%#Eval("mesajid") %>'>
                                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/icon/mesaj.png" Width="30px" />
                                        </a></td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
