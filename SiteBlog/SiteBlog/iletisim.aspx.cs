using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteBlog
{
    public partial class iletisim : System.Web.UI.Page
    {
        sqlBaglantisi baglan = new sqlBaglantisi();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_yorumEkle_Click(object sender, EventArgs e)
        {
            SqlCommand cmdekle = new SqlCommand("insert into Iletisim(iletisimAdSoyad, iletisimEmail, iletisimIcerik) Values('"+txt_adSoyad.Text+"','"+txt_email.Text+"', '"+txt_yorumIcerik.Text+"') ", baglan.baglan() );
            cmdekle.ExecuteNonQuery();

            txt_adSoyad.Text="";
            txt_email.Text = "";
            txt_yorumIcerik.Text = "";

            lbl_bilgi.Text = "Mesajınız Alındı.";
        
        }
    }
}