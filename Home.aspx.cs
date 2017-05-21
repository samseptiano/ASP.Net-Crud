using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Net.Mail;
//using MySql.Data.MySqlClient;


public partial class Home : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\ProjectAkhirUTS\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "INSERT INTO [dbo].[User] ([nama], [email], [tgl_lahir], [status], [jenis_kelamin], [metode_bayar], [session], [alamat], [password])VALUES('" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "','" + RadioButtonList1.SelectedValue + "','" + RadioButtonList2.SelectedValue + "','" + RadioButtonList3.SelectedValue + "','0','"+TextBox4.Text+ "','" + TextBox5.Text + "')";
        cmd.Connection = con;
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();

            /*
            // Specify the from and to email address
            MailMessage mailMessage = new MailMessage("rs.pedulisehat@gmail.com", TextBox3.Text);
            // Specify the email body
            mailMessage.Body = "Info Account";
            // Specify the email Subject
            mailMessage.Subject = "Hai "+TextBox1.Text+ ", Terima kasih telah mendaftar. Untuk informasi mengenai akun, keamanan, serta pelayanan kehilangan akun anda dapat menghubungi 021-1234567 (HOTLINE) atau email kami di rs.pedulisehat@gmail.com.  Terima kasih";

            // No need to specify the SMTP settings as these 
            // are already specified in web.config
            SmtpClient smtpClient = new SmtpClient();
            // Finall send the email message using Send() method
            smtpClient.Send(mailMessage);*/

            Response.Redirect("redirect.aspx");
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
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}