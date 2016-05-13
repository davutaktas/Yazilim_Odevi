using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace SiteBlog
{
    public class sqlBaglantisi
    {
        public  SqlConnection baglan()
        {
            SqlConnection baglanti = new SqlConnection("Data Source=.; Initial Catalog = siteDB; Integrated Security = True");
            //Initial Catalog= veritabanının adı ------ Interated Security= güvenli baglantı varmı yok mu
            baglanti.Open();
            //bir sürü baglantı stringi kullandıgımızda bir süre sonra hata vermeye başlıyor
            //baglantı havuzlarını temızlemek için kodlar var bunlar
            SqlConnection.ClearAllPools();
            SqlConnection.ClearPool(baglanti);
            return(baglanti);
        }

    }
}