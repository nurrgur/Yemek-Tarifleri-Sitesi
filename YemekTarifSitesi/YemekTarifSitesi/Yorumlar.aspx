<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifSitesi.Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 457px;
            background-color: #FFCC00;
        }
        .auto-style18 {
            font-size: large;
        }
        .auto-style19 {
            width: 417px;
        }
        .auto-style20 {
            width: 527px;
            background-color: #FFFFFF;
        }
        .auto-style21 {
            background-color: #FFFFFF;
        }
        .auto-style22 {
            width: 417px;
            background-color: #FFFFFF;
        }
        .auto-style23 {
            width: 73px;
            background-color: #FFCC00;
        }
        .auto-style25 {
            width: 74px;
            background-color: #FFCC00;
        }
        .auto-style28 {
            width: 550px;
            background-color: #FFCC00;
        }
        .auto-style29 {
            width: 550px;
            background-color: #FECC00;
        }
        .auto-style30 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style31 {
            width: 194px;
            height: 31px;
            font-size: large;
            color: #000000;
            background-color: #FFFFFF;
            text-align: left;
        }
        .auto-style32 {
            width: 528px;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <table class="auto-style28">
                    <tr>
                        <td class="auto-style17" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000"><strong>YORUM LİSTESİ (ONAYLANAN)</strong></td>
                        <td class="auto-style23" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000"><strong>
                            <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button1_Click1" CssClass="auto-style30" />
                        &nbsp; <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" CssClass="auto-style30" />
                        </strong></td>
                    </tr>
                </table>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style21">
        <asp:DataList ID="DataList1" runat="server" Width="550px" CssClass="auto-style21">
            <ItemTemplate>
                <table class="auto-style20" style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #000000">
                    <tr>
                        <td class="auto-style19" style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #000000">
                            <strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style31" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </strong>
                        </td>
                        <td style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #000000">
                            <a href='YorumDetay.aspx?Yorumid=<%# Eval("Yorumid") %>'>
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icon/GununYemegi-icon.png" Width="30px" />
                            </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icon/delete-iconn.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
                <table class="auto-style29">
                    <tr>
                        <td class="auto-style17" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000"><strong>YORUM LİSTESİ (ONAY BEKLEYEN) </strong></td>
                        <td class="auto-style25" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000"><strong>
                            <asp:Button ID="Button3" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" CssClass="auto-style30" />
                        &nbsp;
                            <asp:Button ID="Button4" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" CssClass="auto-style30" />
                        </strong></td>
                    </tr>
                </table>

    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style21">
        <asp:DataList ID="DataList2" runat="server" Width="549px" CssClass="auto-style21">
            <ItemTemplate>
                <table class="auto-style20" style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #000000">
                    <tr>
                        <td class="auto-style22" style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #000000">
                            <strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style18" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style21" style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #000000">
                            <a href='YorumDetay.aspx?Yorumid=<%# Eval("Yorumid") %>'>
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icon/GununYemegi-icon.png" Width="30px" />
                            </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icon/delete-iconn.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

</asp:Content>
