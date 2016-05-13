using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteBlog
{
    public partial class makaledetay : System.Web.UI.Page
    {

        sqlBaglantisi baglan = new sqlBaglantisi();
        string makaleID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            makaleID = Request.QueryString["makaleID"];


            if (Page.IsPostBack == false)
            {
                //makale okunma sayısı
                SqlCommand cmdOkunma = new SqlCommand("Update Makale Set makaleOkunma=makaleOkunma+1 where makaleID ='"
                    + makaleID  + "'", baglan.baglan());
                cmdOkunma.ExecuteNonQuery();

                //makale getirme 
                SqlCommand cmdMakale = new SqlCommand("SELECT dbo.Makale.makaleBaslik, dbo.Makale.makaleIcerik,dbo.Makale.makaleID, dbo.Makale.makaleTarih, dbo.Makale.makaleOkunma, dbo.Makale.makaleYorumSayisi, dbo.Kategori.kategoriResim, dbo.Kategori.KategoriID FROM dbo.Kategori INNER JOIN dbo.Makale ON dbo.Kategori.kategoriID = dbo.Makale.kategoriID where dbo.Makale.makaleID='" + makaleID + "'", baglan.baglan());
                SqlDataReader drMakale = cmdMakale.ExecuteReader();

                dl_makale.DataSource = drMakale;
                dl_makale.DataBind();
            }
        }

        protected void btn_yorumEkle_Click(object sender, EventArgs e)
        {
        SqlCommand cmdyorumEkle = new SqlCommand("insert into Yorum(yorumAdSoyad,yorumEmail,yorumIcerik,yorumResim,makaleID) Values('"+txt_adSoyad.Text+"','"+txt_email.Text+"','"+txt_yorumIcerik.Text+"','/Temalar/yorumiconu.jpg','"+makaleID+"')",baglan.baglan());
        cmdyorumEkle.ExecuteNonQuery();
        lbl_bilgi.Text = "Yorumunuz alınmıştır.";
        txt_adSoyad.Text = "";
        txt_email.Text = "";
        txt_yorumIcerik.Text = ""; 
        }

    }
}