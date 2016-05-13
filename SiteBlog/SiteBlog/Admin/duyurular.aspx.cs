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
   
    public partial class duyurular : System.Web.UI.Page
    {

          sqlBaglantisi baglan = new sqlBaglantisi();

          string duyurularID = "";
          string islem = "";
         
        protected void Page_Load(object sender, EventArgs e)
        {
            duyurularID = Request.QueryString["duyurularID"];
            islem = Request.QueryString["islem"];

            if(islem=="sil")
            {

                SqlCommand cmddsil = new SqlCommand("Delete from Duyurular where duyurularID='"+duyurularID+"'",baglan.baglan());
                cmddsil.ExecuteNonQuery();
            }


            if(Page.IsPostBack== false)
            {
                pnl_duyuruEkle.Visible = false;
                pnl_duyuruDuzenle.Visible = false;

                //duyuruları getirme işlemi

                SqlCommand cmddgetir = new SqlCommand("Select * from Duyurular",baglan.baglan());
                SqlDataReader drdgetir = cmddgetir.ExecuteReader();

                dl_duyuruGetir.DataSource = drdgetir;  //data readerle okuttuğum veriyi dataliste attım
                dl_duyuruGetir.DataBind();            // datalistteki deki veriyi gösterdim

            }
           
        }

        protected void btn_deEksi_Click(object sender, EventArgs e)
        {
            pnl_duyuruEkle.Visible = false;
        }

        protected void btn_deArtı_Click(object sender, EventArgs e)
        {
            pnl_duyuruEkle.Visible = true;
        }

        protected void btn_duyuruEkle_Click(object sender, EventArgs e)
        {
            SqlCommand cmddEkle = new SqlCommand("Insert into Duyurular(duyurularBaslik,duyurularIcerik,duyurularResim) values('"+txt_duyuruBaslik.Text+"','"+ckeditor.Text+"', '/Temalar/duyuru.jpg') ",baglan.baglan());
            cmddEkle.ExecuteNonQuery();

            Response.Redirect("duyurular.aspx");
        }

        protected void btn_ddEksi_Click(object sender, EventArgs e)
        {
            pnl_duyuruDuzenle.Visible = false;
        }

        protected void btn_ddArtı_Click(object sender, EventArgs e)
        {
            pnl_duyuruDuzenle.Visible = true;
        }

    }
}