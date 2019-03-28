using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// MyBase64 的摘要说明
/// </summary>
public class MyBase64
{
    public MyBase64()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    public static string base64Decode(string data)
    {
        try
        {
            byte[] datas = System.Convert.FromBase64String(data);
            string strPath = System.Text.Encoding.GetEncoding("gb2312").GetString(datas);
            return strPath;
        }
        catch (Exception e)
        {
            throw new Exception("Error in base64Decode" + e.Message);
        }
    }
}