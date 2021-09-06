using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["kategoriid"];
            if (Page.IsPostBack == false)// 1 kere çalıştırır. Tekrar bu sayfa açıldığında bu işlemden geçmez.
            {
                SqlCommand komut = new SqlCommand("select * from Tbl_Kategoriler where kategoriid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TextBox1.Text = oku[1].ToString();
                    TextBox2.Text = oku[2].ToString();
                }

                bgl.baglanti().Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Kategoriler set kategoriad=@p1,kategoriadet=@p2 where kategoriid=@p3",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", Convert.ToInt32(id));
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}