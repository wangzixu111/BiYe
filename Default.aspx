<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<%-- 在此处添加内容控件 --%>

<%@ Register Src="ArticleIndex.ascx" TagName="ArticleIndex" TagPrefix="uc1" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="2"  RepeatDirection="Horizontal" ShowFooter="False" ShowHeader="False" Width="100%">
              <ItemTemplate>
            
                      
                      <table style="font-size :9pt;height: 165px; width :343px" cellpadding =0 cellspacing =0 align="left">
                   <tr style ="font-size :9pt;height: 30px; width :381px">
                        <td align =left style="background-image: url(images/top-bg.jpg); color: #ffffff;"  >
                       
                              <a style=" margin-left:60px; color: #ffffff; font-weight: bold; font-size: 17px;" href='NewsList.aspx?BID=<%#Eval("id")%>'   title='<%#Eval("Name") %>'> <%# DataBinder.Eval(Container.DataItem, "Name")%> </a>
                     
                           </td>
                        <td align =right valign=middle style="background-image: url(images/top-bg.jpg); color: #ffffff; width: 136px;"  >
                       
                     
                            <a style=" margin-left:60px;" href='NewsList.aspx?BID=<%#Eval("id")%>'   title='<%#Eval("Name") %>'> </a>
                        </td>
                    </tr>
                    <tr  style ="font-size :9pt;height: 135px; width :340px">
                        <td align="left" colspan="2" style="font-size: 9pt;" valign="top">
                        
                       <div>
                       <uc1:ArticleIndex ID="ArticleIndex1" runat="server"  newID='<%# DataBinder.Eval(Container.DataItem,"id") %>'>
    </uc1:ArticleIndex>
                       </div>
                       
                        </td>

                    </tr>
                </table>
                      
                      
              </ItemTemplate>
              </asp:DataList>
    </asp:Content>
 