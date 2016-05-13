<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="SiteBlog.Admin._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">      /*admın panelındekı boşlukları sıfırlama işlemi*/
       *{
           margin:0;
           padding:0;
           border:0;

       }

    </style>
</head>
<body style="background-color:#e1e1e1">                
    <form id="form1" runat="server"> 
    <div style="height: 70px; background-color:#2a595c; color:#fff">  <!--divin içerisine sifre ve kullanıcı adı için sifre olusturduk-->
          <div style="float:left; width:250px; margin-top:20px; margin-left:10px;">Kullanıcı Adı: <asp:TextBox ID="TxtKullanıcıAd" runat="server" Height="25px" Width="130px"></asp:TextBox> </div> 
          <div style="float:left; width:210px; margin-top:20px;" >Şifre: <asp:TextBox ID="TxtSifre" runat="server" Height="25px" Width="130px" TextMode="Password"></asp:TextBox></div>
          <div style="float:left; width:250px; margin-top:20px;">
              <asp:Button ID="BtnGiris" runat="server" Text="Giriş" Height="25px" Width="80px" BackColor="white" ForeColor="#2a595c" OnClick="BtnGiris_Click"  />
          </div>
        <div style="float:right; width:300px; margin-top:20px; margin-right:50px; text-align:right;">
            <asp:Label ID="LblBilgi" runat="server" Text="Yönetici Paneli" ForeColor="White"></asp:Label></div>
        
          
    </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
