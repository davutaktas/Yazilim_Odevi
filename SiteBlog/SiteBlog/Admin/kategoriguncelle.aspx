<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="kategoriguncelle.aspx.cs" Inherits="SiteBlog.Admin.kategoriguncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 346px;
    }
    .auto-style7 {
        width: 345px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="background-color: #669999">
    <tr>
        <td style="text-align: right">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
<table class="auto-style1">
    <tr>
        <td class="auto-style2" style="background-color: #669999">Kategori Adı:&nbsp;&nbsp; </td>
        <td style="background-color: #669999">
            <asp:TextBox ID="txt_kAdi" runat="server" CssClass="textboxGor"></asp:TextBox>
        </td>
    </tr>
</table>
<table class="auto-style1">
    <tr>
        <td class="auto-style2" style="background-color: #669999">Sırası:&nbsp;&nbsp; </td>
        <td style="background-color: #669999">
            <asp:TextBox ID="txt_kSira" runat="server" CssClass="textboxGor"></asp:TextBox>
        </td>
    </tr>
</table>
<table class="auto-style1">
    <tr>
        <td class="auto-style7" style="background-color: #669999">Adet:&nbsp;&nbsp; </td>
        <td style="background-color: #669999">
            <asp:TextBox ID="txt_kAdet" runat="server" CssClass="textboxGor"></asp:TextBox>
        </td>
    </tr>
</table>
<table class="auto-style1">
    <tr>
        <td class="auto-style2" style="background-color: #669999">Resmi:&nbsp;&nbsp; </td>
        <td style="background-color: #669999">
            <asp:FileUpload ID="fu_kResim" runat="server" CssClass="textboxGor" Width="300px" />
        </td>
    </tr>
</table>
<table class="auto-style1">
    <tr>
        <td class="auto-style2" style="background-color: #669999">&nbsp;</td>
        <td style="background-color: #669999">&nbsp;
            <asp:Button ID="btn_kGuncelle" runat="server" CssClass="butonGorsel" Height="23px" Text="Güncelle" Width="80px" OnClick="btn_kGuncelle_Click" />
            &nbsp;</td>
    </tr>
</table>
<table class="auto-style1" style="background-color: #669999">
    <tr>
        <td style="text-align: right">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
