using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class AddLiuYan : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "休渔期网站设计";
        if (!IsPostBack)
        {
            if (Session["UserName"] == null)
            {
                Alert.AlertAndRedirect("对不起您还没有登录", "Default.aspx");
            }
            else
            {

 


              
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlHelper data = new SqlHelper();
        data.RunSql("insert into LiuYan(LiuYan,AddUser,Content,AddUserId)values('" + tb_title.Text + "','" + Session["UserName"].ToString() + "','" + TextBox1.Text + "','" + Session["UserId"].ToString() + "')");
        Alert js = new Alert();
        js.Alertjs("发布成功");
        Response.Redirect("LiuYan.aspx");
    }
   
}
