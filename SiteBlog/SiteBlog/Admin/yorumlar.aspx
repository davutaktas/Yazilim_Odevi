<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="yorumlar.aspx.cs" Inherits="SiteBlog.Admin.yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 420px;
        }
        .auto-style3 {
            width: 20px;
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="margin-top: 0px">

        <div style=" height:25px; background-color:#2a595c; color:white; font-weight:bolder;line-height:25px; "> &nbsp;
           <asp:Button ID="btn_oyArtı" runat="server" Height="25px" Text="+" Width="25px" OnClick="btn_oyArtı_Click" />
&nbsp;&nbsp;
           <asp:Button ID="btn_oyEksi" runat="server" Height="25px"  Text="-" Width="25px" OnClick="btn_oyEksi_Click" />
&nbsp;Onaysız Yorum Paneli </div>
       <asp:Panel ID="pnl_onaysizYorum" runat="server" BackColor="#669999" ForeColor="White">

        <asp:DataList ID="dl_yorum" runat="server" Width="700px">
            <ItemTemplate>
                <div style="width: 690px; height: auto">
                    <div style="width: 100px; height: 60px; float: left">
                        <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl='<%# Eval("yorumResim") %>' Width="60px" />
                    </div>
                    <div style="width: 590px; height: auto; float: left;">
                        <div style="width: 590px; height: 25px; float: left; background-color: #669999; color: #FFFFFF;">
                            <asp:Label ID="Label1" runat="server" Font-Size="18px" Text='<%# Eval("yorumAdSoyad") %>' ForeColor="White"></asp:Label>
                            &nbsp;-
                            <asp:Label ID="Label2" runat="server" Font-Size="12px" Text='<%# Eval("yorumEmail") %>' ForeColor="White"></asp:Label>
                            &nbsp;-
                            <asp:Label ID="Label3" runat="server" Font-Size="12px" Text='<%# Eval("yorumTarih","{0:dd MMMM yyyy}") %>' ForeColor="White"></asp:Label>
                        </div>
                        <div style="width:590px; height:25px;float:left; color: #DFDFDF; background-color: #82ACAC; font-weight: bolder;">Makale:
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleBaslik") %>' ForeColor="White"></asp:Label>
                        </div>
                        <div style="width:590px; height:auto;float:left; background-color: #C0D6D6;" >
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorumIcerik") %>' ForeColor="#666666"></asp:Label>
                        </div>
                        <div style="width:590px; height:25px;float:left;">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style2" style="text-align: right">
                                       <a href="yorumguncelle.aspx?yorumID=<%#Eval("yorumID") %>&makalaID=<%#Eval("makaleID") %>"> <img alt="" class="auto-style3" src="../Temalar/tik%20iconu.png" /> </a>
                                        &nbsp;&nbsp;</td>
                                    <td style="text-align: right">
                                       <a href="yorumlar.aspx?yorumID=<%#Eval("yorumID") %>&islem=sil"> <img alt="" class="auto-style3" src="../Temalar/silme.jpg" /> </a>
                                    </td>
                                    <td style="text-align: right">
                                       <a href="yorumcevap.aspx?makaleID=<%#Eval("makaleID") %>"> <img alt="" class="auto-style3" src="../Temalar/yorum%20resmi.png" /> </a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div style="width:690px;height:30px;"></div>
                </div>
                
            </ItemTemplate>
        </asp:DataList>
           </asp:Panel>
           

    </div>

    <div style="height:30px;">  </div>

    <div style=" height:25px; background-color:#2a595c; color:white; font-weight:bolder;line-height:25px; "> &nbsp;
           <asp:Button ID="btn_ooArti" runat="server" Height="25px" Text="+" Width="25px" OnClick="btn_ooArti_Click"  />
&nbsp;&nbsp;
           <asp:Button ID="btn_ooEksi" runat="server" Height="25px"  Text="-" Width="25px" OnClick="btn_ooEksi_Click"  />
        &nbsp;Onaylanan Yorum Paneli </div>
       <asp:Panel ID="pnl_yorumOnaylı" runat="server" BackColor="#669999" ForeColor="White">

        <asp:DataList ID="dl_yorumOnay" runat="server" Width="700px">
            <ItemTemplate>
                <div style="width: 690px; height: auto">
                    <div style="width: 100px; height: 60px; float: left">
                        <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl='<%# Eval("yorumResim") %>' Width="60px" />
                    </div>
                    <div style="width: 590px; height: auto; float: left;">
                        <div style="width: 590px; height: 25px; float: left; background-color: #669999; color: #FFFFFF;">
                            <asp:Label ID="Label1" runat="server" Font-Size="18px" Text='<%# Eval("yorumAdSoyad") %>' ForeColor="White"></asp:Label>
                            &nbsp;-
                            <asp:Label ID="Label2" runat="server" Font-Size="12px" Text='<%# Eval("yorumEmail") %>' ForeColor="White"></asp:Label>
                            &nbsp;-
                            <asp:Label ID="Label3" runat="server" Font-Size="12px" Text='<%# Eval("yorumTarih","{0:dd MMMM yyyy}") %>' ForeColor="White"></asp:Label>
                        </div>
                        <div style="width:590px; height:25px;float:left; color: #DFDFDF; background-color: #82ACAC; font-weight: bolder;">Makale:
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleBaslik") %>' ForeColor="White"></asp:Label>
                        </div>
                        <div style="width:590px; height:auto;float:left; background-color: #C0D6D6;" >
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorumIcerik") %>' ForeColor="#666666"></asp:Label>
                        </div>
                        <div style="width:590px; height:25px;float:left;">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style2" style="text-align: right">
                                        &nbsp;&nbsp;&nbsp;</td>
                                    <td style="text-align: right">
                                        &nbsp;</td>
                                    <td style="text-align: right">
                                        <a href="yorumlar.aspx?yorumID=<%#Eval("yorumID") %>&islemiki=siliki&makaleID=<%#Eval("makaleID") %>"><img alt="" class="auto-style3" src="../Temalar/silme.jpg" /></td></a>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div style="width:690px;height:30px;"></div>
                </div>
                
            </ItemTemplate>
        </asp:DataList>
           </asp:Panel>

         <div style="height:30px;">  </div>
</asp:Content>
