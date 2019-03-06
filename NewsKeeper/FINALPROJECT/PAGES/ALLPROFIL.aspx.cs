using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace FINALPROJECT
{
    public partial class ALLPROFIL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string kullanici_id = Session["userid"].ToString();
            string connectionstring = "Data source=LAPTOP-LPVM00KQ\\SQLSERVER;Initial Catalog=ASPNETFINALPROJECT;Integrated Security=True";
            SqlConnection baglanti = new SqlConnection(connectionstring);
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("select * from myicerik where kullanici_id='"+kullanici_id+"'", baglanti);
            /*int myid = Convert.ToInt32(kullanici_id);
            cmd.Parameters.AddWithValue("@secili", myid);
            */
            rpt_kitap.DataSource = cmd.ExecuteReader();
            rpt_kitap.DataBind();

            //Kitaplar databaseinden kitap adını çekebilmek için bu repeaterdan gelen değeri tutabilmek.
            baglanti.Close();




        }
    }
}