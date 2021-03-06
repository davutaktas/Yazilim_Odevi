﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="duyurular.aspx.cs" Inherits="SiteBlog.Admin.duyurular" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 200px;
        }
        .auto-style3 {
            width: 467px;
        }
        .auto-style4 {
            width: 100px;
        }
        .auto-style5 {
            width: 30px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <div style="height:30px;  ">  </div>
        <div style=" height:25px; background-color:#2a595c; color:white; font-weight:bolder; "> &nbsp;
           <asp:Button ID="btn_deArtı" runat="server" Height="25px" Text="+" Width="25px" OnClick="btn_deArtı_Click"  />
&nbsp;&nbsp;
           <asp:Button ID="btn_deEksi" runat="server" Height="25px" Text="-" Width="25px" OnClick="btn_deEksi_Click" />
&nbsp;Duyuru Ekleme Paneli </div>
       <asp:Panel ID="pnl_duyuruEkle" runat="server" BackColor="#669999" ForeColor="White">
           <table class="auto-style1">
               <tr>
                   <td class="auto-style2" style="text-align: right">&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
           </table>
           <table class="auto-style1">
               <tr>
                   <td class="auto-style2" style="text-align: right">Başlık</td>
                   <td>
                       <asp:TextBox ID="txt_duyuruBaslik" runat="server" CssClass="textboxGor" Width="420px"></asp:TextBox>
                   </td>
               </tr>
           </table>
           <table class="auto-style1">
               <tr>
                   <td class="auto-style2" style="text-align: right">İçerik</td>
                   <td>

                       <CKEditor:CKEditorControl ID="ckeditor" BasePath="/ckeditor/" runat="server" Width="420px"></CKEditor:CKEditorControl>

                   </td>
               </tr>
           </table>
           <table class="auto-style1">
               <tr>
                   <td class="auto-style2" style="text-align: right">&nbsp;</td>
                   <td>
                       <asp:Button ID="btn_duyuruEkle" runat="server" CssClass="butonGorsel" Text="Ekle" OnClick="btn_duyuruEkle_Click" />
                   </td>
               </tr>
           </table>
           <table class="auto-style1">
               <tr>
                   <td class="auto-style2" style="text-align: right">&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
           </table>
           </asp:Panel>

          <div style="height:30px;  ">  </div>

         <div style=" height:25px; background-color:#2a595c; color:white; font-weight:bolder; "> &nbsp;
           <asp:Button ID="btn_ddArtı" runat="server" Height="25px"  Text="+" Width="25px" OnClick="btn_ddArtı_Click" />
&nbsp;&nbsp;
           <asp:Button ID="btn_ddEksi" runat="server" Height="25px"  Text="-" Width="25px" OnClick="btn_ddEksi_Click" />
&nbsp;Duyuru Düzenleme Paneli </div>
       <asp:Panel ID="pnl_duyuruDuzenle" runat="server" BackColor="#669999" ForeColor="White">
           <asp:DataList ID="dl_duyuruGetir" runat="server" Width="699px">
               <HeaderTemplate>
                   <table class="auto-style1">
                       <tr>
                           <td class="auto-style3">DUYURU BAŞLIK</td>
                           <td class="auto-style4">GÜNCELLE</td>
                           <td>SİL</td>
                       </tr>
                   </table>
               </HeaderTemplate>
               <ItemTemplate>
                   <table class="auto-style1">
                       <tr>
                           <td class="auto-style3">
                               <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("duyurularBaslik") %>'></asp:Literal>
                           </td>
                           <td class="auto-style4">
                              <a href="duyuruguncelle.aspx?duyurularID=<%#Eval("duyurularID") %>"> <img alt="" class="auto-style5" src="../Temalar/düzenleme.jpg" /></a>
                           </td>
                           <td>
                               <a href="duyurular.aspx?duyurularID=<%#Eval("duyurularID") %>&islem=sil"> <img alt="" class="auto-style5" src="../Temalar/silme.jpg" /> </a>
                           </td>
                       </tr>
                   </table>
               </ItemTemplate>
           </asp:DataList>
        </asp:Panel>
          <div style="height:30px;  ">  </div>
    </div>

</asp:Content>
