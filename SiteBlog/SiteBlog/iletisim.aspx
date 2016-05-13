<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="SiteBlog.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: auto; width:100%; float:left">

        <table class="auto-style1">
            <tr>
                <td class="auto-style4" style="color: #666666">&nbsp;</td>
                <td style="color: #666666">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="color: #666666">Facebook:</td>
                <td style="color: #666666">&nbsp; facebook.com/yazilimProjesiGrup8&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="color: #666666">&nbsp;Twitter:</td>
                <td style="color: #666666">&nbsp; twitter.com/yazilimProjesiGrup8&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="color: #666666">Instagram:</td>
                <td style="color: #666666">&nbsp; yazilimProjeGrubu8&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="color: #666666">Youtube:</td>
                <td style="color: #666666">&nbsp; youtube.com/yazilimProjesiGrup8&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="color: #666666"></td>
                <td style="color: #666666">&nbsp;</td>
            </tr>
        </table>

    </div>
    <div style="height: 30px; width: 100%;  float: left; color: #666666; font-weight: bolder;" > &nbsp; Bana alttaki panelden mesaj gönderebilirsiniz</div>

        <div style="height: 200px"> 
        <div style="width: 330px; height: 200px; float: left; border: 1px dotted #2a595c; margin-left:5px;">
            <asp:TextBox ID="txt_yorumIcerik" placeHolder="Buraya Mesajınızı Yazınız." runat="server" Height="200px" TextMode="MultiLine" Width="330px"></asp:TextBox>
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
                        <asp:Button ID="btn_yorumEkle" runat="server" CssClass="butonGorsel" Text="Gönder" OnClick="btn_yorumEkle_Click"  />
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
