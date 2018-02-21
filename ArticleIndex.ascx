<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ArticleIndex.ascx.cs" Inherits="ArticleIndex" %>
<script runat="server">
    private int newID;
    public int NewID
    {
        get
        {
            return newID;
        }
        set
        {
            this.newID = value;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlHelper data = new SqlHelper();
       
        try
        {
            dlNewTitle.DataSource = data.GetDataReader("select top 8  * from  News where  typeid=" + newID);
            dlNewTitle.DataBind();
        }
        catch (Exception ex)
        {
            System.Console.WriteLine(ex.ToString());
        }
       
       
    } 
  
</script>


   
    <asp:DataList ID="dlNewTitle" runat="server" RepeatColumns="1" >
        <ItemTemplate>
       <table>
                                <tr>
                                        <td align="left" style="width: 330px">
                                         
                                        <a href='<%#Eval("id","NewsInfo.aspx?id={0}")%>'>
                                        <%#Eval("name").ToString().Length > 25 ? CutChar(Eval("name").ToString(), 32) + "..." : Eval("name")%>
                                    </a> </td>
                                      
                                    </tr>
                               
                            </table>
     
            
               
        </ItemTemplate>
    </asp:DataList>