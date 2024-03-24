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

public partial class UserUploads : System.Web.UI.Page
{
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
            con.Open();
            SqlCommand cmd = new SqlCommand("update Upload set Status='YES' where FileID = '"+id+"'",con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('File Verified!');</script>");
        }
    }
}
