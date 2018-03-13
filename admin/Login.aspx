<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>休渔期网站设计</title>
    <LINK rel="stylesheet" 
href="Images/myown.css">
<STYLE type="text/css">
        html { height:100%; overflow-x:hidden; overflow-y:hidden}
        .fixed { position:absolute; bottom:10px; right:30px; width:320px; height:190px; background:#fc0; border:1px solid lightgray;text-align:center}
        .loft_win_head {color: #ffffff; font-size:13px; background-color:#0066ff; height:25px; padding:0 5px 0 5px; line-height:25px; }        
        * html #fixed{ position:absolute; bottom:4px; right:30px; width:250px; height:200px; background:#fc0; border:1px solid #f60;text-align:center}
        * html{overflow-x:hidden; overflow-y:hidden}
        .Button_Comman  {   width:113px;height:27px;border: none;background-image: url(Img/bt_common.gif); background-color:Transparent; vertical-align:middle    }         
    </STYLE>
</head>
<body>
    <form id="form1" runat="server">
 <DIV>
<TABLE border="0" width="1023" background="Images/hupo2_060.jpg" align="center" 
height="652">
  <TBODY>
  <TR>
    <TD style="height: 640px;" vAlign="top">
      <TABLE border="0" cellSpacing="0" cellPadding="0" width="100%" align="CENTER" 
      height="90">
        <TBODY>
        <TR height="70">
          <TD style="height: 90px;">&nbsp;</TD></TR></TBODY></TABLE>
      <TABLE border="0" cellSpacing="0" cellPadding="0" width="580" align="CENTER">
        <TBODY>
        <TR>
          <TD><IMG src="Images/top1.jpg" width="580" height="44"></TD></TR>
        <TR>
          <TD>
            <TABLE border="0" cellSpacing="0" cellPadding="0" width="100%" 
            background="Images/top2.jpg">
              <TBODY>
              <TR>
                <TD>
                  <P>&nbsp;</P>
                  <P align="CENTER"><IMG src="Images/top4.jpg" width="541" 
                  height="61"></P>
                  <TABLE style="height: 205px;" width="60%" align="center">
                    <TBODY>
                    <TR>
                      <TD style="text-align: center;">
                        <FIELDSET align="middle"><LEGEND><FONT 
                        color="#ffff00"><B><FONT 
                        color="#ff0000"></FONT></B></FONT></LEGEND>
                        <TABLE style="height: 163px;" border="0" cellSpacing="1" 
                        cellPadding="1" width="100%">
                          <TBODY>
                          <TR>
                            <TD style="height: 176px; text-align: center;" 
                            colSpan="2">
                              <DIV align="CENTER">
                              <TABLE class="9font" border="0" cellSpacing="1" 
                              cellPadding="1" width="100%" align="CENTER">
                                <TBODY>
                                <TR>
                                <TD style="text-align: center;" 
                                height="35"><SPAN 
                                style="font-weight: bold;">登录账号</SPAN></TD>
                                <TD style="text-align: left;" colSpan="3"><SPAN 
                                style="color: red;  " id="RequiredFieldValidator1">
                                    <asp:TextBox ID="txtUserID" runat="server" Width="119px"></asp:TextBox><asp:RequiredFieldValidator
                                        ID="fileusename" runat="server" ControlToValidate="txtUserID" ErrorMessage="用户名不能为空"></asp:RequiredFieldValidator></SPAN></TD></TR>
                                <TR>
                                <TD style="text-align: center; height: 35px;"><SPAN 
                                style="font-weight: bold;">登录密码</SPAN></TD>
                                <TD style="text-align: left; height: 35px;" 
                                colSpan="3"><SPAN style="color: red;  " 
                                id="RequiredFieldValidator2">
                                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="117px"></asp:TextBox><asp:RequiredFieldValidator
                                        ID="filepass" runat="server" ControlToValidate="txtPwd" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator></SPAN></TD></TR>
                                <TR>
                                <TD style="text-align: center; height: 35px;" 
                                width="90"><SPAN style="font-weight: bold;">验 证 
                                码</SPAN></TD>
                                <TD style="text-align: left; height: 35px;" width="65">
                                    <asp:TextBox ID="txtyan" runat="server" Width="85px"></asp:TextBox></TD>
                                <TD style="text-align: left; height: 35px;" colspan="2">
                                    <asp:Label ID="lblyanzheng" runat="server" BackColor="DeepSkyBlue" ForeColor="#004000"></asp:Label></TD>
                                </TR>
                                <TR>
                                <TD style="text-align: left;" height="35" 
                                colSpan="4">
                                <DIV align="center">
                                    <input id="Submit1" runat="server" name="Submit" onserverclick="Submit1_ServerClick"
                                        type="submit" value=" 确认 " /></DIV></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE></FIELDSET><BR></TD></TR></TBODY></TABLE><BR>
                  </TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD><IMG src="Images/top3.jpg" width="580" 
        height="41"></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></DIV>
<DIV 
id="DIV_PwdDigBG"></DIV>

    </form>
</body>
</html>
