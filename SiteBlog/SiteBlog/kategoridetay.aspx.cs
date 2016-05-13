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
    public partial class kategoridetay : System.Web.UI.Page
    {
            sqlBaglantisi baglan = new sqlBaglantisi();
            string kategoriID="";
        protected void Page_Load(object sender, EventArgs e)
        {
            //sayfalar arası bilgi taşınma işlemini query stringlerle yapıyoruz.
            kategoriID= Request.QueryString["kategoriID"];

            SqlCommand cmdkategori = new SqlCommand("SELECT dbo.Makale.makaleBaslik, dbo.Makale.makaleOzet,dbo.Makale.makaleID, dbo.Makale.makaleTarih, dbo.Makale.makaleOkunma, dbo.Makale.makaleYorumSayisi, dbo.Kategori.kategoriResim, dbo.Kategori.KategoriID FROM dbo.Kategori INNER JOIN dbo.Makale ON dbo.Kategori.kategoriID = dbo.Makale.kategoriID where dbo.Kategori.kategoriID='" + kategoriID + "'", baglan.baglan());
            SqlDataReader drkategori = cmdkategori.ExecuteReader();
            dl_kategori.DataSource = drkategori;
            dl_kategori.DataBind();


        }
    }
}