using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (var db = new Entities())
        {
            var linq = from it in db.member
                       select it;
            Repeater1.DataSource = linq.ToList();
            Repeater1.DataBind();                     //以上无条件绑定
            

            int id = 1;
            string b = db.member.SingleOrDefault(a=>a.id==id).account;
            lab.Text = b;                                  //单个绑定
        }
    }
}