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
    public partial class GONDERIKAYIT : System.Web.UI.Page
    {       string icerik;
            string link;
        protected void Page_Load(object sender, EventArgs e)
        {
            string id=Request.QueryString["id"];
            string kullanici_id = Session["userid"].ToString();
            string connectionstring = "Data source=LAPTOP-LPVM00KQ\\SQLSERVER;Initial Catalog=ASPNETFINALPROJECT;Integrated Security=True";
            SqlConnection baglanti = new SqlConnection(connectionstring);
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("select icerik,link from  dbo.gonderitable where id = @userid", baglanti);
            cmd.Parameters.AddWithValue("@userid",id);
            SqlDataReader read = cmd.ExecuteReader();


            if (read.Read())
            {
                icerik = read["icerik"].ToString();
                link = read["link"].ToString();   
                read.Close();  
            }
            baglanti.Close();
            read.Close();
            
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();

            SqlCommand komut = new SqlCommand("insert into myicerik (myicerik,link,kullanici_id) values(@icerik,@baglantı,@kullanici)", con);
            int myid = Convert.ToInt32(kullanici_id);
            komut.Parameters.AddWithValue("@icerik",icerik);
            komut.Parameters.AddWithValue("@baglantı",link);
            komut.Parameters.AddWithValue("@kullanici", myid);

            komut.ExecuteNonQuery();
            con.Close();
            Response.Redirect("INDEX.aspx");


        }
    }
}