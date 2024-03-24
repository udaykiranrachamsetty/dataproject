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

public partial class GroupSign : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["GroupCon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Text = Session["uname"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select GroupKey from Register where Username = '" + Label6.Text + "'", con);
        string gkey = Convert.ToString(cmd.ExecuteScalar());
        con.Close();
        if (TextBox1.Text == gkey)
        {
            Response.Redirect("SharedFiles.aspx");
        }
        else
        {
            Response.Write("<script>alert('Entered Wrong Group Key!');window.location='GroupSign.aspx';</script>");
        }
    }
}
