<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="makaleler.aspx.cs" Inherits="SiteBlog.Admin.makaleler" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style3 {
            width: 150px;
        }

        .auto-style4 {
            width: 148px;
        }

        .auto-style5 {
            width: 452px;
        }

        .auto-style6 {
            width: 100px;
        }

        .auto-style7 {
            width: 104px;
        }

        .auto-style8 {
            width: 467px;
        }

        .auto-style9 {
            width: 99px;
        }

        .auto-style10 {
            width: 30px;
            height: 30px;
        }
    .auto-style11 {
        width: 200px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <div style="height: 25px; background-color: #2a595c; color: white; font-weight: bolder;">
            &nbsp;
           <asp:Button ID="btn_meArtı" runat="server" Height="25px" Text="+" Width="25px" OnClick="btn_meArtı_Click" />
            &nbsp;&nbsp;
           <asp:Button ID="btn_meEksi" runat="server" Height="25px" Text="-" Width="25px" OnClick="btn_meEksi_Click" />
            &nbsp;Makale Ekleme Paneli
        </div>
        <asp:Panel ID="pnl_makaleEkle" runat="server" BackColor="#669999" ForeColor="White">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" style="text-align: right">Kategori:</td>
                    <td>
                        <asp:DropDownList ID="ddl_kategori" runat="server" CssClass="dropdownlistGorsel">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" style="text-align: right">Başlık:</td>
                    <td>
                        <asp:TextBox ID="txt_makaleBaslik" runat="server" CssClass="textboxGor" Width="500px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" style="text-align: right">Özet:</td>
                    <td>
                        <asp:TextBox ID="txt_makaleOzet" runat="server" CssClass="textboxGor" Height="100px" TextMode="MultiLine" Width="500px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" style="text-align: right">İçerik:</td>
                    <td>
                        <CKEditor:CKEditorControl ID="txt_makaleIcerik" BasePath="/ckeditor/" runat="server" Width="500px"></CKEditor:CKEditorControl>

                    </td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4" style="text-align: right">Slider</td>
                    <td>
                        <asp:FileUpload ID="fu_slider" runat="server" CssClass="textboxGor" Width="500px" />
                    </td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" style="text-align: right">&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_makaleEkle" runat="server" CssClass="butonGorsel" Text="Ekle" OnClick="btn_makaleEkle_Click" />
                    </td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>

        <div style="height: 30px"></div>

        <div style="height: 25px; background-color: #2a595c; color: white; font-weight: bolder;">
            &nbsp;
           <asp:Button ID="btn_mdArti" runat="server" Height="25px" Text="+" Width="25px" OnClick="btn_mdArti_Click" />
            &nbsp;&nbsp;
           <asp:Button ID="btn_mdEksi" runat="server" Height="25px" Text="-" Width="25px" OnClick="btn_mdEksi_Click" />
            &nbsp;Makale Düzenleme Paneli
        </div>
        <asp:Panel ID="pnl_makaleDuzenle" runat="server" BackColor="#669999" ForeColor="White">
            <asp:DataList ID="dl_makaleGetir" runat="server" Width="700px">
                <HeaderTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style5">MAKALE ADI</td>
                            <td class="auto-style6">GÜNCELLE</td>
                            <td class="auto-style7">SİL</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style8">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Literal>
                            </td>
                            <td class="auto-style9">
                                <a href="makaleguncelle.aspx?makaleID=<%#Eval("makaleID") %>">
                                    <img alt="" class="auto-style10" src="../Temalar/düzenleme.jpg" />
                                </a>
                            </td>
                            <td class="auto-style9">
                                <a href="makaleler.aspx?makaleID=<%#Eval("makaleID") %>&islem=sil">
                                    <img alt="" class="auto-style10" src="../Temalar/silme.jpg" />
                                </a>

                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>

        <div style="height: 30px"></div>

        <div style="height: 25px; background-color: #2a595c; color: white; font-weight: bolder;">
            &nbsp;
           <asp:Button ID="btn_dosyaArti" runat="server" Height="25px" Text="+" Width="25px" OnClick="btn_dosyaArti_Click"  />
            &nbsp;&nbsp;
           <asp:Button ID="btn_dosyaEksi" runat="server" Height="25px" Text="-" Width="25px" OnClick="btn_dosyaEksi_Click" />
            &nbsp;Makale Dosya Ekleme Paneli
        </div>
        <asp:Panel ID="pnl_makaleDosya" runat="server" BackColor="#669999" ForeColor="White">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11" style="text-align: right">Dosya Seçiniz</td>
                    <td>
                        <asp:FileUpload ID="fu_mDosya" runat="server" CssClass="textboxGor" Width="300px" />
                    </td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11" style="text-align: right">&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_makaleDosyaEkle" runat="server" CssClass="butonGorsel" OnClick="btn_makaleDosyaEkle_Click" Text="Ekle" />
                    </td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11" style="text-align: right">NOT</td>
                    <td>Ekleme işlemi /Dosyalar/eklenendosya.uzantı şeklinde kullanılıcak</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </asp:Panel>
        <div style="height: 30px"></div>
    </div>
</asp:Content>
