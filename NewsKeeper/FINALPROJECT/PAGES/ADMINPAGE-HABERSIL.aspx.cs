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
    public partial class ADMINPAGE_HABERSIL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionstring = "Data source=LAPTOP-LPVM00KQ\\SQLSERVER;Initial Catalog=ASPNETFINALPROJECT;Integrated Security=True";
            SqlConnection baglanti = new SqlConnection(connectionstring);
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("select * from gonderitable", baglanti);

            rpt_kitap.DataSource = cmd.ExecuteReader();
            rpt_kitap.DataBind();

        }
    }
}