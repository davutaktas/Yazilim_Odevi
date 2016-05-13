<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="kategoridetay.aspx.cs" Inherits="SiteBlog.kategoridetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style3 {
            width: 12px;
            height: 12px;
        }
        .auto-style4 {
            width: 13px;
            height: 12px;
        }
        .auto-style5 {
            width: 14px;
            height: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width:690px; margin:0 auto;height:auto;">
        <asp:DataList ID="dl_kategori" runat="server" Width="690px">
            <ItemTemplate>
                <div style="width:690px; margin:0 auto;height:auto">
                        

                    <div style="width: 690px; height: 40px; float: left">

                        <div style="width: 40px; height: 40px; float: left">
                            <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl='<%# Eval("kategoriResim") %>' Width="40px" />
                        </div>
                        <div style="width: 650px; height: 40px; float: left; background-image: url('Temalar/baslik arka plan.jpg'); background-repeat: repeat-x; line-height: 40px;">
                          <a href="makaledetay.aspx?makaleID=<%#Eval("makaleID") %>"> <asp:Label ID="Label1" runat="server" Font-Size="20px" Text='<%# Eval("makaleBaslik") %>' ForeColor="#333333"></asp:Label> </a> 
                        </div>

                    </div>
                        
                    <div style="float:left; height:auto; width:690px; padding-bottom: 10px; background-color: #FFFFFF;">
                        <asp:Label ID="Label5" runat="server" Font-Size="18px" Text='<%# Eval("makaleOzet") %>' ForeColor="#333333"></asp:Label>
                    </div>

                    <div style="width:690px; float:left; height:20px; line-height:20px;font-size:14px">
                        <div style="width:auto; float:left; height:20px; margin-right:15px;">
                            <img alt="" class="auto-style3" src="Temalar/tarih%20icon.jpg" />
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("makaleTarih","{0:dd MMM yyyy}") %>' ForeColor="#666666"></asp:Label>
                        </div>
                         <div style="width:auto; float:left; height:20px; margin-right:15px;">
                             <img alt="" class="auto-style4" src="Temalar/GÖRÜLME%20SAYISI.jpg" />
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("makaleOkunma") %>' ForeColor="#666666"></asp:Label>
                        </div>
                         <div style="width:76px; float:left; height:20px; margin-right:15px;">
                             <img alt="" class="auto-style5" src="Temalar/yorum%20resmi.png" />
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleYorumSayisi") %>' ForeColor="#666666"></asp:Label>
                        </div>
                    </div>
                    <div style="width:100%; height:40px; float:left; background-color: #e6e6e6;"></div>
                    
                </div>
            </ItemTemplate>

        </asp:DataList>
    </div>

</asp:Content>
