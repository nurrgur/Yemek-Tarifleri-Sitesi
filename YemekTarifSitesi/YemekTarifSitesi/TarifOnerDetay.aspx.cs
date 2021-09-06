using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{

    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];
            if (Page.IsPostBack == false)
            {

                SqlCommand komut = new SqlCommand("select* from Tbl_Tarifler where tarifid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    txttarifad.Text = oku[1].ToString();
                    txtmalzemeler.Text = oku[2].ToString();
                    txtyapilis.Text = oku[3].ToString();
                    txttarifoneren.Text = oku[5].ToString();
                    txtmail.Text = oku[6].ToString();
                }
                bgl.baglanti().Close();

                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("select * from Tbl_kategoriler", bgl.baglanti());
                SqlDataReader oku2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "Kategoriad";
                DropDownList1.DataValueField = "kategoriid";

                DropDownList1.DataSource = oku2;
                DropDownList1.DataBind();
            }
        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            //Durum Güncelleme
            SqlCommand komut = new SqlCommand("update Tbl_Tarifler set TarifDurum=1 where Tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Yemeği Anasayfaya atma
            SqlCommand komut2 = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid)" +
                "values (@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", txttarifad.Text);
            komut2.Parameters.AddWithValue("@p2",txtmalzemeler.Text);
            komut2.Parameters.AddWithValue("@p3",txtyapilis.Text);
            komut2.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
            //Kategoriyi bir arttırma işlemi
            SqlCommand komut3 = new SqlCommand("update Tbl_kategoriler set KategoriAdet=kategoriAdet+1 where kategoriid=@p5 ",bgl.baglanti());
            komut3.Parameters.AddWithValue("@p5", DropDownList1.SelectedValue);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}
