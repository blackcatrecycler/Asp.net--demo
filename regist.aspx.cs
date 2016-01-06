using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webDEMOModel;

public partial class re : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void BtnOK_Click(object sender, EventArgs e)
    {
        using (var db = new webDEMOEntities())
        {
            var s = new member();
            s.account = TxtAccout.Text;
            s.password = TxtPassword.Text;
            s.email = TxtEmail.Text;
            db.member.AddObject(s);  // 添加
            //db.member.Detach     删除
            db.SaveChanges();
        }
    }
}