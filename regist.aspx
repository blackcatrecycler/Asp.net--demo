<%@ Page Language="C#" AutoEventWireup="true" CodeFile="regist.aspx.cs" Inherits="re" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TxtAccout" runat="server"></asp:TextBox><br/><br/>
        <asp:TextBox ID="TxtPassword" runat="server"></asp:TextBox><br/><br/>
        <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox><br/><br/>
        <asp:TextBox ID="TxtVerification" runat="server"></asp:TextBox><br/><br/>
        <asp:Button  ID="BtnOK" runat="server" Text="确认注册" OnClick="BtnOK_Click" />
        <%--  --%>
    </div>
    </form>
</body>
</html>
