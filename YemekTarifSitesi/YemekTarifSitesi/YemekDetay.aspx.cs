using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["Yemekid"];
            SqlCommand komut = new SqlCommand("Select YemekAd From Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Convert.ToInt32(yemekid));
            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())
            {
                Label6.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();

            //Yorumları listeleme

            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Yorumlar where Yemekid=@p2", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", Convert.ToInt32(yemekid));
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();

        }
        // Yorum Ekleme
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut3 = new SqlCommand("insert into Tbl_Yorumlar (yorumadsoyad,yorummail,yorumicerik,yemekid) values" +
                "(@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut3.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut3.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut3.Parameters.AddWithValue("@p4", Convert.ToInt32(yemekid));
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}