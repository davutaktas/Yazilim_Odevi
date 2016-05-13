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
    public partial class yorumguncelle : System.Web.UI.Page
    {

          sqlBaglantisi baglan = new sqlBaglantisi();
          string yorumID = "";
          string makaleID = "";
        protected void Page_Load(object sender, EventArgs e)
        {

             //yorumıd yi alma işlemi
            yorumID=Request.QueryString["yorumID"];
            makaleID = Request.QueryString["makaleID"];


            //yorum getirme işlemi.
             if(Page.IsPostBack==false)
             {
                 SqlCommand cmdyorumGetir = new SqlCommand("Select * from Yorum where yorumID='"+yorumID+"'", baglan.baglan());
                 SqlDataReader dryorumGetir = cmdyorumGetir.ExecuteReader();

                 //yorumu çekicek datatable oluşturma 

                 DataTable dtyorumGetir = new DataTable("tablo");
                 dtyorumGetir.Load(dryorumGetir);  //datareaderla okunan bilgiyi data table aktardık

                 DataRow row = dtyorumGetir.Rows[0];
                 txt_AdSoyad.Text=row["yorumAdSoyad"].ToString();
                 txt_ıcerik.Text = row["yorumIcerik"].ToString();

             }
            
        }

        protected void btn_guncelle_Click(object sender, EventArgs e)
        {
            
                SqlCommand cmdOnay = new SqlCommand("Update Yorum Set yorumAdSoyad='" + txt_AdSoyad.Text + "',yorumIcerik='" + txt_ıcerik.Text + "',yorumOnay='" + cbox_onay.Checked + "' where yorumID ='" + yorumID + "'", baglan.baglan());
                cmdOnay.ExecuteNonQuery();

                //eğer onaylanma tiki varsa 1 artırsın
                if (cbox_onay.Checked == true)
                {   
                   
                    
                    SqlCommand cmdEkle = new SqlCommand(" Update Makale Set makaleYorumSayisi = makaleYorumSayisi+1 where makaleID='" + makaleID + "'", baglan.baglan());
                    cmdEkle.ExecuteNonQuery();

                    Response.Redirect("yorumlar.aspx");
                }
            
            
                       
        }
    }
}