using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["kategoriid"];
            SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler where kategoriid=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Convert.ToInt32(kategoriid));
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();
        }
    }
}