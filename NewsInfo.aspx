<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewsInfo.aspx.cs" Inherits="NewsInfo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table id="Table1" align="center" border="0" bordercolordark="#ffffff" bordercolorlight="#ffcf00"
            cellpadding="0" cellspacing="0" style="width: 100%">
            <tbody>
                <tr>
                    <td align="center"  class="tabTitle" colspan="1" height="22"
                        style="width: 921px">
                        <b>
                            <asp:Label ID="Label2" runat="server" Width="96%"></asp:Label></b></td>
                </tr>
                <tr>
                    <td align="center"  class="tabTitle" colspan="1" style="width: 921px;
                        height: 22px">
                        发布时间：<asp:Label ID="Label1" runat="server" Width="32%"></asp:Label>点击次数：<asp:Label ID="Label3" runat="server" Width="8%"></asp:Label></td>
                </tr>
                <tr>
                    <td align="center" colspan="1" style="width: 921px; height: 15px; text-align: center">
                        </td>
                </tr>
                <tr>
                    <td colspan="1" style="width: 921px; height: auto; text-align: left">
                        <strong>
                            <div id="DIV1" runat="server" style="width: 702px; height: auto">
                            </div>
                        </strong>
                    </td>
                </tr>
                
            </tbody>
        </table>
    <table style="width: 100%">
        <tr>
            <td align="center" bgcolor="silver" colspan="3" style="height: 24px">
                评论信息
            </td>
        </tr>
        <tr>
            <td align="left" bgcolor="#f7f6f3" colspan="3" style="height: 24px">
                <asp:DataList ID="DataList2" runat="server" Width="100%">
                    <ItemTemplate>
                        <table style="width: 100%">
                            <tr>
                                <td style="width: 100%">
                                    评论人：<%#Eval("UserName")%>
                                    时间：<%#Eval("AddTime", "{0:d}")%>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100%">
                                    内容：<%#Eval("Titles")%>
                                </td>
                            </tr>
                        </table>
                        <hr />
                    </ItemTemplate>
                </asp:DataList></td>
        </tr>
        <tr>
            <td align="center" bgcolor="#f7f6f3" colspan="3" style="height: 24px">
                共【<asp:Label ID="lblSumPage" runat="server"></asp:Label>】页 &nbsp; &nbsp; &nbsp;
                当前第【<asp:Label ID="lblCurrentPage" runat="server"></asp:Label>】页&nbsp;
                <asp:HyperLink ID="hyfirst" runat="server">首页</asp:HyperLink>
                &nbsp; &nbsp; &nbsp;<asp:HyperLink ID="lnkPrev" runat="server">上一页</asp:HyperLink>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:HyperLink ID="lnkNext" runat="server">下一页</asp:HyperLink>
                &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                <asp:HyperLink ID="hylastpage" runat="server">尾页</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td align="center" bgcolor="#f7f6f3" colspan="3" style="height: 24px">
                <asp:TextBox ID="TextBox2" runat="server" Height="69px" TextMode="MultiLine" Width="544px"></asp:TextBox><br />
                <br />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="评论" /></td>
        </tr>
    </table>
</asp:Content>
 
