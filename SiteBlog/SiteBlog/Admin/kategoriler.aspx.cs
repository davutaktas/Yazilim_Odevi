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
    public partial class kategoriler1 : System.Web.UI.Page
    {
        sqlBaglantisi baglan = new sqlBaglantisi();
        string kategoriID = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriID = Request.QueryString["kategoriID"];
            islem =Request.QueryString["islem"];

            if(islem=="sil")
            {
                SqlCommand cmdsil = new SqlCommand("Delete from Kategori where kategoriID='"+kategoriID+"'",baglan.baglan());
                cmdsil.ExecuteNonQuery();

            }

            if(Page.IsPostBack==false)
            {
                pnl_kategoriEkle.Visible = false;
                pnl_kategoriDuzenle.Visible = false;
            }
            //kategorileri dataliste çekme işlemi 

            SqlCommand cmdkGetir = new SqlCommand("select * from Kategori",baglan.baglan());
            SqlDataReader drkgetir = cmdkGetir.ExecuteReader();
            //data liste data readerla okuttugumuz verileri aktarma işlemi 

            dl_kategoriGetir.DataSource = drkgetir;
            dl_kategoriGetir.DataBind();


        }

        protected void btn_kateArtı_Click(object sender, EventArgs e)
        {
            pnl_kategoriEkle.Visible = true;
        }

        protected void btn_kateEksi_Click(object sender, EventArgs e)
        {
            pnl_kategoriEkle.Visible = false;
        }

        protected void btn_kategoriEkle_Click(object sender, EventArgs e)
        {
            if (fu_kategoriResim.HasFile) // eğer fileuploadda resim var ise
            {  
                //eklediğimiz resmi kategori resmin içine kendi ismiyle birlikte kaydetme işlemi
                fu_kategoriResim.SaveAs(Server.MapPath("/KategoriResim/" + fu_kategoriResim.FileName));
                //ekleme işlemleri sqlcommandla yapılıyor.

                SqlCommand cmdKategoriEkle = new SqlCommand("insert into Kategori(kategoriAd,kategoriSira,kategoriResim) Values('"+txt_kategoriAdi.Text+"','"+txt_sira.Text+"','/KategoriResim/"+fu_kategoriResim.FileName+"')",baglan.baglan());  // 2 paremetre alır 1. sorgu cumlecıgı 2. baglantı nesnesi

                // Burda veri tabanına alınan bilgileri gönderme işlemi yapılıyor  resim eklemede diğerlerinden farklı olarak 
                //resmin alınacagı yerin yolunuda  belirtmek zorundayız.

                cmdKategoriEkle.ExecuteNonQuery(); //sorgu cümlecigini çalıştırma işlemi
                Response.Redirect("kategoriler.aspx");

            }

            else   // resim yoksa uyarı verme işlemi
            {
                btn_kategoriEkle.Text = "Resim eklemeniz lazım!";  

            }
        }

        protected void btn_kdArtı_Click(object sender, EventArgs e)
        {
            pnl_kategoriDuzenle.Visible = true;
        }

        protected void btn_kdEksi_Click(object sender, EventArgs e)
        {
            pnl_kategoriDuzenle.Visible = false;
        }

        protected void dl_kategoriGetir_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void dl_kategoriGetir_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}