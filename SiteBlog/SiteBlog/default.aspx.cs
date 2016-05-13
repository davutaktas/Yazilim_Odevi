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
    public partial class WebForm1 : System.Web.UI.Page
    {
         sqlBaglantisi baglan = new sqlBaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmdmakale = new SqlCommand("SELECT dbo.Makale.makaleBaslik, dbo.Makale.makaleOzet, dbo.Makale.makaleTarih,dbo.Makale.makaleID, dbo.Makale.makaleOkunma, dbo.Makale.makaleYorumSayisi, dbo.Kategori.kategoriResim FROM dbo.Kategori INNER JOIN dbo.Makale ON dbo.Kategori.kategoriID = dbo.Makale.kategoriID order by makaleID desc", baglan.baglan());
            SqlDataReader drmakaleGetir = cmdmakale.ExecuteReader();

            dl_makale.DataSource = drmakaleGetir;
            dl_makale.DataBind();
        }
    }
}