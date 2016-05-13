using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace SiteBlog.Admin
{
    public partial class kategoriguncelle : System.Web.UI.Page
    {
        sqlBaglantisi baglan = new sqlBaglantisi();
        string kategoriID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriID = Request.QueryString["kategoriID"];
             
            if(Page.IsPostBack== false)   // Eğer güncellemede postback işlemini kullanmazsak güncelleme yapamayız 
            {                              //çünkü sayfa her yenilendiğinde eski bilgiyi tekrar gönderiyor.Sayfa postback olduğu çin yeni eklediğimizi gonderemıyor
                                            //o yuzden sayfanın postbackını false yapmamız lazım
                SqlCommand cmdkGuncelle = new SqlCommand("Select * from Kategori where kategoriID='"+kategoriID+"'",baglan.baglan());
                SqlDataReader drkGuncelle = cmdkGuncelle.ExecuteReader();

                // bu okuttugumuz bilgiyi bır tabloya kaydetçez ve bu sayfadaki bir satırı alıp kategorı guncelle sayfasına taşıcaz

                DataTable dtkGuncelle = new DataTable("tablo");
                dtkGuncelle.Load(drkGuncelle);

                DataRow row = dtkGuncelle.Rows[0];
                txt_kAdi.Text = row ["kategoriAd"].ToString();
                txt_kSira.Text = row ["kategoriSira"].ToString();
                txt_kAdet.Text = row ["kategoriAdet"].ToString();

            }
        }

        protected void btn_kGuncelle_Click(object sender, EventArgs e)
        {
            if(fu_kResim.HasFile)
            {
                  // bu işlem eklıcegımız resmi kategorı resim klasorunu kaydetme işlemini yaptı
                fu_kResim.SaveAs(Server.MapPath("/KategoriResim/" + fu_kResim.FileName));
                
                SqlCommand cmdkGuncelle = new SqlCommand("Update Kategori Set kategoriAd='"+txt_kAdi.Text+"',kategoriSira='"+txt_kSira.Text+"',kategoriAdet='"+txt_kAdet.Text+"', kategoriResim='/KategoriResim/"+fu_kResim.FileName+"' where kategoriID ='"+kategoriID+"'",baglan.baglan());
                cmdkGuncelle.ExecuteNonQuery();

                Response.Redirect("kategoriler.aspx");
            }

            else
            {

                SqlCommand cmdGuncelle = new SqlCommand("Update Kategori Set kategoriAd='" + txt_kAdi.Text + "',kategoriSira='" + txt_kSira.Text + "',kategoriAdet='" + txt_kAdet.Text + "' where kategoriID ='" + kategoriID + "'", baglan.baglan());
                cmdGuncelle.ExecuteNonQuery();
                Response.Redirect("kategoriler.aspx"); 
            }
        }
    }
}