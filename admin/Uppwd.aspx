<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Uppwd.aspx.cs" Inherits="Admin_Uppwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>休渔期网站设计</title>
<LINK href="Template/Style.css"type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     
<table width="98%" align="center" border="0" cellpadding="3" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px;margin-top:8px;">
  <tr>
    <td bgcolor="#1e8cc5" class='title' align=center ><span style=" color:White;">修改登录密码</span></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td>
        &nbsp;输入原密码：<asp:TextBox ID="txtpwd1" runat="server" TextMode="Password"></asp:TextBox>新密码：<asp:TextBox
            ID="txtpwd2" runat="server" TextMode="Password" Width="138px"></asp:TextBox>
        &nbsp;
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="修改" />&nbsp;
        <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label></td>
  </tr>
    <tr bgcolor="#ffffff">
        <td align="center">
        </td>
    </tr>
</table>
    </div>
    </form>
</body>
</html>
