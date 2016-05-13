<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="kategoriler.aspx.cs" Inherits="SiteBlog.Admin.kategoriler1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 256px;
        }
        .auto-style3 {
            width: 256px;
            height: 21px;
        }
        .auto-style4 {
            height: 21px;
        }
        .auto-style5 {
            width: 461px;
        }
        .auto-style6 {
            width: 104px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


   <div style="margin-bottom: 0px">
       <div style=" height:25px; background-color:#2a595c; color:white; font-weight:bolder; "> &nbsp;
           <asp:Button ID="btn_kateArtı" runat="server" Height="25px" OnClick="btn_kateArtı_Click" Text="+" Width="25px" />
&nbsp;&nbsp;
           <asp:Button ID="btn_kateEksi" runat="server" Height="25px" OnClick="btn_kateEksi_Click" Text="-" Width="25px" />
&nbsp;Kategori Ekleme Paneli </div>
       <asp:Panel ID="pnl_kategoriEkle" runat="server" BackColor="#669999" ForeColor="White">
           <table class="auto-style1">
               <tr>
                   <td class="auto-style3" style="text-align: right"></td>
                   <td class="auto-style4"></td>
               </tr>
               <tr>
                   <td class="auto-style3" style="text-align: right">Kategori Adı:&nbsp;&nbsp; </td>
                   <td class="auto-style4">
                       <asp:TextBox ID="txt_kategoriAdi" runat="server" CssClass="textboxGor"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style2" style="text-align: right">Sıra:&nbsp;&nbsp; </td>
                   <td>
                       <asp:TextBox ID="txt_sira" runat="server" CssClass="textboxGor"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style2" style="text-align: right">Resim:&nbsp;&nbsp; </td>
                   <td>
                       <asp:FileUpload ID="fu_kategoriResim" runat="server" Height="25px" Width="300px" />
                   </td>
               </tr>
               <tr>
                   <td class="auto-style2" style="text-align: right">&nbsp;</td>
                   <td>
                       <asp:Button ID="btn_kategoriEkle" runat="server" CssClass="butonGorsel" OnClick="btn_kategoriEkle_Click" Text="Ekle" Width="172px" />
                   </td>
               </tr>
               <tr>
                   <td class="auto-style2" style="text-align: right">&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
           </table>
       </asp:Panel>
       <div style="height:30px;">  </div>
        <div style=" height:25px; background-color:#2a595c; color:white; font-weight:bolder; "> &nbsp;
           <asp:Button ID="btn_kdArtı" runat="server" Height="25px" Text="+" Width="25px" OnClick="btn_kdArtı_Click" />
&nbsp;&nbsp;
           <asp:Button ID="btn_kdEksi" runat="server" Height="25px" Text="-" Width="25px" OnClick="btn_kdEksi_Click" />
&nbsp;Kategori Düzenleme Paneli </div>
       <asp:Panel ID="pnl_kategoriDuzenle" runat="server" BackColor="#669999" ForeColor="White">
           <asp:DataList runat="server" ID="dl_kategoriGetir" OnSelectedIndexChanged="dl_kategoriGetir_SelectedIndexChanged1" Width="700px">
               <HeaderTemplate>
                   <table class="auto-style1">
                       <tr>
                           <td class="auto-style5">KATEGORİ ADI</td>
                           <td class="auto-style6">GÜNCELLE</td>
                           <td>SİL</td>
                       </tr>
                   </table>
               </HeaderTemplate>
               <ItemTemplate>
                   <table class="auto-style1">
                       <tr>
                           <td class="auto-style5">
                               <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("kategoriAd") %>'></asp:Literal>
                           </td>
                           <td class="auto-style6">
                              <a href="kategoriguncelle.aspx?kategoriID=<%#Eval("kategoriID") %>"> <img alt="" class="auto-style7" src="../Temalar/düzenleme.jpg" /> </a>
                           </td>
                           <td>
                              <a href="kategoriler.aspx?kategoriID=<%#Eval("kategoriID") %>&islem=sil"> <img alt="" class="auto-style7" src="../Temalar/silme.jpg" /> </a>
                           </td>
                       </tr>
                   </table>
               </ItemTemplate>
           </asp:DataList>
           </asp:Panel>

       <div style="height:30px;  ">  </div>

   </div>


</asp:Content>
