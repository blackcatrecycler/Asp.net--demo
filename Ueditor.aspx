<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ueditor.aspx.cs" Inherits="Ueditor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" charset="utf-8" src="Ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="Ueditor/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="Ueditor/lang/zh-cn/zh-cn.js"></script>
    <script src="jquery-2.2.3.min.js"></script>
    <script src="js/Ansi.js"></script>
    <script src="js/Base64.js"></script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->


    <style type="text/css">
        div {
            width: 100%;
        }
    </style>
    <title>Ueditor测试</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <textarea id="editor" style="width: 600px; height: 200px"></textarea>
            <textarea style="display: none;" id="PostStr" runat="server" />
            <asp:Button runat="server" ID="BtnPost" Text="点我提交" OnClick="Btn_Post_Click" OnClientClick="BefSubmit()" />


            <script>
                function BefSubmit() {
                    var Pstr = $("#<%=PostStr.ClientID%>");
                    Pstr.text(encode64(strUnicode2Ansi(ue.getContent())));
                    //alert(ue.getContent());

                }
            </script>

            <script>

                var ue = UE.getEditor('editor');
            </script>
        </div>
    </form>
</body>
</html>
