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
    public partial class INDEX : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionstring = "Data source=LAPTOP-LPVM00KQ\\SQLSERVER;Initial Catalog=ASPNETFINALPROJECT;Integrated Security=True";
            SqlConnection baglanti = new SqlConnection(connectionstring);
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("select * from gonderitable", baglanti);
            rpt_kitap.DataSource = cmd.ExecuteReader();
            rpt_kitap.DataBind();
            baglanti.Close();
        }

        protected void yolla_Click(object sender, EventArgs e)
        {
            string connectionstring = "Data source=LAPTOP-LPVM00KQ\\SQLSERVER;Initial Catalog=ASPNETFINALPROJECT;Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionstring);
            try
            {
                con.Open();
            }
            catch (Exception ex)
            {
                Response.Write(ex + "-----> HATASINDAN DOLAYI BAĞLANTI KURULAMADI!");
            }

            string email = birinci.Text.ToString();
            string sifre = second.Text.ToString();

            SqlDataAdapter adapt = new SqlDataAdapter("select * from admintable where admin_email='" + email + "' and admin_password='"+sifre+"'", con);
            DataTable dt = new DataTable();
            adapt.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Response.Redirect("ADMINPAGE-HABEREKLE.aspx");
            }
            else
            { 
                SqlCommand cmd = new SqlCommand("select * from userlogintable where email='"+email+"' and sifre='"+sifre+"'", con);
                SqlDataReader read = cmd.ExecuteReader();  
                if (read.Read())
                {
                    Session.Add("userid", read["userlogin_id"]);
                    Session.Add("mailaddress", email);
                    Session.Add("name", read["ad"]);
                    Session.Add("surname", read["soyad"]);
                    Session.Add("job", read["meslek"]);
                    Session.Add("sifresi", sifre);
                    Response.Redirect("AFTER-SIGNIN.aspx");
                }
                else
                {
                    Response.Redirect("SİGNUP.aspx");
                }
                con.Close();
                read.Close();
            }
        }
    }
}