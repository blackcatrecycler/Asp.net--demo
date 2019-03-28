using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ueditor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btn_Post_Click(object sender,EventArgs e)
    {
        string str = Server.HtmlDecode(PostStr.InnerHtml);

        Response.Write(MyBase64.base64Decode(str));
    }

}