using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id="";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Mesajid"];
            SqlCommand komut = new SqlCommand("select * from Tbl_Mesajlar where Mesajid=@p1 ",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",Convert.ToInt32(id));
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                Txtgonderen.Text = oku[1].ToString();
                Txtbaslik.Text = oku[2].ToString();
                Txtmail.Text = oku[3].ToString();
                Txticerik.Text = oku[4].ToString();
            }
            bgl.baglanti().Close();

        }
    }
}