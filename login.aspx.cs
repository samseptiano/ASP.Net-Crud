using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\ProjectAkhirUTS\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "SELECT * FROM [dbo].[User] where CONVERT(NVARCHAR(200),[email]) = '" + TextBox1.Text + "' and CONVERT(NVARCHAR(200),[password]) = '" + TextBox3.Text + "'";
        cmd.Connection = con;
        try
        {
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows == true)
            {
                if (dr.GetString(6) == "1")
                {
                    Response.Write("Oops..kamu sedang aktif");
                }
                else
                {
                    con.Close();
                    cmd.CommandText = "update [dbo].[User] set [session] = '1' where [email] = '" + TextBox1.Text + "'";
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Session.Add("session_user", TextBox1.Text.ToString());
                    Session.Add("session_password", TextBox3.Text.ToString());
                    Response.Redirect("dashboard.aspx");
                }
            }
            else
            {
                Label1.Text = "Password atau Email Salah!!";
            }
        }
        catch (Exception ex)
        {
           Label1.Text = ex.ToString();
        }
        con.Close();
}
}
