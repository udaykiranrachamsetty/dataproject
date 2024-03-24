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

public partial class SharedFiles : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["GroupCon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["uname"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("Select GroupID from Register where Username = '"+Label1.Text+"'",con);
        Label2.Text = Convert.ToString(cmd.ExecuteScalar());
        con.Close();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            int x = Convert.ToInt32(e.CommandArgument);
            GridViewRow rows = GridView1.Rows[x];
            string id = rows.Cells[0].Text;
            string fname = rows.Cells[1].Text;
            string user = rows.Cells[3].Text;
            string group = rows.Cells[4].Text;
           
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Request values('" + id + "','" + fname + "','" + Label1.Text + "','" + group + "','NO')", con);
            cmd.ExecuteNonQuery();            
            con.Close();
            Response.Write("<script>alert('File Request Sent to Group Manager!')</script>");
        }
        else if (e.CommandName == "View")
        {
            int x = Convert.ToInt32(e.CommandArgument);
            GridViewRow rows = GridView1.Rows[x];
            string id = rows.Cells[0].Text;
            string fname = rows.Cells[1].Text;
            string user = rows.Cells[3].Text;
            string group = rows.Cells[4].Text;

            con.Open();
            SqlCommand cmd = new SqlCommand("select Status from Request where FileID='"+id+"' AND UserName = '"+Label1.Text+"' AND GroupID = '"+group+"'", con);
            string sts = Convert.ToString(cmd.ExecuteScalar());
            con.Close();
            if (sts != "")
            {
                Response.Redirect("Download.aspx?id=" + id + "&fname=" + fname);
            }
        }
    }
}
