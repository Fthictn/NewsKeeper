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
    public partial class UPDATE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void yolla_Click(object sender, EventArgs e)
        {
            string myname, mysurname, myjob, myemail, mypassword;
            string connectionstring = "Data source=LAPTOP-LPVM00KQ\\SQLSERVER;Initial Catalog=ASPNETFINALPROJECT;Integrated Security=True";

            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();

            string myuserid = Session["userid"].ToString();

            SqlCommand cmd = new SqlCommand("select * from dbo.userlogintable where userlogin_id='"+myuserid+"'", con);

            myname = birinci.Text.ToString();
            mysurname = second.Text.ToString();
            myjob = meslek.Text.ToString();
            myemail = email.Text.ToString();
            mypassword =sifre.Text.ToString();


            SqlCommand command = new SqlCommand("Update dbo.userlogintable set ad='"+myname+"',soyad='"+mysurname+"',meslek='"+myjob+"',email='"+myemail+"',sifre='"+mypassword+"' where userlogin_id='"+myuserid+"'", con);

                command.ExecuteNonQuery();
                Response.Redirect("AFTER-SIGNIN.aspx");
                
       
            
            con.Close();
        }
    }
}