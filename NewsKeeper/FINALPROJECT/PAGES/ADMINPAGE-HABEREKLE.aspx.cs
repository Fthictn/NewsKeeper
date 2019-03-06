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
    public partial class ADMINPAGE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void yolla_Click(object sender, EventArgs e)
        {
            string mylink = birinci.Text.ToString();
            string mycontent = second.Text.ToString();

            string connectionstring = "Data source=LAPTOP-LPVM00KQ\\SQLSERVER;Initial Catalog=ASPNETFINALPROJECT;Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into dbo.gonderitable (icerik,link) values('"+mycontent+"','"+mylink+"')",con);
 
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}