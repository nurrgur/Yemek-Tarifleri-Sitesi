using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd" +
                    " from Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_yorumlar.Yemekid=Tbl_Yemekler.Yemekid" +
                    " where Yorumid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    txtadsoyad.Text = oku[0].ToString();
                    Txtmail.Text = oku[1].ToString();
                    Txticerik.Text = oku[2].ToString();
                    Txtyemek.Text = oku[3].ToString();
                }
                bgl.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Yorumlar set yorumicerik=@p1 ,YorumOnay=@p2" +
                " where yorumid=@p3",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",Txticerik.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3",Convert.ToInt32(id));
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}