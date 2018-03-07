<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addadmin.aspx.cs" Inherits="Admin_Addadmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>休渔期网站设计</title>
<LINK href="Template/Style.css"type=text/css rel=stylesheet>
<LINK href="Template/Style.css"type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     
<table width="98%" align="center" border="0" cellpadding="3" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px;margin-top:8px;">
  <tr>
    <td bgcolor="#1e8cc5" class='title' align=center ><span style=" color:White;">账号管理</span></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
            DataKeyNames="id" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="GridView1_RowCancelingEdit"
            OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"
            Width="100%">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                
                <asp:TemplateField HeaderText="帐号">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("name") %>' Width="60"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server"><%# Eval("name")%></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="密码">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtPower" runat="server" Text='**************' Width="60"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server">**************</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                
                <asp:CommandField HeaderText="编辑" ShowEditButton="True" />
                <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
    </td>
  </tr>
    <tr bgcolor="#ffffff">
        <td align="center" style="height: 28px">
            登陆帐号：<asp:TextBox ID="txtUser" runat="server" Width="79px"></asp:TextBox>&nbsp;
            密 码：<asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="79px"></asp:TextBox>&nbsp;
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="添 加" />&nbsp;
            <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
</table>
    </div>
    </form>
</body>
</html>
