<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LiuYan.aspx.cs" Inherits="LiuYan" Title="Untitled Page" %>

<%@ Register Src="Home.ascx" TagName="Home" TagPrefix="uc2" %>

<%@ Register Src="PageCtrl.ascx" TagName="PageCtrl" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width:100%;">
    <tr>
        <td align="center" style="text-align: center; width: 862px;" valign="top">
            <uc2:Home ID="Home1" runat="server" />
        </td>
    </tr>
    <tr>
        <td align="center" style="text-align: center; width: 862px;" valign="top">
            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClick="LinkButton1_Click">发布问题</asp:LinkButton></td>
    </tr>
                <tr>
                    <td style="text-align: left; width: 862px;" valign="top" align="left">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                            CellPadding="0" CellSpacing="0" DataSourceID="SqlDataSource1" EmptyDataText="暂无信息"
                            PageSize="20" Width="679px">
                            <Columns>
                                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="ShowLiuYan.aspx?id={0}"
                                    DataTextField="LiuYan" HeaderText="标题">
                                    <HeaderStyle Height="30px" Width="200px" />
                                    <ItemStyle Height="30px" Width="200px" />
                                </asp:HyperLinkField>
                                <asp:BoundField DataField="AddUser" HeaderText="留言人">
                                    <HeaderStyle Height="30px" Width="100px" />
                                    <ItemStyle Height="30px" Width="100px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Addtime" DataFormatString="{0:d}" HeaderText="留言时间">
                                    <HeaderStyle Height="30px" Width="100px" />
                                    <ItemStyle Height="30px" Width="100px" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>">
                        </asp:SqlDataSource>
                        <uc1:PageCtrl ID="PageCtrl1" runat="server" />
                        
                    </td>
                </tr>
            </table>
</asp:Content>

