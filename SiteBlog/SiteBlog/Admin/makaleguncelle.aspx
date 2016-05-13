<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="makaleguncelle.aspx.cs" Inherits="SiteBlog.Admin.makaleguncelle" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
        width: 170px;
    }
    .auto-style4 {
        width: 169px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td style="text-align: right; background-color: #669999" class="auto-style3">&nbsp;</td>
            <td style="background-color: #669999">&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style4" style="text-align: right; background-color: #669999">Başlık:</td>
            <td style="background-color: #669999">
                <asp:TextBox ID="txt_makaleBaslik" runat="server" CssClass="textboxGor" Width="470px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style4" style="text-align: right; background-color: #669999">Özet:</td>
            <td style="background-color: #669999">
                <asp:TextBox ID="txt_makaleOzet" runat="server" CssClass="textboxGor" Height="100px" TextMode="MultiLine" Width="471px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3" style="text-align: right; background-color: #669999">İçerik:</td>
            <td style="background-color: #669999"> 

                <CKEditor:CKEditorControl ID="txt_makaleIcerik" BasePath="/ckeditor/" runat="server" Width="471px"></CKEditor:CKEditorControl>

            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3" style="text-align: right; background-color: #669999">Slider</td>
            <td style="background-color: #669999">
                <asp:FileUpload ID="fu_slider" runat="server" CssClass="textboxGor" Width="290px" />
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3" style="text-align: right; background-color: #669999">Yorum Sayısı:</td>
            <td style="background-color: #669999">
                <asp:TextBox ID="txt_yorumSayisi" runat="server" CssClass="textboxGor"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3" style="text-align: right; background-color: #669999">&nbsp;</td>
            <td style="background-color: #669999">
                <asp:Button ID="btn_guncelle" runat="server" CssClass="butonGorsel" Text="Güncelle" OnClick="btn_guncelle_Click" />
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td style="text-align: right; background-color: #669999">&nbsp;</td>
            <td style="background-color: #669999">&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td style="text-align: right; background-color: #669999">&nbsp;</td>
            <td style="background-color: #669999">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
