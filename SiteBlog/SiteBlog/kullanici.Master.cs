using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteBlog
{
    public partial class Site1 : System.Web.UI.MasterPage
    {

          sqlBaglantisi baglan = new sqlBaglantisi();

        protected void Page_Load(object sender, EventArgs e)
        {
            //slider işlemi

            SqlCommand cmdslider = new SqlCommand("Select TOP 3 * from Makale order by makaleOkunma Desc ",baglan.baglan());
            SqlDataReader drslider = cmdslider.ExecuteReader();

            dl_slider.DataSource = drslider;
            dl_slider.DataBind();

            //duyurular için veri çekme işlemi

            SqlCommand cmdduyuru = new SqlCommand("Select TOP 3  * from  Duyurular order by duyurularID desc", baglan.baglan());
            SqlDataReader drduyuru = cmdduyuru.ExecuteReader();

            dl_duyuru.DataSource = drduyuru;
            dl_duyuru.DataBind();

            //kategorileri çekme işlemi
            SqlCommand cmdkategori = new SqlCommand("Select * from Kategori", baglan.baglan());
            SqlDataReader drkategori = cmdkategori.ExecuteReader();

            dl_kategori.DataSource = drkategori;
            dl_kategori.DataBind();

        }

        protected void dl_duyuru_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void dl_kategori_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       
    }
}