<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="duyuruguncelle.aspx.cs" Inherits="SiteBlog.Admin.duyuruguncelle" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 199px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="background-color: #669999; text-align: right;">&nbsp;</td>
            <td style="background-color: #669999">&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="background-color: #669999; text-align: right;">Başlık:&nbsp;&nbsp; </td>
            <td style="background-color: #669999">
                <asp:TextBox ID="txt_dBaslik" runat="server" CssClass="textboxGor"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="background-color: #669999; text-align: right;">İçerik:&nbsp;&nbsp;&nbsp; </td>
            <td style="background-color: #669999">
                
                 <CKEditor:CKEditorControl ID="txt_dIcerik" BasePath="/ckeditor/" runat="server" Width="451px"></CKEditor:CKEditorControl>
             </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="background-color: #669999; text-align: right;">&nbsp;</td>
            <td style="background-color: #669999">
                <asp:Button ID="btn_dguncelle" runat="server" CssClass="butonGorsel" Text="Güncele" OnClick="btn_dguncelle_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
