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

public partial class UploadFile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["GroupCon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        autoid();
        Label11.Text = Session["uname"].ToString();
        Random rm = new Random();
        int rno = rm.Next(11111, 99999);
        TextBox3.Text = Encrypt(rno.ToString(), Label11.Text);

        con.Open();
        SqlCommand cmd = new SqlCommand("select GroupID from Register where Username = '" + Label11.Text + "'", con);
        Label12.Text = Convert.ToString(cmd.ExecuteScalar());
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/upload/") + FileUpload1.FileName);
        string fpath = Server.MapPath("~/upload/") + FileUpload1.FileName;
        string ftype = Path.GetExtension(fpath);
        string fname = FileUpload1.FileName;

        EncryptFile(TextBox3.Text, fpath, Server.MapPath("~/upload/encfile/") + FileUpload1.FileName);
        string encpath = Server.MapPath("~/upload/encfile/") + FileUpload1.FileName;

        FileStream fs = new FileStream(encpath, FileMode.Open);
        byte[] buffer = new byte[fs.Length];
        fs.Read(buffer, 0, (int)fs.Length);
        fs.Close();

        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Upload values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + ftype + "',@Filedata,'" + Label11.Text + "','"+Label12.Text+"','NO')", con);
        cmd.Parameters.AddWithValue("@Filedata", buffer);
        cmd.ExecuteNonQuery();
        con.Close();
        ftpupload(encpath);
        Response.Write("<script>alert('File Encrypted & Uploaded to Cloud!');window.location='UploadFile.aspx';</script>");

    }
    private void autoid()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select max(FileID) from Upload", con);
        object result = cmd.ExecuteScalar();
        int ID;
        if (result.GetType() != typeof(DBNull))
        {
            ID = Convert.ToInt32(result);
        }
        else
        {
            ID = 0;
        }

        ID = ID + 1;
        TextBox1.Text = ID.ToString();
        con.Close();
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
    private void EncryptFile(string EncryptionKey, string inputFilePath, string outputfilePath)
    {

        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (FileStream fsOutput = new FileStream(outputfilePath, FileMode.Create))
            {
                using (CryptoStream cs = new CryptoStream(fsOutput, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    using (FileStream fsInput = new FileStream(inputFilePath, FileMode.Open))
                    {
                        int data;
                        while ((data = fsInput.ReadByte()) != -1)
                        {
                            cs.WriteByte((byte)data);
                        }
                    }
                }
            }
        }
    }
    private void ftpupload(string fpath)
    {
        FileInfo toup = new FileInfo(fpath);
        FtpWebRequest request = (FtpWebRequest)WebRequest.Create(new Uri("ftp://ftp.drivehq.com/" + "/" + toup.Name));
        request.Method = WebRequestMethods.Ftp.UploadFile;
        request.Credentials = new NetworkCredential("kiranv1357@gmail.com", "Kiran@!1357");
        Stream ftpstream = request.GetRequestStream();
        FileStream file = File.OpenRead(fpath);
        int length = 1024;
        byte[] buffer = new byte[length];
        int byteread = 0;
        do
        {
            byteread = file.Read(buffer, 0, length);
            ftpstream.Write(buffer, 0, byteread);
        }

        while (byteread != 0);
        file.Close();
        ftpstream.Close();
    }
}
