using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["Yemekid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler where yemekid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("p1", Convert.ToInt32(yemekid));
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    Txtyemekad.Text = oku[1].ToString();
                    Txtmalzeme.Text = oku[2].ToString();
                    TxtTarif.Text = oku[3].ToString();
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

        protected void Btnguncelle_Click(object sender, EventArgs e)
        {
            //Yemekler tablosunda güncelleme
            FileUpload1.SaveAs(Server.MapPath("/Resimler/"+FileUpload1.FileName));
            SqlCommand komut = new SqlCommand("update Tbl_yemekler set yemekad=@p1,yemekmalzeme=@p2,yemektarif=@p3,kategoriid=@p4,yemekresim=@p5 where yemekid=@p6",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",Txtyemekad.Text);
            komut.Parameters.AddWithValue("@p2", Txtmalzeme.Text);
            komut.Parameters.AddWithValue("@p3", TxtTarif.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", "~/Resimler/" + FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p6", Convert.ToInt32(yemekid));
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Tarifler tablosunda güncelleme
            FileUpload1.SaveAs(Server.MapPath("/Resimler/" + FileUpload1.FileName));
            SqlCommand komut2 = new SqlCommand("update Tbl_tarifler set tarifmalzeme=@p2,tarifyapilis=@p3,kategoriid=@p4,tarifresim=@p5 where tarifad=@p6", bgl.baglanti());
            //komut2.Parameters.AddWithValue("@p1", Txtyemekad.Text);
            komut2.Parameters.AddWithValue("@p2", Txtmalzeme.Text);
            komut2.Parameters.AddWithValue("@p3", TxtTarif.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.Parameters.AddWithValue("@p5", "~/Resimler/" + FileUpload1.FileName);
            komut2.Parameters.AddWithValue("@p6", Txtyemekad.Text);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

        }

        protected void Btngununyemegi_Click(object sender, EventArgs e)
        {   
            //Tüm yemeklerin durumunu false yapıyor
            SqlCommand komut = new SqlCommand("update Tbl_Yemekler set durum=0", bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Günün yemeğini true yapar
            SqlCommand komut2 = new SqlCommand("update Tbl_Yemekler set durum=1 where yemekid=@p1",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1",Convert.ToInt32(yemekid));
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();


        }
    }
}