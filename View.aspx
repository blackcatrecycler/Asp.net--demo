<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <li><%#Eval("account")%></li>
                <li><%#Eval("email")%></li>
                <li><%#Eval("password")%></li>
                <hr />
            </ItemTemplate>      
        </asp:Repeater>
        <asp:Label ID="lab" runat="server"></asp:Label> 
    </div>
    </form>
</body>
</html>
