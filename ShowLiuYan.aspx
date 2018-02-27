<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowLiuYan.aspx.cs" ValidateRequest="false" EnableEventValidation="false"    Inherits="ShowLiuYan" Title="Untitled Page" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="left" style="  text-align: left; height: 40px;">
                标题：<asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="color: #999999;   text-align: center">
                留言人：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>留言时间：<asp:Label ID="Label2" runat="server"></asp:Label>回复时间：<asp:Label ID="Label7" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="  text-align: center;"  valign="top">
                留言内容</td>
        </tr>
        <tr>
            <td align="left" style="  text-align: left" valign="top">
               <asp:Label ID="Label3" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td  style="  text-align: center;" align="center" valign="top">
                回复内容</td>
        </tr>
        <tr>
            <td align="left" style="  text-align: left" valign="top">
                <asp:Label ID="Label5" runat="server"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

