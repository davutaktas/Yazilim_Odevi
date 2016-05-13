<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="yorumcevap.aspx.cs" Inherits="SiteBlog.Admin.yorumcevap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 200px;
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
            <td class="auto-style2" style="background-color: #669999">Admin:&nbsp;&nbsp; </td>
            <td style="background-color: #669999">
                <asp:TextBox ID="txt_adSoyad" runat="server" CssClass="textboxGor" Width="200px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="background-color: #669999">Yorum:&nbsp;&nbsp; </td>
            <td style="background-color: #669999">
                <asp:TextBox ID="txt_yorumIcerik" runat="server" CssClass="textboxGor" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="background-color: #669999">&nbsp;</td>
            <td style="background-color: #669999">
                <asp:Button ID="btn_cevapYaz" runat="server" CssClass="butonGorsel" OnClick="btn_cevapYaz_Click" Text="Cevap Yaz" />
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="background-color: #669999">&nbsp;</td>
            <td style="background-color: #669999">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
