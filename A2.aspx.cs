using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class A2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Request.QueryString["id"];
        Button1.Text = Request.QueryString["name"];
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("A1.aspx");
    }
}