<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddLiuYan.aspx.cs"  ValidateRequest="false" EnableEventValidation="false"  Inherits="AddLiuYan" Title="Untitled Page" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="left" height="40" style="  text-align: left">
                标题：<asp:TextBox ID="tb_title" runat="server" MaxLength="100" Rows="1" Width="493px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="color: #999999;   text-align: center">
                内容</td>
        </tr>
        <tr>
            <td style="height: 161px" valign="top">
                &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="164px" MaxLength="100" Rows="1"
                    TextMode="MultiLine" Width="100%"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" valign="top">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="发布" />&nbsp;</td>
        </tr>
    </table>
</asp:Content>

