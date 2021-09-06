using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from Tbl_Hakkimizda", bgl.baglanti());
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    Txthakkimizda.Text = oku[0].ToString();
                }
                bgl.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Hakkimizda set Metin=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Txthakkimizda.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}