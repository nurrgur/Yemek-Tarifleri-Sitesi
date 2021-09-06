<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifSitesi.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            text-align: left;
            width: 124px;
        }

        .auto-style16 {
            font-size: large;
        }

        .auto-style17 {
            font-weight: bold;
            font-size: large;
        }

        .auto-style19 {
            text-align: right;
            background-color: #FFFFFF;
        }

        .auto-style21 {
            width: 457px;
            background-color: #FFCC00;
        }

        .auto-style23 {
            background-color: #FFCC00;
        }

        .auto-style24 {
            text-align: left;
            width: 414px;
        }

        .auto-style27 {
            width: 549px;
        }

        .auto-style28 {
            font-weight: bold;
            font-size: large;
            width: 549px;
        }

        .auto-style29 {
            width: 457px;
            background-color: #FFCC00;
            font-size: large;
        }

        .auto-style30 {
            width: 546px;
            background-color: #FFFFFF;
        }

        .auto-style31 {
            height: 31px;
        }

        .auto-style32 {
            height: 31px;
            width: 225px;
        }

        .auto-style33 {
            width: 225px;
        }

        .auto-style34 {
            width: 225px;
            text-align: right;
            font-size: large;
        }

        .auto-style35 {
            font-size: medium;
            font-weight: bold;
            margin-left: 21px;
        }

        .auto-style37 {
            width: 225px;
            text-align: right;
            font-size: large;
            height: 35px;
        }

        .auto-style38 {
            height: 35px;
        }

        .auto-style39 {
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style39">
        <table class="auto-style28" style="background-color: #FFCC00">
            <tr>
                <td class="auto-style21" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000"><strong>KATEGORİ LİSTESİ</strong></td>
                <td class="auto-style23" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                    &nbsp;<asp:Button ID="Button2" runat="server" CssClass="auto-style17" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                </strong></td>
            </tr>
        </table>
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="550px" CssClass="auto-style19">
                <ItemTemplate>
                    <table style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #000000">
                        <tr>
                            <td class="auto-style24" style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #000000">
                                <strong>
                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style16" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                                </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</td>
                            <td class="auto-style15" style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #000000"><a href='KategoriDuzenle.aspx?kategoriid=<%#Eval("kategoriid") %>'>
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icon/GununYemegi-icon.png" Width="30px" />
                            </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href='Kategoriler.aspx?kategoriid=<%#Eval("kategoriid") %>&amp;islem=sil' style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #000000">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icon/delete-iconn.png" Width="30px" />
                            </a></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server">
            <table class="auto-style27" style="background-color: #FFCC00">
                <tr>
                    <td class="auto-style29" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000"><strong>KATEGORi EKLEME</strong></td>
                    <td class="auto-style23" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000"><strong>
                        <asp:Button ID="Button5" runat="server" CssClass="auto-style17" Height="30px" OnClick="Button3_Click" Text="+" Width="30px" />
                        &nbsp;
                        <asp:Button ID="Button6" runat="server" CssClass="auto-style17" Height="30px" OnClick="Button4_Click" Text="-" Width="30px" />
                    </strong></td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server">
            <table class="auto-style30">
                <tr>
                    <td class="auto-style32"></td>
                    <td class="auto-style31"></td>
                </tr>
                <tr>
                    <td class="auto-style37">Kategori Adı:</td>
                    <td class="auto-style38">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style34">Kategori Icon:</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style33">&nbsp;</td>
                    <td>
                        <strong>
                            <asp:Button ID="Btnekle" runat="server" CssClass="auto-style35" Height="31px" OnClick="Btnekle_Click" Text="EKLE" Width="141px" />
                        </strong>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
