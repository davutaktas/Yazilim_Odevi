using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteBlog.Admin
{
    public partial class makaleguncelle : System.Web.UI.Page
    {
         sqlBaglantisi baglan = new sqlBaglantisi();
         string makaleID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            makaleID= Request.QueryString["makaleID"]; //gönderdiğim makaleIDyi sayfada alma işlemi

            if(Page.IsPostBack==false)
            {
                SqlCommand cmdmgetir = new SqlCommand("select * from Makale where makaleID ='"+makaleID+"' ",baglan.baglan());
                IDataReader drmgetir = cmdmgetir.ExecuteReader();  //data readera sorgu cumlesi aktarıldı

                //bir tablo oluşturup okunan verleri tabloya kaydetme

                DataTable dtmgetir = new DataTable("tablo");
                dtmgetir.Load(drmgetir);   //getirilen bılgı 1 satır olarak tabloya aktarıldı

                //datarow yapıp oluşturulan satırı çekme işlemi
                DataRow row = dtmgetir.Rows[0];
                txt_makaleBaslik.Text = row["makaleBaslik"].ToString();
                txt_makaleOzet.Text = row["makaleOzet"].ToString();
                txt_makaleIcerik.Text = row["makaleIcerik"].ToString();
                txt_yorumSayisi.Text = row["makaleYorumSayisi"].ToString();


                
            }
        }

        protected void btn_guncelle_Click(object sender, EventArgs e)
        {
            if (fu_slider.HasFile)
            {
                // bu işlem eklıcegımız resmi kategorı resim klasorunu kaydetme işlemini yaptı
                fu_slider.SaveAs(Server.MapPath("/KategoriResim/" + fu_slider.FileName));

                SqlCommand cmdmGuncelle = new SqlCommand("Update Makale Set makaleBaslik='" + txt_makaleBaslik.Text + "',makaleOzet='" + txt_makaleOzet.Text + "',makaleIcerik='" + txt_makaleIcerik.Text + "', makaleYorumSayisi='"+txt_yorumSayisi.Text+"', makaleResim = '/KategoriResim"+fu_slider.FileName+"' where makaleID='"+makaleID+"'", baglan.baglan());
                cmdmGuncelle.ExecuteNonQuery();

                Response.Redirect("makaleler.aspx");
            }

            else
            {

                SqlCommand cmdmguncelle = new SqlCommand("Update Kategori Set makaleBaslik='" + txt_makaleBaslik.Text + "',makaleOzet='" + txt_makaleOzet.Text + "',makaleIcerik='" + txt_makaleIcerik.Text + "', makaleYorumSayisi='" + txt_yorumSayisi.Text + "' where makaleID='"+ makaleID +"'", baglan.baglan());
                cmdmguncelle.ExecuteNonQuery();

                Response.Redirect("makaleler.aspx");
            }

        }
    }
}