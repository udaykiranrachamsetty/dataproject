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

public partial class HCLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "group1" && TextBox2.Text == "group1")
        {
            if (DropDownList1.Text == "Group1")
            {
                Session["group"] = DropDownList1.Text;
                Response.Redirect("AuthorizeUser.aspx");
            }
            else 
            {
                Response.Write("<script>alert('Invalid Login Details!');</script>");
            }
        }
        else if (TextBox1.Text == "group2" && TextBox2.Text == "group2")
        {
            if (DropDownList1.Text == "Group2")
            {
                Session["group"] = DropDownList1.Text;
                Response.Redirect("AuthorizeUser.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Login Details!');</script>");
            }
        }
        else if (TextBox1.Text == "group3" && TextBox2.Text == "group3")
        {
            if (DropDownList1.Text == "Group3")
            {
                Session["group"] = DropDownList1.Text;
                Response.Redirect("AuthorizeUser.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Login Details!');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid Login Details!');</script>");
        }
    }
}
