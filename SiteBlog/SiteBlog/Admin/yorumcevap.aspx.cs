using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteBlog.Admin
{
    public partial class yorumcevap : System.Web.UI.Page
    {

       sqlBaglantisi baglan = new sqlBaglantisi();          
       string makaleID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
        
        }

        protected void btn_cevapYaz_Click(object sender, EventArgs e)
        {
            makaleID = Request.QueryString["makaleID"];

            SqlCommand cmdyekle = new SqlCommand("insert into Yorum (yorumAdSoyad,yorumIcerik,yorumResim,makaleID) Values('" + txt_adSoyad.Text + "','" + txt_yorumIcerik.Text + "','/Temalar/adminresim.jpg/','" + makaleID + "')", baglan.baglan());
            cmdyekle.ExecuteNonQuery();
            Response.Redirect("yorumlar.aspx");
        }
    }
}