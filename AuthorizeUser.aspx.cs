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
using System.IO;
using System.Text;
using System.Security.Cryptography;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

public partial class AuthorizeUser : System.Web.UI.Page
{
    string mailid = "mrcetlms@gmail.com";
    string pwd = "yzfv qcpf iztnscgn";
    string to, subject = "Group Key", message;
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
           
            string uname = rows.Cells[0].Text;
            string email = rows.Cells[3].Text;
            Random rm = new Random();
            int rno = rm.Next(11111, 99999);
            string pkey = Encrypt(uname, rno.ToString());

            con.Open();
            SqlCommand cmd = new SqlCommand("update Register set GroupKey = '" + pkey + "' where Username = '" + uname + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            sendmail(pkey, email);
            Response.Write("<script>alert('Group Key Sent to Group Member!')</script>");
        }
    }
    private string Encrypt(string EncryptionKey, string clearText)
    {
        byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(clearBytes, 0, clearBytes.Length);
                    cs.Close();
                }
                clearText = Convert.ToBase64String(ms.ToArray());
            }
        }
        return clearText;
    }
    private void sendmail(string pkey, string to)
    {
        message = "<hr><br>" + "Group Key :" + pkey + "<br><br>";
        NetworkCredential loginInformation = new NetworkCredential(mailid, pwd);
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress(mailid);
        msg.To.Add(new MailAddress(to));
        msg.Subject = subject;
        msg.Body = message;
        msg.IsBodyHtml = true;

        try
        {
            SmtpClient client = new SmtpClient("smtp.gmail.com",587);
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = loginInformation;
            client.Send(msg);
        }
        catch { }
    }
}
