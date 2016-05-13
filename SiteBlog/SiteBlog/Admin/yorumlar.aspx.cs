using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteBlog.Admin
{
    public partial class yorumlar : System.Web.UI.Page
    {

          sqlBaglantisi baglan = new sqlBaglantisi();
          string yorumID = "";
          string islem = "";
          string islemiki = "";
          string makaleID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            //yorum silme işlemi için deger getirme
            yorumID = Request.QueryString["yorumID"];
            islem = Request.QueryString["islem"];
            islemiki = Request.QueryString["islemiki"];
            makaleID = Request.QueryString["makaleID"];

            //onaysız yorum silme işlemi
            if(islem=="sil")
            {
                SqlCommand cmdyorumSil = new SqlCommand("Delete From Yorum where yorumID='"+yorumID+"'",baglan.baglan());
                cmdyorumSil.ExecuteNonQuery();
                Response.Redirect("yorumlar.aspx");
            }
             //onaylı yorum silme
            if(islemiki=="siliki")
            {
                SqlCommand cmdoyorumSil = new SqlCommand("Delete From Yorum where yorumID='" + yorumID + "'", baglan.baglan());
                cmdoyorumSil.ExecuteNonQuery();

                
                //yorum silindiğinde makaleye göre yorum sayısını azaltma işlemi
                SqlCommand cmdyazalt = new SqlCommand(" Update Makale Set makaleYorumSayisi = makaleYorumSayisi-1 where makaleID='" + makaleID + "'", baglan.baglan());
                cmdyazalt.ExecuteNonQuery();

                  Response.Redirect("yorumlar.aspx");
            }


            if(Page.IsPostBack==false)
            {
                pnl_onaysizYorum.Visible = false;
                
pnl_yorumOnaylı.Visible = false;
            }
                //onaysız yorumlar
               //burda hem makale hemde yorum tablosundan bilgi çekiceğim için viewlerle kod oluşturup yazdım
              SqlCommand cmdyorum = new SqlCommand("SELECT dbo.Makale.makaleID, dbo.Makale.makaleBaslik, dbo.Makale.makaleYorumSayisi, dbo.Yorum.yorumID, dbo.Yorum.yorumAdSoyad, dbo.Yorum.yorumEmail, dbo.Yorum.yorumIcerik, dbo.Yorum.yorumTarih, dbo.Yorum.yorumOnay, dbo.Yorum.makaleID AS Expr1, dbo.Yorum.yorumResim FROM dbo.Yorum INNER JOIN dbo.Makale ON dbo.Yorum.makaleID = dbo.Makale.makaleID where yorumOnay=0",baglan.baglan());
              SqlDataReader dryorum = cmdyorum.ExecuteReader();

              dl_yorum.DataSource = dryorum;
              dl_yorum.DataBind();


            //onaylı yorumlar
             SqlCommand cmdonaylıYorum = new SqlCommand("SELECT dbo.Makale.makaleID, dbo.Makale.makaleBaslik, dbo.Makale.makaleYorumSayisi, dbo.Yorum.yorumID, dbo.Yorum.yorumAdSoyad, dbo.Yorum.yorumEmail, dbo.Yorum.yorumIcerik, dbo.Yorum.yorumTarih, dbo.Yorum.yorumOnay, dbo.Yorum.makaleID AS Expr1, dbo.Yorum.yorumResim FROM dbo.Yorum INNER JOIN dbo.Makale ON dbo.Yorum.makaleID = dbo.Makale.makaleID where yorumOnay=1",baglan.baglan());
             SqlDataReader dronaylıYorum = cmdonaylıYorum.ExecuteReader();

             dl_yorumOnay.DataSource = dronaylıYorum;
             dl_yorumOnay.DataBind();

        }

        protected void btn_oyArtı_Click(object sender, EventArgs e)
        {
            pnl_onaysizYorum.Visible = true;
        }

        protected void btn_oyEksi_Click(object sender, EventArgs e)
        {
            pnl_onaysizYorum.Visible = false;
        }

        protected void btn_ooEksi_Click(object sender, EventArgs e)
        {
            pnl_yorumOnaylı.Visible = false;
        }

        protected void btn_ooArti_Click(object sender, EventArgs e)
        {
            pnl_yorumOnaylı.Visible = true;
        }
    }
}