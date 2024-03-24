using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

public partial class UserRequests : System.Web.UI.Page
{
    string mailid = "mrcetlms@gmail.com";
    string pwd = "yzfv qcpf iztnscgn";
    string to, subject = "Decryption Key", message;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["GroupCon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            int x = Convert.ToInt32(e.CommandArgument);
            GridViewRow rows = GridView1.Rows[x];
            string id = rows.Cells[0].Text;
            string uname = rows.Cells[2].Text;

            con.Open();
            SqlCommand cmd1 = new SqlCommand("select Email from Register where Username = '" + uname + "'", con);
            SqlCommand cmd2 = new SqlCommand("select Ckey from Upload where FileID = '" + id + "'", con);
            SqlCommand cmd = new SqlCommand("update Request set Status = 'Key Sent' where FileID = '" + id + "' AND UserName = '" + uname + "'", con);
            cmd.ExecuteNonQuery();
            string email = Convert.ToString(cmd1.ExecuteScalar());
            string dkey = Convert.ToString(cmd2.ExecuteScalar());
            con.Close();
            sendmail(dkey, email);
            Response.Write("<script>alert('Decryption Key Sent to User!')</script>");
        }
    }
    private void sendmail(string pkey, string to)
    {
        message = "<hr><br>" + "Decryption Key : " + pkey + "<br><br>";
        NetworkCredential loginInformation = new NetworkCredential(mailid, pwd);
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress(mailid);
        msg.To.Add(new MailAddress(to));
        msg.Subject = subject;
        msg.Body = message;
        msg.IsBodyHtml = true;

        try
        {
            SmtpClient client = new SmtpClient("smtp.gmail.com");
            client.Port = 587;
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = loginInformation;
            client.Send(msg);
        }
        catch (Exception ex)
        {
            // Log the exception or handle it appropriately
            Response.Write("<script>alert('Error occurred: " + ex.Message + "')</script>");
        }
    }
}
