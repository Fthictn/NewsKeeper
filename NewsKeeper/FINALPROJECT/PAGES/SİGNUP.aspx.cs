using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;

namespace FINALPROJECT
{
    public partial class SİGNUP : System.Web.UI.Page
    {
       
    
        protected void Page_Load(object sender, EventArgs e)
        {
  
        }
        protected void yolla_Click(object sender, EventArgs e)
        {
            string ad = username.Text;
            string soyad = usersurname.Text;
            string meslek = userjob.Text;
            string email = useremail.Text;
            string sifre = userpassword.Text;
            string connectionstring = "Data source=LAPTOP-LPVM00KQ\\SQLSERVER;Initial Catalog=ASPNETFINALPROJECT;Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionstring);
            try
            {
                con.Open();
            }
            catch(Exception ex)
            {
                Response.Write(ex+"----->HATASINDAN DOLAYI BAĞLANTI KURULAMADI!");
            }

            SqlDataAdapter adapt = new SqlDataAdapter("select * from userlogintable where email='"+email+"'",con);
            DataTable dt = new DataTable();
            adapt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("SİGNUP.aspx");
            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into userlogintable (ad,soyad,meslek,email,sifre) values(@ad,@soyad,@meslek,@email,@sifre)", con);

                cmd.Parameters.AddWithValue("@ad", ad);
                cmd.Parameters.AddWithValue("@soyad", soyad);
                cmd.Parameters.AddWithValue("@meslek", meslek);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@sifre", sifre);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("index.aspx");
            }

        }
    }
}