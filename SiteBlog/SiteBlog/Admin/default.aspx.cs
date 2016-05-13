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
    public partial class _default : System.Web.UI.Page
    {
        sqlBaglantisi baglan = new sqlBaglantisi();   // baglantı oluşturma
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGiris_Click(object sender, EventArgs e)
        {
            //Kullanıcı adı ve şifre karşılastırması işlemi 
            SqlCommand cmd = new SqlCommand("Select * from Yonetici where yoneticiKullanici='"+TxtKullanıcıAd.Text+"'and yoneticiSifre='"+TxtSifre.Text+"'",baglan.baglan());
            //bunları okumak için bir okuyucu lazım
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read()) // eğer böyle bir bilgi varsa  admin paneline yönlendırme işlemi
            {
                Response.Redirect("adminPanel.aspx");
            }
            else
            {
                LblBilgi.Text = "Hatalı kullanıcı adı veya şifre"; // hatalı bilgi girince ekrana yazıcak yazı
            }
        }
    }
}