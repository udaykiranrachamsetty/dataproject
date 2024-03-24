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
using System.Text;
using System.IO;
using System.Security.Cryptography;

public partial class Download : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["GroupCon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Request.QueryString["id"].ToString();
        TextBox2.Text = Request.QueryString["fname"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select Ckey from Upload where FileID = '" + TextBox1.Text + "'", con);
        string dkey = Convert.ToString(cmd.ExecuteScalar());
        con.Close();
        string fname = "";
        if (TextBox3.Text == dkey)
        {
            con.Open();
            SqlCommand com = new SqlCommand("select FileID,FileName,Filedata,Ftype from Upload where FileID=@FileID", con);
            com.Parameters.AddWithValue("@FileID", TextBox1.Text);
            SqlDataReader dr = com.ExecuteReader();

            if (dr.Read())
            {
                Response.Clear();
                Response.Buffer = true;
                Response.ContentType = dr["FileName"].ToString();
                Response.AddHeader("content-disposition", "Filedata;FileName=" + dr["FileName"].ToString() + dr["Ftype"].ToString());     // to open file prompt Box open or Save file         
                Response.Charset = "";
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.BinaryWrite(DecryptFile(dkey, (byte[])dr["Filedata"]));
                Response.End();
            }
            con.Close();
        }
        else
        {
            Response.Write("<script>alert('Invalid Decryption Key!')</script>");
        }
    }
    private byte[] DecryptFile(string EncryptionKey, byte[] inputFiledata)
    {
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            MemoryStream fsInput = new MemoryStream(inputFiledata);
            CryptoStream cs = new CryptoStream(fsInput, encryptor.CreateDecryptor(), CryptoStreamMode.Read);
            byte[] plainBytes = new byte[inputFiledata.Length];
            int DecryptedCount = cs.Read(plainBytes, 0, plainBytes.Length);
            fsInput.Close();
            cs.Close();
            return plainBytes;
        }
    }
}
