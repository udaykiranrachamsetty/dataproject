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

public partial class UserLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["GroupCon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select GroupKey from Register where Username = '"+TextBox1.Text+"' AND Password='"+TextBox2.Text+"'",con);
        string gkey = Convert.ToString(cmd.ExecuteScalar());
        con.Close();
        if (gkey != "")
        {
            if (gkey == "NO")
            {
                Response.Write("<script>alert('You are not an authorized User!');window.location='UserLogin.aspx';</script>");
            }
            else
            {
                Session["uname"] = TextBox1.Text;
                Response.Redirect("UploadFile.aspx");
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid Login Details!');window.location='UserLogin.aspx';</script>");
        }
    }
}
