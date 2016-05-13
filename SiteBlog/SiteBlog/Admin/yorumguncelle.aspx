<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="yorumguncelle.aspx.cs" Inherits="SiteBlog.Admin.yorumguncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 160px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="background-color: #669999">&nbsp;</td>
            <td style="background-color: #669999">&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="background-color: #669999">Gönderen Kişi:</td>
            <td style="background-color: #669999">
                <asp:TextBox ID="txt_AdSoyad" runat="server" CssClass="textboxGor" Height="16px" Width="200px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="background-color: #669999">Yorum: </td>
            <td style="background-color: #669999">
                <asp:TextBox ID="txt_ıcerik" runat="server" CssClass="textboxGor" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="background-color: #669999">Onay: </td>
            <td style="background-color: #669999">
                <asp:CheckBox ID="cbox_onay" runat="server" Text="Onayla" />
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="background-color: #669999">&nbsp;</td>
            <td style="background-color: #669999">
                <asp:Button ID="btn_guncelle" runat="server" CssClass="butonGorsel" OnClick="btn_guncelle_Click" Text="Güncelle" />
            </td>
        </tr>
    </table>
</asp:Content>
