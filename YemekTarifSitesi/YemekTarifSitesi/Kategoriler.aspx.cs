using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)

        {
            if (Page.IsPostBack == false)
            {
               id= Request.QueryString["Kategoriid"];
               islem = Request.QueryString["islem"];
            }

            SqlCommand komut = new SqlCommand("select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader oku = komut.ExecuteReader();
                DataList1.DataSource = oku;
                DataList1.DataBind();

            //silme işlemi
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete from Tbl_Kategoriler where Kategoriid=@p1",bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }    


                Panel2.Visible = false;
                Panel4.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Btnekle_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("insert into Tbl_Kategoriler (kategoriad) values(@p1) ",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}