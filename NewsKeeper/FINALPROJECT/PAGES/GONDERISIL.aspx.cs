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
    public partial class GONDERISIL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            string connectionstring = "Data source=LAPTOP-LPVM00KQ\\SQLSERVER;Initial Catalog=ASPNETFINALPROJECT;Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();
 
            SqlCommand cmd = new SqlCommand("delete from myicerik where  myicerik_id='" + id+"'",con);
 
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("AFTER-SIGNIN.aspx");
        }
    }
}