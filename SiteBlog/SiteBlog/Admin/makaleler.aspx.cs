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
    public partial class makaleler : System.Web.UI.Page
    {
          sqlBaglantisi baglan = new sqlBaglantisi();
          string makaleID = "";
          string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            // Makale silme işlemi
            makaleID = Request.QueryString["makaleID"];
            islem = Request.QueryString["islem"];

            if (islem=="sil")
            {
                SqlCommand cmdmsil = new SqlCommand("delete from Makale where makaleID='" +makaleID+ "'", baglan.baglan());
                cmdmsil.ExecuteNonQuery();
            }

            if(Page.IsPostBack== false)
            {
                pnl_makaleEkle.Visible = false;
                pnl_makaleDuzenle.Visible = false;
                pnl_makaleDosya.Visible = false;


                //kategori getir
                SqlCommand cmdkgetir = new SqlCommand("Select * from Kategori", baglan.baglan());
                SqlDataReader drkgetir = cmdkgetir.ExecuteReader();

                //dropdownlıste aktarma işlemi
                ddl_kategori.DataTextField = "kategoriAd";   //ddl'nin çekecegi sutun
                ddl_kategori.DataValueField = "kategoriId";    //burdada getirdiği kategorının ıdsını tutsun

                ddl_kategori.DataSource = drkgetir;
                ddl_kategori.DataBind();

                //makale getir

                SqlCommand cmdmgetir = new SqlCommand("Select * from Makale", baglan.baglan());
                SqlDataReader drmgetir = cmdmgetir.ExecuteReader();

                dl_makaleGetir.DataSource = drmgetir;   //data kaynagına makale bilgilerini aktarma
                dl_makaleGetir.DataBind(); 
            }

           
            



        }

        protected void btn_meArtı_Click(object sender, EventArgs e)
        {
            pnl_makaleEkle.Visible = true;
   
        }

        protected void btn_meEksi_Click(object sender, EventArgs e)
        {
            pnl_makaleEkle.Visible = false;
           
        }

        protected void btn_makaleEkle_Click(object sender, EventArgs e)
        {
            if(fu_slider.HasFile) /*resim varmı yokmu ona göre işlem yapıyoruz*/
            {
             
                fu_slider.SaveAs(Server.MapPath("/SliderResim/" + fu_slider.FileName )); //resmi dosyaya kaydetme
                //Girilen verileri veri tabanına ekleme 
                SqlCommand cmdmakaleekle = new SqlCommand("Insert into Makale(makaleBaslik, makaleOzet, makaleIcerik,makaleResim,kategoriID) Values('"+txt_makaleBaslik.Text
                    +"','"+txt_makaleOzet.Text+"','"+txt_makaleIcerik.Text+"','/SliderResim/"+fu_slider.FileName+"','"+ddl_kategori.SelectedValue+"')",baglan.baglan());

                cmdmakaleekle.ExecuteNonQuery();

                SqlCommand cmdkadet = new SqlCommand("update Kategori Set kategoriAdet = kategoriAdet+1 where kategoriID='"+ddl_kategori.SelectedValue+"'",baglan.baglan());
                cmdkadet.ExecuteNonQuery();
                Response.Redirect("makaleler.aspx");
            }

            else
            {
                btn_makaleEkle.Text = "Resim Ekle!!";

            }
        }

        protected void btn_mdEksi_Click(object sender, EventArgs e)
        {
            pnl_makaleDuzenle.Visible = false;
        }

        protected void btn_mdArti_Click(object sender, EventArgs e)
        {
            pnl_makaleDuzenle.Visible = true;   
        }

        protected void btn_dosyaArti_Click(object sender, EventArgs e)
        {
            pnl_makaleDosya.Visible = true;
        }

        protected void btn_dosyaEksi_Click(object sender, EventArgs e)
        {
            pnl_makaleDosya.Visible = false;
        }

        protected void btn_makaleDosyaEkle_Click(object sender, EventArgs e)
        {
            if(fu_mDosya.HasFile)
            {
                fu_mDosya.SaveAs(Server.MapPath("/Dosyalar/" + fu_mDosya.FileName));

                Response.Redirect("makaleler.aspx");

            }

            else
            {
                btn_makaleDosyaEkle.Text = "Dosya ekle";
            }
        }
    }
}