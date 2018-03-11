<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HuiFuLY.aspx.cs" Inherits="AdminManger_HuiFuLY" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
<LINK href="Template/Style.css"type=text/css rel=stylesheet>
</head>
<body >
    <form id="form1" runat="server">
    <div> 
    <table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#e3ebfe" align="center">
<tr>
 <td height="26" >
  <table width="98%" border="0" cellspacing="0" cellpadding="0">
  <tr>
  <td align="center" style="height: 22px">
      回复留言</td>
 </tr>
</table>
</td>
</tr>
</table>
    </div>
        <table align="center" bgcolor="#e3ebfe" border="0" cellpadding="2" cellspacing="1"
            style="margin-top: 8px" width="98%">
            <tr align="right" bgcolor="#eef4ea">
                <td align="left" colspan="10" height="36">
                    <table cellpadding="2" class="registeInfo" width="100%">
                        <tr>
                            <td align="right" style="height: 24px" width="120">
                                留言标题：</td>
                            <td style="height: 24px">
                                <asp:Label ID="Label1" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right" style="height: 23px" width="120">
                                留言人：</td>
                            <td style="height: 23px">
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr style="color: #000000">
                            <td align="right" style="height: 28px">
                                留言时间：</td>
                            <td style="height: 28px">
                                <asp:Label ID="Label2" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right">
                                留言内容：</td>
                            <td>
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="height: 133px">
                                回复留言：</td>
                            <td style="height: 133px">
                                <asp:TextBox ID="TextBox1" runat="server" Height="211px" TextMode="MultiLine" Width="100%"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="回复" /></td>
                        </tr>
                    </table>
                    </td>
            </tr>
        </table>
    </form>
</body>
</html>
