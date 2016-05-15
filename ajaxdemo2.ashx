<%@ WebHandler Language="C#" Class="ajaxdemo2" %>

using System;
using System.Web;
using System.Linq; //一定要引用linq，不然查询很麻烦

public class ajaxdemo2 : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        string TxtAccount = context.Request.Form["FindAccount"];
        string final;
        using (var db = new Entities())
        {
            var ac = db.member.FirstOrDefault(a => a.account == TxtAccount);
            if (ac == null)
            {
                final = "没有此用户";
            }
            else
            {
                final = "用户“"+ac.account+"”的密码是“"+ac.password+"”";
            }
        }
        context.Response.Write(final);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}