using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id="";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            SqlCommand komut = new SqlCommand("select * from Tbl_Mesajlar", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }
    }
}