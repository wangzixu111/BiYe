<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ModifyMyInfo.aspx.cs" Inherits="ModifyMyInfo" Title="Untitled Page" %>

<%@ Register Src="Home.ascx" TagName="Home" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="registeInfo" width="100%">
        <tr>
            <td colspan="2" style="height: 35px">
                <uc1:Home ID="Home1" runat="server" />
            </td>
        </tr>
        <tr>
            <td id="TD1" align="right" style="height: 35px" width="120">
                登录帐号：</td>
            <td style="height: 35px">
                <asp:TextBox ID="txtname" runat="server" Width="109px" ReadOnly="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                    ErrorMessage="必填"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td align="right" style="height: 35px" width="120">
                姓名：</td>
            <td style="height: 35px">
                <asp:TextBox ID="XingMing" runat="server" Width="166px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="XingMing"
                    ErrorMessage="必填"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td align="right">
                社区：</td>
            <td>
                <asp:TextBox ID="ZhiYe" runat="server" Width="166px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ZhiYe"
                    ErrorMessage="必填"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td align="right">
                性别：</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="89px">
                    <asp:ListItem>男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="right">
                年龄：</td>
            <td>
                <asp:TextBox ID="Age" runat="server" Width="58px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Age"
                    ErrorMessage="必填"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right">
                电子邮件：</td>
            <td>
                <label for="ksIDType3">
                    <asp:TextBox ID="txtemal" runat="server" Width="166px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemal"
                        ErrorMessage="格式不正确" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemal"
                        ErrorMessage="必填"></asp:RequiredFieldValidator></label></td>
        </tr>
        <tr>
            <td align="right">
                联系电话：</td>
            <td>
                <asp:TextBox ID="Tel" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="height: 127px">
                用户描述：</td>
            <td style="height: 127px">
                <asp:TextBox ID="txtds" runat="server" Height="115px" TextMode="MultiLine" Width="473px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="修改" /></td>
        </tr>
    </table>
</asp:Content>


