using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Configuration;

public partial class Jadwal : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\ProjectAkhirUTS\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        string vquery = "SELECT [Nama], [Spesialis], [Praktek] FROM [dbo].[Table]";
        SqlCommand cmd = new SqlCommand(vquery, con);
        SqlDataReader dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        GridView1.Attributes.CssStyle["text-align"] = "center";
        con.Close();
        con.Close();
    }
}