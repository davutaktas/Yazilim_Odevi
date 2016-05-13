<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="makaledetay.aspx.cs" Inherits="SiteBlog.makaledetay" %>
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
        <asp:DataList ID="dl_makale" runat="server" Width="690px">
            <ItemTemplate>
                <div style="width:690px; margin:0 auto;height:auto">
                        

                    <div style="width: 690px; height: 40px; float: left">

                        <div style="width: 40px; height: 40px; float: left">
                            <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl='<%# Eval("kategoriResim") %>' Width="40px" />
                        </div>
                        <div style="width: 650px; height: 40px; float: left; background-image: url('Temalar/baslik arka plan.jpg'); background-repeat: repeat-x; line-height: 40px;">
                            <asp:Label ID="Label1" runat="server" Font-Size="20px" Text='<%# Eval("makaleBaslik") %>' ForeColor="#333333"></asp:Label>
                        </div>

                    </div>
                        
                    <div style="float:left; height:auto; width:690px; padding-bottom: 10px; background-color: #FFFFFF;">
                        <asp:Label ID="Label5" runat="server" Font-Size="18px" Text='<%# Eval("makaleIcerik") %>' ForeColor="#333333"></asp:Label>
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

    <div style="height:30px; width:100%;"> </div>
    <div style="background-color:#2a595c; color:#fff;height:30px;width:100%; text-align:center;font-size:24px;font-weight:bold;">Yapılan Yorumlar </div>
    <div style="width:790px; height:auto;"> 


    </div>

    <div style="height:30px; width:100%;"> </div>
     <div style="background-color:#2a595c; color:#fff;height:30px;width:100%; text-align:center;font-size:24px;font-weight:bold;">Yorum yap </div>
    <div style="height:10px; width:100%;"> </div>
    <div style="height: 200px"> 
        <div style="width: 330px; height: 200px; float: left; border: 1px dotted #2a595c; margin-left:5px;">
            <asp:TextBox ID="txt_yorumIcerik" placeHolder="Buraya Yorumunuzu Giriniz." runat="server" Height="200px" TextMode="MultiLine" Width="330px"></asp:TextBox>
        </div>
        <div style="width: 330px; height: 200px; float:right; border: 1px dotted #2a595c;margin-left:5px;">

            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td style="text-align: center">
                        <asp:TextBox ID="txt_adSoyad" runat="server" placeHolder="Adınız Soyadınız"  CssClass="textboxGor" Height="25px" Width="300px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td style="text-align: center">
                        <asp:TextBox ID="txt_email" runat="server" placeHolder="E-mail Adresiniz"  CssClass="textboxGor" Height="25px" Width="300px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td style="text-align: center">
                        <asp:Button ID="btn_yorumEkle" runat="server" CssClass="butonGorsel" Text="Gönder" OnClick="btn_yorumEkle_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lbl_bilgi" runat="server" ForeColor="Maroon"></asp:Label>
                    </td>
                </tr>
            </table>

            <table class="auto-style1">
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_yorumIcerik" ErrorMessage="RequiredFieldValidator" ForeColor="Maroon">Yorum yapınız!</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>

            <table class="auto-style1">
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_adSoyad" ErrorMessage="RequiredFieldValidator" ForeColor="Maroon">Ad  Soyad Eksik!!</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>

            <table class="auto-style1">
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_email" ErrorMessage="RequiredFieldValidator" ForeColor="#990000">Mail Adresiniz Eksik!</asp:RequiredFieldValidator>
&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="RegularExpressionValidator" ForeColor="Maroon" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Hatalı Mail!</asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
            &nbsp;</div>
 
    </div>
    <div style="height:10px; width:100%;"> </div>

</asp:Content>
