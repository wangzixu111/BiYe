﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddNews.aspx.cs"  ValidateRequest="false" EnableEventValidation="false"  Inherits="Admin_AddNews" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>休渔期网站设计</title>
      <LINK href="Template/Style.css"type=text/css rel=stylesheet>
     <link rel="stylesheet" href="../kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="../kindeditor/plugins/code/prettify.css" />
	<script charset="utf-8" src="../kindeditor/kindeditor.js"></script>
	<script charset="utf-8" src="../kindeditor/lang/zh_CN.js"></script>
	<script charset="utf-8" src="../kindeditor/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('#content1', {
				cssPath : '../kindeditor/plugins/code/prettify.css',
				uploadJson : 'upload_json.ashx',
				fileManagerJson : 'file_manager_json.ashx',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
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
      添加信息</td>
 </tr>
</table>
</td>
</tr>
</table>
    </div>
        <table align="center" bgcolor="#e3ebfe" border="0" cellpadding="2" cellspacing="1"
            style="margin-top: 8px" width="98%">
            <tr bgcolor="#e7e7e7">
                <td colspan="10" height="24">
                    信息标题：<asp:TextBox ID="title" runat="server" Style="border-right: #ffcc00 1px solid;
                        border-top: #ffcc00 1px solid; border-left: #ffcc00 1px solid; border-bottom: #ffcc00 1px solid"
                        Width="598px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="title"
                        ErrorMessage="请填写标题"></asp:RequiredFieldValidator></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" height="24">
                    文章作者：<asp:TextBox ID="TextBox1" runat="server" Style="border-right: #ffcc00 1px solid;
                        border-top: #ffcc00 1px solid; border-left: #ffcc00 1px solid; border-bottom: #ffcc00 1px solid"
                        Width="109px">本站编辑</asp:TextBox></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" height="24">
                    文章来源：<asp:TextBox ID="TextBox2" runat="server" Style="border-right: #ffcc00 1px solid;
                        border-top: #ffcc00 1px solid; border-left: #ffcc00 1px solid; border-bottom: #ffcc00 1px solid"
                        Width="109px">本站</asp:TextBox>
                </td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" height="24">
                    信息类别：<asp:DropDownList ID="DropDownList1" runat="server" Width="275px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td id="TD1" runat="server" colspan="10" height="24">
                    小类别名：<asp:DropDownList ID="DropDownList2" runat="server" Width="275px">
                    </asp:DropDownList></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td align="center" colspan="10" style="height: 24px">
                    信息内容</td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td align="left" colspan="10" height="24">
                    <textarea id="content1" runat="server" cols="100" rows="8" style="visibility: hidden; width: 100%; height: 200px"></textarea>
                   
                </td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td align="center" colspan="10" height="24">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
