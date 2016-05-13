using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteBlog.Admin
{
    public partial class duyuruguncelle : System.Web.UI.Page
    {
        sqlBaglantisi baglan = new sqlBaglantisi();
        string duyurularID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //duyuruları bu sayfaya çekme işlemi

            duyurularID = Request.QueryString["duyurularID"];
            if(Page.IsPostBack==false)
            {
                SqlCommand cmddgetir = new SqlCommand("Select * from Duyurular where duyurularID ='"+duyurularID+"'",baglan.baglan());
                SqlDataReader drdgetir = cmddgetir.ExecuteReader();

                //tek satırda halletmek için tablo oluşturma
                DataTable dtdgetir = new DataTable("tablo");
                dtdgetir.Load(drdgetir);  //çektigimiz duyuruyu tabloya ekleme
                

                //tabloya çekilen bilgiyi 1 satıra ekleme
                DataRow row = dtdgetir.Rows[0];
                txt_dBaslik.Text = row["duyurularBaslik"].ToString();
                txt_dIcerik.Text = row["duyurularIcerik"].ToString();
                

            }




        }

        protected void btn_dguncelle_Click(object sender, EventArgs e)
        {
            SqlCommand cmddguncelle = new SqlCommand("Update Duyurular set duyurularBaslik='"+txt_dBaslik.Text+"', duyurularIcerik ='"+txt_dIcerik.Text+"' where duyurularID='"+duyurularID+"'",baglan.baglan());
            cmddguncelle.ExecuteNonQuery();

            Response.Redirect("duyurular.aspx");

        }
    }
}