using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    public partial class Yemekler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {

                id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];
                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr;
                DropDownList1.DataBind();
            }

            Panel2.Visible = false;
            Panel4.Visible = false;
            //Yemek Listesi
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            //Silme İşlemi
            if (islem == "sil")
            {
                SqlCommand komut2 = new SqlCommand("Delete from Tbl_Yemekler where Yemekid=@p1 ",bgl.baglanti());
                komut2.Parameters.AddWithValue("@p1",Convert.ToInt32(id));
                komut2.ExecuteNonQuery();
                bgl.baglanti().Close();

            }
        }

        protected void BtnListele_Click(object sender, EventArgs e)
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
            //Yemek Ekleme
            SqlCommand komut = new SqlCommand("insert into Tbl_Yemekler (yemekad,yemekmalzeme,yemektarif,kategoriid) values" +
                "(@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Txtyemekad.Text);
            komut.Parameters.AddWithValue("@p2", Txtmalzeme.Text);
            komut.Parameters.AddWithValue("@p3", TxtTarif.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            //Kategori arttırma
            SqlCommand komut2 = new SqlCommand("update Tbl_kategoriler set kategoriadet=kategoriadet+1 where kategoriid=@p1",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1",DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}