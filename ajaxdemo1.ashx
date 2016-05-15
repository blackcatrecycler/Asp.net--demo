<%@ WebHandler Language="C#" Class="ajaxdemo1" %>

using System;
using System.Web;
using System.Linq; //一定要引用linq，不然查询很麻烦
using Newtonsoft.Json; //使用json

public class ajaxdemo1 : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        using (var db = new Entities())
        {
            var se = (from it in db.member select it).ToList();
            string final= JsonConvert.SerializeObject(se);
            context.Response.Write(final);
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}