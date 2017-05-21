using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dashboard : System.Web.UI.Page
{
    public string vuser;
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\ProjectAkhirUTS\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        vuser = Session["session_user"].ToString();
        Label5.Text = vuser;
        if(IsPostBack != true)
        {
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[Record] where [email] = '"+ Session["session_user"] + "'", con);
                da.SelectCommand = cmd;
                da.Fill(dt);
                da.Dispose();
                cmd.Dispose();
                con.Close();
                GridView1.Attributes.CssStyle["text-align"] = "center";
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("cannot open connection");
            }
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[Record] where [email] = '" + Session["session_user"] + "'", con);
            da.SelectCommand = cmd;
            da.Fill(dt);
            da.Dispose();
            cmd.Dispose();
            con.Close();
            GridView1.Attributes.CssStyle["text-align"] = "center";
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        Session.Abandon();
        cmd.CommandText = "update [dbo].[User] set [session] = '0' where [email] = '" + Session["session_user"] + "'";
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        Response.Redirect("Home.aspx");
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (IsPostBack == true)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "INSERT INTO [dbo].[Record] ([email], [keluhan], [usia], [waktu])VALUES('" + Session["session_user"] + "','" + TextBox2.Text + "','" + Convert.ToInt32(TextBox1.Text) + "','" + DateTime.Today.ToString("dd-MM-yyyy") + "-" + DateTime.Now.ToString("HH:mm:ss") + "')";
                cmd.Connection = con;
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Label6.Text = "Berhasil mengajukan!!";

                    Response.Redirect(Request.RawUrl);
                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }
                finally
                {
                    con.Close();
                }
            }
            else
            {
                Label6.ForeColor = System.Drawing.Color.Red;
                Label6.Text = "Field tidak boleh kosong";
            }
        }
    }
}